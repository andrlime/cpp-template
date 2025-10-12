cmake_minimum_required(VERSION 3.20)

project(
	[PROJECTNAMEREPLACEME]
	VERSION 0.1
	DESCRIPTION "Write a description here if you feel like it"
	LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD 26)

include("cmake/build-type.cmake")
include("cmake/conan.cmake")

if(APPLE)
    include("cmake/macos-hotfix.cmake")
endif()

include("cmake/init-project.cmake")
include("cmake/init-gtest.cmake")
