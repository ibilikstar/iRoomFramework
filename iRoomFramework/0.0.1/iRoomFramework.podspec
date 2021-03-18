#
#  Be sure to run `pod spec lint iRoomFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "iRoomFramework"
  spec.version      = "0.0.1"
  spec.summary      = "iRoomFramework for the Models"
  spec.description  = <<-DESC
    Models necessary for the api calls and Specific b logic.
                   DESC
  spec.homepage     = "https://ibilik.my/"
  spec.license      = "MIT"
  spec.author             = { "ibilik hafiz" => "ibilikstarproperty@gmail.com" }
  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://ibilikstar@github.com/ibilikstar/iRoomFramework.git", :tag => "0.0.1" }
  spec.source_files  = "**/*{.h,.swift}"
  spec.swift_version = '5.0'
end
