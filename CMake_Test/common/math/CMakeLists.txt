find_package(OpenCV REQUIRED)
include_directories( ${OpenCV_INCLUDE_DIRS} )

set(math_INCLUDE_DIR)
list(APPEND math_INCLUDE_DIR "${CMAKE_CURRENT_LIST_DIR}/include")
list(APPEND math_INCLUDE_DIR "${OpenCV_INCLUDE_DIRS}")

set(kalman_INCLUDE_DIRS ${kalman_INCLUDE_DIR}
                        CACHE PATH "kalman filter include directories")
                        
aux_source_directory(src Path_Math)

add_library(Math STATIC ${Path_Math})

target_include_directories(Math PUBLIC include)
target_link_libraries(Math PUBLIC ${OpenCV_LIBS})
