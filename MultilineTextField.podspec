#
# Be sure to run `pod lib lint MultilineTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MultilineTextField'
  s.version          = '0.1.0'
  s.summary          = 'UITextField with multiple lines'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Wraps a UITextView so that you can have the following functionalities:
+ Multiple lines
+ Left and right views
+ Placeholder
                       DESC

  s.homepage         = 'https://github.com/rlaguilar/MultilineTextField'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rlaguilar' => 'rlac1990@gmail.com' }
  s.source           = { :git => 'https://github.com/rlaguilar/MultilineTextField.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/rlaguilar_'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MultilineTextField/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MultilineTextField' => ['MultilineTextField/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
