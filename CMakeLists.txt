cmake_minimum_required (VERSION 3.0)
project (github-packages CXX)

add_executable (github-packages github-packages.cpp)
install (TARGETS github-packages DESTINATION bin)
