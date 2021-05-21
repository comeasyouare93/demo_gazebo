# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dlite_simulator: 1 messages, 1 services")

set(MSG_I_FLAGS "-Idlite_simulator:/home/ln/demo05_ws/src/dlite_simulator/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/noetic/share/visualization_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dlite_simulator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg" NAME_WE)
add_custom_target(_dlite_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dlite_simulator" "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg" ""
)

get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv" NAME_WE)
add_custom_target(_dlite_simulator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dlite_simulator" "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv" "dlite_simulator/Cell"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dlite_simulator
  "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dlite_simulator
)

### Generating Services
_generate_srv_cpp(dlite_simulator
  "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv"
  "${MSG_I_FLAGS}"
  "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dlite_simulator
)

### Generating Module File
_generate_module_cpp(dlite_simulator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dlite_simulator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dlite_simulator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dlite_simulator_generate_messages dlite_simulator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg" NAME_WE)
add_dependencies(dlite_simulator_generate_messages_cpp _dlite_simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv" NAME_WE)
add_dependencies(dlite_simulator_generate_messages_cpp _dlite_simulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dlite_simulator_gencpp)
add_dependencies(dlite_simulator_gencpp dlite_simulator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dlite_simulator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dlite_simulator
  "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dlite_simulator
)

### Generating Services
_generate_srv_eus(dlite_simulator
  "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv"
  "${MSG_I_FLAGS}"
  "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dlite_simulator
)

### Generating Module File
_generate_module_eus(dlite_simulator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dlite_simulator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dlite_simulator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dlite_simulator_generate_messages dlite_simulator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg" NAME_WE)
add_dependencies(dlite_simulator_generate_messages_eus _dlite_simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv" NAME_WE)
add_dependencies(dlite_simulator_generate_messages_eus _dlite_simulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dlite_simulator_geneus)
add_dependencies(dlite_simulator_geneus dlite_simulator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dlite_simulator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dlite_simulator
  "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dlite_simulator
)

### Generating Services
_generate_srv_lisp(dlite_simulator
  "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv"
  "${MSG_I_FLAGS}"
  "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dlite_simulator
)

### Generating Module File
_generate_module_lisp(dlite_simulator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dlite_simulator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dlite_simulator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dlite_simulator_generate_messages dlite_simulator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg" NAME_WE)
add_dependencies(dlite_simulator_generate_messages_lisp _dlite_simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv" NAME_WE)
add_dependencies(dlite_simulator_generate_messages_lisp _dlite_simulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dlite_simulator_genlisp)
add_dependencies(dlite_simulator_genlisp dlite_simulator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dlite_simulator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dlite_simulator
  "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dlite_simulator
)

### Generating Services
_generate_srv_nodejs(dlite_simulator
  "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv"
  "${MSG_I_FLAGS}"
  "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dlite_simulator
)

### Generating Module File
_generate_module_nodejs(dlite_simulator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dlite_simulator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dlite_simulator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dlite_simulator_generate_messages dlite_simulator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg" NAME_WE)
add_dependencies(dlite_simulator_generate_messages_nodejs _dlite_simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv" NAME_WE)
add_dependencies(dlite_simulator_generate_messages_nodejs _dlite_simulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dlite_simulator_gennodejs)
add_dependencies(dlite_simulator_gennodejs dlite_simulator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dlite_simulator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dlite_simulator
  "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlite_simulator
)

### Generating Services
_generate_srv_py(dlite_simulator
  "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv"
  "${MSG_I_FLAGS}"
  "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlite_simulator
)

### Generating Module File
_generate_module_py(dlite_simulator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlite_simulator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dlite_simulator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dlite_simulator_generate_messages dlite_simulator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/msg/Cell.msg" NAME_WE)
add_dependencies(dlite_simulator_generate_messages_py _dlite_simulator_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ln/demo05_ws/src/dlite_simulator/srv/SensorData.srv" NAME_WE)
add_dependencies(dlite_simulator_generate_messages_py _dlite_simulator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dlite_simulator_genpy)
add_dependencies(dlite_simulator_genpy dlite_simulator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dlite_simulator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dlite_simulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dlite_simulator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dlite_simulator_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(dlite_simulator_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(dlite_simulator_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dlite_simulator_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dlite_simulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dlite_simulator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dlite_simulator_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(dlite_simulator_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(dlite_simulator_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dlite_simulator_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dlite_simulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dlite_simulator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dlite_simulator_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(dlite_simulator_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(dlite_simulator_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dlite_simulator_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dlite_simulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dlite_simulator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dlite_simulator_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(dlite_simulator_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(dlite_simulator_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dlite_simulator_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlite_simulator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlite_simulator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlite_simulator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dlite_simulator_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(dlite_simulator_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(dlite_simulator_generate_messages_py visualization_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dlite_simulator_generate_messages_py std_msgs_generate_messages_py)
endif()
