# - Link platform support dependencies found by CheckPlatformSupport.cmake

# lockdev
if (HAVE_LOCKDEV)
  target_link_libraries(cec lockdev)
endif()

# udev
if (HAVE_LIBUDEV)
  target_link_libraries(cec udev)
endif()

# xrandr
if (HAVE_RANDR)
  target_link_libraries(cec Xrandr)
  target_link_libraries(cec X11)
endif()

# rt
if (HAVE_RT)
  target_link_libraries(cec rt)
endif()

# dl
if (HAVE_DLOPEN)
  target_link_libraries(cec dl)
endif()

# raspberry pi
if (HAVE_RPI_API)
  find_library (VCOS vcos)
  target_link_libraries(cec ${VCOS})
  find_library (VCHIQ_ARM vchiq_arm)
  target_link_libraries(cec ${VCHIP_ARM})
  find_library (BCM_HOST bcm_host)
  target_link_libraries(cec ${BCM_HOST})
endif()

# Apple
if (APPLE)
  target_link_libraries(cec "-framework CoreFoundation")
  target_link_libraries(cec "-framework IOKit")
  target_link_libraries(cec "-framework CoreVideo")
endif()

