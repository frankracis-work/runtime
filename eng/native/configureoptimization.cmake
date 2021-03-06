if(CLR_CMAKE_HOST_WIN32)
    add_compile_options($<$<AND:$<COMPILE_LANGUAGE:C,CXX>,$<CONFIG:Debug>>:/Od>)
    add_compile_options($<$<AND:$<COMPILE_LANGUAGE:C,CXX>,$<CONFIG:Checked>>:/O1>)
    add_compile_options($<$<AND:$<COMPILE_LANGUAGE:C,CXX>,$<CONFIG:Release>>:/Ox>)
    add_compile_options($<$<AND:$<COMPILE_LANGUAGE:C,CXX>,$<CONFIG:RelWithDebInfo>>:/O2>)
elseif(CLR_CMAKE_HOST_UNIX)
    add_compile_options($<$<CONFIG:Debug>:-O0>)
    add_compile_options($<$<CONFIG:Checked>:-O2>)
    add_compile_options($<$<CONFIG:Release>:-O3>)
    add_compile_options($<$<CONFIG:RelWithDebInfo>:-O2>)
endif()
