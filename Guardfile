# custom spork port
$port = 96412
ignore %r{/public/}, %r{/coverage}, %r{/doc/}, %{/tmp}

group "rspec" do
  guard 'spork', :cucumber => false,
    :test_unit => false,
    :spring => true,
    :rspec_port => $port,  :wait => 60, :aggressive_kill => false   do
      watch('config/application.rb')
      watch('config/environment.rb')
      watch(%r{^config/environments/.+\.rb$})
      watch(%r{^config/initializers/.+\.rb$})
      watch('Gemfile.lock')
      watch('spec/spec_helper.rb')
    end
    guard 'rspec', :version => 2, :notification=> true, :cli => "--drb-port #{$port} --drb --colour --format progress --fail-fast -t ~slow ",
      :focus_on_failed => true,
      :all_after_pass => false,
      :all_on_start => false do
        watch(%r{^spec/.+_spec\.rb$})
        watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
        watch('spec/spec_helper.rb')  { "spec" }
        watch(%r{^spec/.+_spec\.rb$})
        watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
        watch(%r{^app/(.*)(\.erb|\.haml)$})                 { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
        watch(%r{^lib/(.+)\.rb$})                           { |m| "spec/lib/#{m[1]}_spec.rb" }
        watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
        watch('spec/spec_helper.rb')                        { "spec" }
        watch('app/controllers/application_controller.rb')  { "spec/controllers" }
        watch(%r{^app/views/(.+)/.*\.(erb|haml)$})          { |m| "spec/requests/#{m[1]}_spec.rb" }
      end

end

