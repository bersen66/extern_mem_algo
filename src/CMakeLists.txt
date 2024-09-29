add_subdirectory(engine)

if (${BUILD_CLIENT_APP})
    add_subdirectory(client)
endif()
