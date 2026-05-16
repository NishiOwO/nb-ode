cmake_minimum_required(VERSION 3.11)
project(tw-ode)

add_subdirectory(ode)

add_executable(odejs odejs.c)

target_link_options(odejs PRIVATE
	"-sWASM=1"
	"-sSINGLE_FILE=1"
	"-sEXPORTED_FUNCTIONS=['_dInitODE2', '_dCloseODE', '_dWorldStep', '_dWorldCreate', '_dHashSpaceCreate']"
	"-sEXPORTED_RUNTIME_METHODS=['cwrap', 'ccall']"
	"-sMODULARIZE=1"
	"-sALLOW_TABLE_GROWTH=1"
	"-sEXPORT_NAME=\"ODEWASM\""
)

target_link_libraries(odejs PRIVATE odewasm)

add_custom_command(TARGET odejs POST_BUILD
	COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:odejs> ${CMAKE_SOURCE_DIR}/odejs.js
)
