cmake_minimum_required(VERSION 3.10)
project(paas_flutter_library VERSION 0.0.0 LANGUAGES C CXX)

add_library(paas_flutter SHARED
  "paas.cpp"
)

set_target_properties(paas_flutter PROPERTIES
  # PUBLIC_HEADER paas_flutter.h
  OUTPUT_NAME "paas"
)

target_compile_definitions(paas_flutter PUBLIC DART_SHARED_LIB)
