set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :sprockets

configure :development do
	activate :livereload, apply_css_live: true, apply_js_live: true, no_swf: true
end

configure :build do
	activate :minify_css
	activate :minify_javascript
end
