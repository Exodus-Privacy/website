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
# Purpose description 	: Change hook into crontab publication
# script. The script will run every x time to regenerate the
# site if needed
# Author				: Lovis IX
# Date					: 2018-09-18
#
# --------------------------------------------------------
#
# Modification:
# Purpose description 	: 
# Author				:
# Date					:
#
# --------------------------------------------------------

GIT_REPO=ssh://git@git.exodus-privacy.eu.org:19100/Exodus-privacy/site.git
# MY_DOMAIN=exodus-privacy.eu.org
MY_DOMAIN=exodus-privacy.eu.org
WEBSITE_PATH=/home/website

WORKING_DIRECTORY="${WEBSITE_PATH}"/hugo_web-working
PUBLIC_WWW="${WORKING_DIRECTORY}"/public_html
GIT_CLONE="${WORKING_DIRECTORY}"/site

# Stop on error (for debugging of using trap)
# set -e


# Create temporary folder
mkdir -p "${PUBLIC_WWW}"

# If Clone does not alredy exist, clone
# in the website user home folder
if [ ! -d "${GIT_CLONE}" ] ; then
	# clone new version
	/usr/bin/git clone "${GIT_REPO}" "${GIT_CLONE}"
fi

# Chech if there is change
if [ ! $(/usr/bin/git diff-index --quiet HEAD --) ]; then
	/usr/bin/git pull "${GIT_REPO}"
else
	echo "Nothing to do exiting"
	exit 0
fi


# Go to clone directory exit in case of error (directory does not exist)
cd "${GIT_CLONE}" || exit 255

# Checkout hugo branch
/usr/bin/git checkout hugo

current_ref=$(/usr/bin/git show-ref --heads --hash=10 hugo)
current_date=$(/bin/date "+%Y-%m-%d")
WEBSITE_FOLDER=$(/bin/echo "${current_date}"_"${current_ref}")

# Launch hugo site build in temporary folder
/usr/local/bin/hugo --config "$GIT_CLONE"/config.toml -s "$GIT_CLONE" -d "$PUBLIC_WWW" -b "http://${MY_DOMAIN}"

# Rsync new website
/bin/cp-r "${PUBLIC_WWW}"/* "${WEBSITE_FOLDER}"/.

# Make prod symlink
/bin/rm "${WEBSITE_FOLDER}"/current; /bin/ln -s "${WEBSITE_PATH}"/"${WEBSITE_FOLDER}" current

exit 0