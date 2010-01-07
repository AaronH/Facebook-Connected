namespace :sass do
  desc 'Updates stylesheets if necessary from their Sass templates.'
  task :update => :environment do
    Sass::Plugin.update_stylesheets
  end
  
  desc 'Removes generated stylesheets'
  task :clear_old => :environment do
    Dir.new("public/stylesheets/sass/").entries.select{|f| f =~ /\.sass$/}.each do |sheet|
      system "rm public/stylesheets/#{sheet.gsub /\.sass/, '.css'}"
    end
  end
  
  desc 'Get all sass file names'
  task :list_files => :environment do
    Dir.new("public/stylesheets/sass/").entries.select{|f| f =~ /\.sass$/}
  end  
end