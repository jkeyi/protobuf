Pod::Spec.new do |s|
  s.name     = 'Protobuf_C++'
  s.version  = '3.21.12'
  s.summary  = 'Protocol Buffers v3 runtime library for C++.'
  s.homepage = 'https://github.com/jkeyi/protobuf.git'
  s.license  = 'BSD-3-Clause'
  s.authors  = { 'The Protocol Buffers contributors' => 'jkeyi@qq.com' }
  s.cocoapods_version = '>= 1.0'

  s.source = { :git => 'https://github.com/jkeyi/protobuf.git',
               :tag => "v#{s.version}" }

  s.source_files = 'src/google/protobuf/*.{h,cc,inc}',
                   'src/google/protobuf/stubs/*.{h,cc}',
                   'src/google/protobuf/io/*.{h,cc}',
                   'src/google/protobuf/util/*.{h,cc}',
                   'src/google/protobuf/util/internal/*.{h,cc}'

  # Excluding all the tests in the directories above
  s.exclude_files = 'src/google/**/*_test.{h,cc,inc}',
                    'src/google/**/*_unittest.{h,cc}',
                    'src/google/protobuf/test_util*.{h,cc}',
                    'src/google/protobuf/map_lite_test_util.{h,cc}',
                    'src/google/protobuf/map_test_util*.{h,cc,inc}',
                    'src/google/protobuf/reflection_tester.{h,cc}'

  s.header_mappings_dir = 'src'

  s.ios.deployment_target = '13.0'
  # s.osx.deployment_target = '11.0'
  # s.tvos.deployment_target = '12.0'
  # s.watchos.deployment_target = '6.0'

  s.pod_target_xcconfig = {
    # Do not let src/google/protobuf/stubs/time.h override system API
    'USE_HEADERMAP' => 'NO',
    'ALWAYS_SEARCH_USER_PATHS' => 'NO',
    'HEADER_SEARCH_PATHS' => '"$(PODS_TARGET_SRCROOT)/src"'
  }

end
