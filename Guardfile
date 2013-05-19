guard 'bundler' do
  watch('Gemfile')
end

guard 'rspec' do
  watch(%r|^(.+)\.rb$|)               { "spec" }
  watch(%r{^app/(.*)(\.erb|\.haml)$}) { "spec" }
end
