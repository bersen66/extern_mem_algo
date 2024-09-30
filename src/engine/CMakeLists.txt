set(ENGINE_SOURCES)
set(ENGINE_INCLUDE_DIRS)


if (BUILD_TESTS)
    message(STATUS "Buildig engine tests...")
    set(ENGINE_TESTS)
else()
    message(STATUS "Ignoring engine tests...")
endif()


if (BUILD_BENCHMARKS)
    message(STATUS "Buildig engine benchmarks...")
    set(ENGINE_BENCMARKS)
else()
    message(STATUS "Ignoring engine bencmarks...")
endif()

add_subdirectory(join)
add_subdirectory(group_by)
add_subdirectory(sort)

add_library(engine ${ENGINE_SOURCES})
target_include_directories(engine PUBLIC ${ENGINE_INCLUDE_DIRS})
target_link_libraries(engine Arrow::arrow_static)


if (BUILD_TESTS)
    add_executable(test_engine ${ENGINE_TESTS})
    target_link_libraries(test_engine GTest::gtest_main engine)
    gtest_discover_tests(test_engine)
endif()


if (BUILD_BENCHMARKS)
    add_executable(bench_engine ${ENGINE_BENCHMARKS})
    target_link_libraries(bench_engine benchmark::benchmark_main engine)
endif()
