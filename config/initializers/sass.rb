Sass::Plugin.options[:line_comments] = false
Sass::Plugin.options[:style] = case ENV['RAILS_ENV']
                                when 'production' 
                                  :compressed
                                else
                                  :expanded
                                end
                                
                              