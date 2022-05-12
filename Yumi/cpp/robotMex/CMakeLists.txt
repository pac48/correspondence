set(TARGET robot_mex)

set(mode Release)
SET(CMAKE_BUILD_TYPE Release)

include_directories("C:/Program Files (x86)/tinyxml2-${mode}/include")
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
include_directories(${MATLAB_INCLUDE_DIR})

find_package(RL REQUIRED)

add_library(${TARGET} SHARED robot_mex.cpp ${CMAKE_SOURCE_DIR}/Matlabdef.def)

target_link_libraries(${TARGET}
					${MATLAB_LIBRARIES}
                    ${RL_LIBRARIES}
                    "C:/Program Files (x86)/tinyxml2-${mode}/lib/tinyxml2.lib")

if(WIN32)
    SET_TARGET_PROPERTIES(${TARGET} PROPERTIES SUFFIX .mexw64)
else(WIN32)
    if (CMAKE_SIZEOF_VOID_P MATCHES "8")
        SET_TARGET_PROPERTIES(${TARGET} PROPERTIES SUFFIX .mexa64 PREFIX "")
    else(CMAKE_SIZEOF_VOID_P MATCHES "8")
        SET_TARGET_PROPERTIES(${TARGET} PROPERTIES SUFFIX .mexglx PREFIX "")
    endif (CMAKE_SIZEOF_VOID_P MATCHES "8")
endif(WIN32)

install(TARGETS ${TARGET} DESTINATION ${CMAKE_SOURCE_DIR}/../mex)

add_executable(test robot_mex.cpp ${CMAKE_SOURCE_DIR}/Matlabdef.def )

target_link_libraries(test
        ${MATLAB_LIBRARIES}
        ${RL_LIBRARIES}
        "C:/Program Files (x86)/tinyxml2-${mode}/lib/tinyxml2.lib")

message(Done!!! ${TARGET})