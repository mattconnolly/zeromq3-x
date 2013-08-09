#
# Be sure to run `pod spec lint zeromq.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "ZeroMQ"
  s.version      = "3.2.3"
  s.summary      = "ZeroMQ messaging and socket library."
  s.description  = <<-DESC
The 0MQ lightweight messaging kernel is a library which extends the
standard socket interfaces with features traditionally provided by
specialised messaging middleware products. 0MQ sockets provide an
abstraction of asynchronous message queues, multiple messaging patterns,
message filtering (subscriptions), seamless access to multiple transport
protocols and more.
DESC
  s.homepage     = "http://zeromq.org"
  s.license      = { :type => 'LGPL with Static Linking Exception', :file => 'COPYING.LESSER' }
  s.author = "Many authors, see AUTHORS file"
  s.source       = { :git => "https://github.com/mattconnolly/zeromq3-x.git", :tag => "v3.2.3" }

  # If this Pod runs only on iOS or OS X, then specify the platform and
  # the deployment target.
  #
  # s.platform     = :ios, '5.0'

  # ――― MULTI-PLATFORM VALUES ――――――――――――――――――――――――――――――――――――――――――――――――― #

  # If this Pod runs on both platforms, then specify the deployment
  # targets.
  #
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  # A list of file patterns which select the source files that should be
  # added to the Pods project. If the pattern is a directory then the
  # path will automatically have '*.{h,m,mm,c,cpp}' appended.
  #
  s.source_files = 'src', 'src/*.{cpp,hpp}', 'cocoapods/*.{cpp,hpp}'
  #s.exclude_files = 'Classes/Exclude'

  # A list of file patterns which select the header files that should be
  # made available to the application. If the pattern is a directory then the
  # path will automatically have '*.h' appended.
  #
  # If you do not explicitly set the list of public header files,
  # all headers of source_files will be made public.
  #
  s.public_header_files = 'include/*.h' #, 'cocoapod/*.hpp'
  

  # A list of resources included with the Pod. These are copied into the
  # target bundle with a build phase script.
  #
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # A list of paths to preserve after installing the Pod.
  # CocoaPods cleans by default any file that is not used.
  # Please don't include documentation, example, and test files.
  #
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # Specify a list of frameworks that the application needs to link
  # against for this Pod to work.
  #
  # s.framework  = 'SomeFramework'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'

  # Specify a list of libraries that the application needs to link
  # against for this Pod to work.
  #
  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'
  #s.libraries = 'c++.1', 'System'
  s.libraries = 'c++.1'
  
  # If this Pod uses ARC, specify it like so.
  #
  #s.requires_arc = true

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
  # Finally, specify any Pods that this Pod depends on.
  #
  # s.dependency 'JSONKit', '~> 1.4'
end
