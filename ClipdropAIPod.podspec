#
# Be sure to run `pod lib lint ClipdropAIPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ClipdropAIPod'
  s.version          = '1.2.3'
  s.summary          = 'This is a Clipdrop AI photo editing pod'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Joynal279/ClipdropAIPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'joynalcu7@gmail.com' => '44470728+Joynal279@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/Joynal279/ClipdropAIPod.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.0'
  s.ios.deployment_target = '12.0'

  s.source_files = 'ClipdropAIPod/Classes/**/*'
  
  s.resource_bundles = {
    'Resources' => ['ClipdropAIPod/Assets/worldIcon.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'SwiftUI'
  s.dependency 'Alamofire', '~> 5.9.1'
end
