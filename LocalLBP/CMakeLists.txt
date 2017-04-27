cmake_minimum_required(VERSION 3.1)  # CMake 版本要求
PROJECT(LocalLBP)                       # 项目名称

aux_source_directory(. PROGRAM_SOURCE)  # 将当前目录所有文件添加到变量 PROGRAM_SOURCE 中
aux_source_directory(./lib PROGRAM_SOURCE)

add_executable(LocalLBP ${PROGRAM_SOURCE}) # 指定目标可执行文件 hello 的源代码文件为 PROGRAM_SOURCE


# OpenCV
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
target_link_libraries(LocalLBP ${OpenCV_LIBS})

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/lib/)


