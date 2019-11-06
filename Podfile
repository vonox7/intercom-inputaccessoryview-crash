source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

# Ignore all warnings from all pods
inhibit_all_warnings!

def app_pods
  pod 'Intercom', '5.5.1'
end

target 'Intercom Test App' do
  app_pods
end

# You can set your build settings so that when you run the compiler it runs one job with all required sources files
# instead of one job for every source file. This does reduce parallelism
# but significantly reduces duplicated work hence making your build time faster.
# To implement this you add -Onone only in the debug configuration of Other Swift Flags.
# You will also need to set Optimisation Level to Fast, Whole Module Optimization in your debug build settings.

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      if config.name == 'Debug' # All changes affect the debug build only.
        config.build_settings['OTHER_SWIFT_FLAGS'] = ['$(inherited)', '-Onone']
        config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
      end
    end
  end
end
