#source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target 'StartLearningSwift' do
    
pod 'SlideMenuControllerSwift'
pod 'Alamofire','~> 4.0'
pod 'SwiftyJSON', :git => 'https://github.com/acegreen/SwiftyJSON.git', :branch => 'swift3'
pod 'SQLite.swift', '~> 0.11.2'
pod "DGElasticPullToRefresh"
pod 'Kingfisher','~> 3.1.0'
pod 'SnapKit', '~> 3.0.0'

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0.1'
        end
    end
end

# 如非最新，建议在https://github.com/mythkiven中获取最新代码
