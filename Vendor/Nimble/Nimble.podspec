Pod::Spec.new do |s|
  s.name         = "Nimble"
  s.version      = "0.2.0"
  s.summary      = "A Matcher Framework for Swift and Objective-C"
  s.description  = <<-DESC
                   Use Nimble to express the expected outcomes of Swift or Objective-C expressions. Inspired by Cedar.
                   DESC
  s.homepage     = "https://github.com/Quick/Nimble"
  s.license      = { :type => "Apache 2.0", :file => "LICENSE.md" }
  s.author             = "Quick Contributors"
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.source       = { :git => "https://github.com/Quick/Nimble.git", :tag => "v0.2.0" }

  s.source_files  = "Nimble", "Nimble/**/*.{swift,h,m}"
  s.framework = "XCTest"
end
