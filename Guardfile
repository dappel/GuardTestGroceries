# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'livereload' do
  watch(%r{app/.+\.(erb|haml)})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
end

#guard 'rspec', :version => 2 do
#  watch(%r{^spec/.+_spec\.rb})
#  watch(%r{^lib/(.+)\.rb})     { |m| "spec/lib/#{m[1]}_spec.rb" }
#  watch('spec/spec_helper.rb') { "spec" }
#
#  # Rails example
#  watch('spec/spec_helper.rb')                       { "spec" }
#  watch('config/routes.rb')                          { "spec/routing" }
#  watch('app/controllers/application_controller.rb') { "spec/controllers" }
#  watch(%r{^spec/.+_spec\.rb})
#  watch(%r{^app/(.+)\.rb})                           { |m| "spec/#{m[1]}_spec.rb" }
#  watch(%r{^lib/(.+)\.rb})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
#  watch(%r{^app/controllers/(.+)_(controller)\.rb})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/requests/#{m[1]}_spec.rb"] }
#  watch(%r{^app/views/(.+)/})                        { |m| "spec/requests/#{m[1]}_spec.rb" }
#end

guard 'spork', :cucumber => false, :test_unit => false do

  watch('config/application.rb')
  watch('config/environment.rb')
  watch(%r{^config/environments/.+.rb$})
  watch(%r{^config/initializers/.+.rb$})
  watch('spec/spec_helper.rb')

end

guard 'bundler' do
  watch('Gemfile')
  # Uncomment next line if Gemfile contain `gemspec' command
  # watch(/^.+.gemspec/)

end


guard 'rspec' do

  watch(%r{^spec/.+_spec.rb$})
  watch(%r{^app/(.+).rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/(.+).rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^spec/factories/(.+).rb$})                { "spec" }
  watch(%r{^spec/models/.+.rb$})                     { "spec/models" }
  watch(%r{^spec/routing/.+.rb$})                    { "spec/routing" }

  watch('spec/spec_helper.rb')                        { "spec" }
  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }

end


# Make sure this guard is ABOVE any other guards using assets such as jasmine-headless-webkit
# It is recommended to make explicit list of assets in `config/application.rb`
# config.assets.precompile = ['application.js', 'application.css', 'all-ie.css']
#guard 'rails-assets', :run_on => [:start, :change], :runner => :rails do
#  watch(%r{^app/assets/.+$})
#  watch('config/application.rb')
#end
