# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
source 'https://github.com/CocoaPods/Specs.git'

target 'IMQChatExample' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  #登录组件
  pod 'YXLogin', '1.0.0'

  #可选UI库
  pod 'NEContactUIKit', '9.4.9-alpha01'
  pod 'NEQChatUIKit', '9.4.9-alpha01'
  pod 'NEConversationUIKit', '9.4.9-alpha01'
  pod 'NEChatUIKit', '9.4.9-alpha01'
  pod 'NETeamUIKit', '9.4.9-alpha01'


  #可选Kit库（和UIKit对应）
  pod 'NEQChatKit', '9.4.9-alpha01'
  pod 'NEChatKit', '9.4.9-alpha01'

  #基础kit库
  pod 'NECommonUIKit', '9.4.9-alpha01'
  pod 'NECommonKit', '9.4.9-alpha01'
  pod 'NECoreIMKit', '9.4.9-alpha01'
  pod 'NECoreKit', '9.4.9-alpha01'

  #扩展库
  pod 'NEMapKit', '9.4.9-alpha01'

  #呼叫组件，音视频通话能力，需要开通 音视频2.0，可选，聊天一面会根据依赖初始化自动显示音视频通话入口
  pod 'NERtcCallUIKit', '2.0.0-alpha01'
  pod 'NERtcCallKit', '2.0.0-alpha01'
  pod 'NERtcSDK', '5.5.2'

  # 如果需要查看UI部分源码请注释掉以上在线依赖，打开下面的本地依赖
#   pod 'NEQChatUIKit', :path => 'NEQChatUIKit/NEQChatUIKit.podspec'


end

#fix bug in Xcode 14
post_install do |installer|
  installer.pods_project.targets.each do |target|
    if target.name == 'RSKPlaceholderTextView'
      target.build_configurations.each do |config|
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      end
    end
  end
end

#⚠️如果pod依赖报错，可打开以下注释
#post_install do |installer|
#  installer.pods_project.targets.each do |target|
#    target.build_configurations.each do |config|
#      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
#    end
#  end
#end
