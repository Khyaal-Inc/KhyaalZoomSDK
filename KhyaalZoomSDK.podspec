
Pod::Spec.new do |s|
  s.name         = "KhyaalZoomSDK"
  s.version      = "5.17.11.14222"
  s.summary      = "Pod for zoom-sdk-ios"
  s.description  = <<-DESC
                  Pod for zoom-sdk-ios.
                   DESC
  s.homepage     = "https://github.com/Khyaal-Inc"
  s.author       = { "author" => "reefaq@khyaal.com" }
  s.platform     = :ios, "15.0"

  s.source = { :http => 'https://github.com/Khyaal-Inc/KhyaalZoomSDK/releases/download/zoom-ios-sdk/zoom-sdk-ios-5.17.11.14222.zip' }
  s.requires_arc = true

  s.vendored_frameworks =  "**/lib/MobileRTC.xcframework"
  s.resource = "**/lib/MobileRTCResources.bundle"

  s.libraries = "sqlite3", "z.1.2.5", "c++"
  s.weak_framework = 'VideoToolbox', 'CoreMedia', 'CoreVideo', 'CoreGraphics', 'ReplayKit'

  # Note: Zoom SDK has only support for x86_64
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386'
  }

  s.license      =  { :type => 'MIT', :text => <<-LICENSE
 MIT License

 Copyright (c) 2024

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
    LICENSE
  }
end
