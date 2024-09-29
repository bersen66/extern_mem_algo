set(ENGINE_SOURCES)
set(ENGINE_INCLUDE_DIRS)

add_subdirectory(join)
add_subdirectory(order_by)
add_subdirectory(sort)

add_library(engine ${ENGINE_SOURCES})
target_include_directories(engine PUBLIC ${ENGINE_INCLUDE_DIRS})

target_link_libraries(engine Arrow::arrow_static)

