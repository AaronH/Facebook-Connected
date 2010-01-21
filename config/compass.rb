# should handle in environment.rb - but leaving here for now until sure
# require 'compass'
# require 'compass-colors'
# require 'fancy-buttons'
# Require any additional compass plugins here.

project_type  = :rails
project_path  = RAILS_ROOT if defined?(RAILS_ROOT)
# Set this to the root of your project when deployed:
http_path     = "/"
css_dir       = "public/stylesheets"
images_dir    = "images"
sass_dir      = "app/stylesheets"
# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true
cache_dir     = "tmp/sass-cache" 