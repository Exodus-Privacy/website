#!/bin/sh

# --------------------------------------------------------
# 
# Git hook to build hugo website when committing
# Must be named (symlink works) post-received in the
# git website hook directory
#
# --------------------------------------------------------
#
# Author		: Lovis IX
# Date			: 2018-08-18
# Parameters	: none
#
# --------------------------------------------------------
#
# Modification:
# Purpose description 	:
# Author				:
# Date					:
#
# --------------------------------------------------------

# GIT_REPO=/var/db/gitea/data/depots/exodus-privacy/site.git
GIT_REPO=ssh://git@git.exodus-privacy.eu.org:19100/Exodus-privacy/site.git
WORKING_DIRECTORY=/tmp/hugo_web-working
PUBLIC_WWW="$WORKING_DIRECTORY"/public_html
GIT_CLONE="$WORKING_DIRECTORY/site"
# MY_DOMAIN=exodus-privacy.eu.org
MY_DOMAIN=exodus-privacy.eu.org
WEBSITE_PATH=/home/website
USERNAME=website
# Stop on error (for debugging of using trap)
# set -e

# - Remove old WORKING_DIRECTORY
rm -rf "$WORKING_DIRECTORY"

# Create temporary folder
mkdir -p "$PUBLIC_WWW"

# clone new version
git clone "$GIT_REPO" "$GIT_CLONE"

# Go to clone directory exit in case of error (directory does not exist)
cd "$GIT_CLONE" || exit 255

# Checkout hugo branch
git checkout hugo

current_ref=$(git show-ref --heads --hash=10 hugo)
current_date=$(date "+%Y-%m-%d")
WEBSITE_FOLDER=$(echo "${current_date}"_"${current_ref}")

# Launch hugo site build in temporary folder
/usr/local/bin/hugo --config "$GIT_CLONE"/config.toml -s "$GIT_CLONE" -d "$PUBLIC_WWW" -b "http://${MY_DOMAIN}"

# Rsync new website
rsync -aqrz -e 'ssh -p 6809 -i ~/.ssh/id_ed25519-website' "${PUBLIC_WWW}"/* "$USERNAME"@"${MY_DOMAIN}":"${WEBSITE_PATH}"/"${WEBSITE_FOLDER}"/.

# Make prod symlink
ssh -p 6809 -i ~/.ssh/id_ed25519-website "$USERNAME"@"${MY_DOMAIN}" "rm current; ln -s ${WEBSITE_PATH}/${WEBSITE_FOLDER} current"

exit 0