#
# Be sure to run `pod lib lint MultilineTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MultilineTextField'
  s.version          = '0.2.1'
  s.summary          = 'UITextField with multiple lines (or UITextView with placeholder)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This can be seen as a `UITextField` with multiple lines, but under the hood it is just a `UITextView` which aims to provide many of the functionalities currently available in the `UITextField` class. Currently the following functionalities are supported:

+ Multiple lines
+ Customizable left view
+ Customizable placeholder text
                       DESC

  s.homepage         = 'https://github.com/rlaguilar/MultilineTextField'
  s.screenshots     = 'https://raw.githubusercontent.com/rlaguilar/MultilineTextField/master/Example/img-multiple-lines.jpg', 'https://raw.githubusercontent.com/rlaguilar/MultilineTextField/master/Example/img-placeholder.jpg'
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
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
