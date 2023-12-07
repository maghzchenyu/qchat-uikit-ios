#
# Be sure to run `pod lib lint NEQChatUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
require_relative "../../PodConfigs/config_podspec.rb"
require_relative "../../PodConfigs/config_third.rb"
require_relative "../../PodConfigs/config_local_common.rb"
require_relative "../../PodConfigs/config_local_im.rb"

Pod::Spec.new do |s|
  s.name             = 'NEQChatUIKit'
  s.version          = '9.5.0'
  s.summary          = 'Netease XKit'
  s.homepage         = YXConfig.homepage
  s.license          = YXConfig.license
  s.author           = YXConfig.author
  s.ios.deployment_target = YXConfig.deployment_target
  s.swift_version = YXConfig.swift_version
  
  if ENV["USE_SOURCE_FILES"] == "true"
    s.source = { :git => "https://github.com/netease-kit/" }
    
    s.source_files = 'NEQChatUIKit/Classes/**/*'
    s.resource = 'NEQChatUIKit/Assets/**/*'
    s.dependency NECommonUIKit.name
    s.dependency NEQChatKit.name
    s.dependency 'SDWebImageWebPCoder'
    s.dependency 'SDWebImageSVGKitPlugin'
    s.dependency MJRefresh.name
  else
    s.source = { :http => "https://yx-web-nosdn.netease.im/package/NEQChatUIKit_iOS_v9.4.0.framework.zip?download=NEQChatUIKit_iOS_v9.4.0.framework.zip" }
    
    s.subspec 'NOS' do |nos|
      nos.vendored_frameworks = 'NEQChatUIKit.framework'
      nos.dependency NEQChatKit.NOS
      nos.dependency NECommonUIKit.name
      nos.dependency 'SDWebImageWebPCoder'
      nos.dependency 'SDWebImageSVGKitPlugin'
      nos.dependency MJRefresh.name
    end
    
    s.subspec 'NOS_Special' do |nos|
      nos.vendored_frameworks = 'NEQChatUIKit.framework'
      nos.dependency NEQChatKit.NOS_Special
      nos.dependency NECommonUIKit.name
      nos.dependency 'SDWebImageWebPCoder'
      nos.dependency 'SDWebImageSVGKitPlugin'
      nos.dependency MJRefresh.name
    end
    
    s.subspec 'FCS' do |fcs|
      fcs.vendored_frameworks = 'NEQChatUIKit.framework'
      fcs.dependency NEQChatKit.FCS
      fcs.dependency NECommonUIKit.name
      fcs.dependency 'SDWebImageWebPCoder'
      fcs.dependency 'SDWebImageSVGKitPlugin'
      fcs.dependency MJRefresh.name
    end
    
    s.subspec 'FCS_Special' do |fcs|
      fcs.vendored_frameworks = 'NEQChatUIKit.framework'
      fcs.dependency NEQChatKit.FCS_Special
      fcs.dependency NECommonUIKit.name
      fcs.dependency 'SDWebImageWebPCoder'
      fcs.dependency 'SDWebImageSVGKitPlugin'
      fcs.dependency MJRefresh.name
    end
    s.default_subspecs = 'NOS'
  end

  YXConfig.pod_target_xcconfig(s)

end
