# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "agent: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(agent_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv" NAME_WE)
add_custom_target(_agent_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "agent" "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(agent
  "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent
)

### Generating Module File
_generate_module_cpp(agent
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(agent_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(agent_generate_messages agent_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv" NAME_WE)
add_dependencies(agent_generate_messages_cpp _agent_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agent_gencpp)
add_dependencies(agent_gencpp agent_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agent_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(agent
  "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent
)

### Generating Module File
_generate_module_eus(agent
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(agent_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(agent_generate_messages agent_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv" NAME_WE)
add_dependencies(agent_generate_messages_eus _agent_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agent_geneus)
add_dependencies(agent_geneus agent_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agent_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(agent
  "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent
)

### Generating Module File
_generate_module_lisp(agent
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(agent_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(agent_generate_messages agent_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv" NAME_WE)
add_dependencies(agent_generate_messages_lisp _agent_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agent_genlisp)
add_dependencies(agent_genlisp agent_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agent_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(agent
  "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent
)

### Generating Module File
_generate_module_nodejs(agent
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(agent_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(agent_generate_messages agent_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv" NAME_WE)
add_dependencies(agent_generate_messages_nodejs _agent_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agent_gennodejs)
add_dependencies(agent_gennodejs agent_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agent_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(agent
  "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent
)

### Generating Module File
_generate_module_py(agent
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(agent_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(agent_generate_messages agent_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/denim/Motionplanningws/catkin_ws/src/agent/srv/update_goal.srv" NAME_WE)
add_dependencies(agent_generate_messages_py _agent_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(agent_genpy)
add_dependencies(agent_genpy agent_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS agent_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/agent
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(agent_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(agent_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/agent
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(agent_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(agent_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/agent
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(agent_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(agent_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/agent
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(agent_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(agent_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/agent
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(agent_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(agent_generate_messages_py nav_msgs_generate_messages_py)
endif()
