#
# Be sure to run `pod lib lint HHRCIMLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HHRCIMLib'
  s.version          = '1.0.0'
  s.summary          = 'A short description of HHRCIMLib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/GasparChu/HHRCIMLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'GasparChu' => '598176910@qq.com' }
  s.source           = { :git => 'https://github.com/GasparChu/HHRCIMLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#s.source_files = 'HHRCIMLib/Classes/**/*'

s.subspec 'HHRCIM' do |sT|
sT.subspec 'IMLib' do |ss|
ss.ios.vendored_frameworks = "HHRCIMKit/IMLib/RongIMLib.framework"

ss.ios.vendored_libraries = ["HHRCIMKit/IMLib/libopencore-amrnb.a", "HHRCIMKit/IMLib/libopencore-amrwb.a", "HHRCIMKit/IMLib/libvo-amrwbenc.a"]

ss.ios.resources = "HHRCIMKit/IMLib/RCConfig.plist"

ss.ios.libraries = ["stdc++", "sqlite3", "z"]
end

sT.subspec 'IMKit' do |ss|
ss.ios.vendored_frameworks = "HHRCIMKit/IMKit/RongIMKit.framework"

ss.ios.resources = ["HHRCIMKit/IMKit/Emoji.plist", "HHRCIMKit/IMKit/RongCloud.bundle", "HHRCIMKit/IMKit/RCColor.plist", "HHRCIMKit/IMKit/en.lproj", "HHRCIMKit/IMKit/zh-Hans.lproj"]

ss.ios.frameworks = ["AssetsLibrary", "MapKit", "ImageIO", "CoreLocation", "SystemConfiguration", "QuartzCore", "OpenGLES", "CoreVideo", "CoreTelephony", "CoreMedia", "CoreAudio", "CFNetwork", "AudioToolbox", "AVFoundation", "UIKit", "CoreGraphics", "SafariServices", "Photos", "SafariServices"]

ss.dependency 'HHRCIMLib/HHRCIM/IMLib'
end

sT.subspec 'IMVersion' do |ss|
ss.ios.source_files = "HHRCIMKit/IMVersion/IMVersion.md", "HHRCIMKit/IMVersion/release_notes_ios.txt"
end
end

end
