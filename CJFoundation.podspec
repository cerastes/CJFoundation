#
#  Be sure to run `pod spec lint CJFoundation.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|




  s.homepage     = "https://github.com/cerastes/CJFoundation"


  s.license      = "MIT"

  s.author             = { "jimmychan" => "chn_jin@163.com" }


    s.name         = "CJFoundation"                #名称
    s.version      = "0.0.1"                #版本号
    s.summary      = "CJFoundation"        #简短介绍
    s.description  = <<-DESC
    私有Pods测试
    * Markdown 格式
    DESC

    s.homepage     = "https://github.com/cerastes/CJFoundation"
    # s.screenshots  = "www.example.com/screenshots_1.gif"
    s.license      = "MIT"                #开源协议

    s.source       = { :git => "https://github.com/cerastes/CJFoundation.git" }
       #s.source       = { :git => "http://EXAMPLE/CJFoundation.git", :tag => version }

    s.platform     = :ios, "8.0"            #支持的平台及版本，这里我们呢用swift，直接上9.0
    s.requires_arc = true                    #是否使用ARC

    s.source_files  = "CJFoundation/**/*.{h,m}"    #OC可以使用类似这样"Classes/**/*.{h,m}"

    s.frameworks = 'UIKit', 'QuartzCore', 'Foundation'    #所需的framework,多个用逗号隔开
    s.module_name = 'CJFoundation'                #模块名称


end
