# Change this file when releasing a new version.

# Version numbers.
set(CLEMENTINE_VERSION_MAJOR 0)
set(CLEMENTINE_VERSION_MINOR 5)
set(CLEMENTINE_VERSION_PATCH 2)

set(BUILDBOT_REVISION $ENV{BUILDBOT_REVISION})
if(BUILDBOT_REVISION)
  set(CLEMENTINE_VERSION_STRING "${CLEMENTINE_VERSION_MAJOR}.${CLEMENTINE_VERSION_MINOR} - buildbot r${BUILDBOT_REVISION}") # Displayed in GUIs
  set(CLEMENTINE_VERSION_SHORT_STRING "${CLEMENTINE_VERSION_MAJOR}.${CLEMENTINE_VERSION_MINOR}r${BUILDBOT_REVISION}")       # Used in filenames
  set(CLEMENTINE_VERSION ${CLEMENTINE_VERSION_MAJOR}.${CLEMENTINE_VERSION_MINOR}.90.r${BUILDBOT_REVISION})
  set(CLEMENTINE_DEB_VERSION ${CLEMENTINE_VERSION_MAJOR}.${CLEMENTINE_VERSION_MINOR}.90~r${BUILDBOT_REVISION}~${DEB_DIST})
else(BUILDBOT_REVISION)
  set(CLEMENTINE_VERSION_STRING "${CLEMENTINE_VERSION_MAJOR}.${CLEMENTINE_VERSION_MINOR}")
  set(CLEMENTINE_VERSION_SHORT_STRING "${CLEMENTINE_VERSION_MAJOR}.${CLEMENTINE_VERSION_MINOR}")

  if (CLEMENTINE_VERSION_PATCH)
    set(CLEMENTINE_VERSION ${CLEMENTINE_VERSION_MAJOR}.${CLEMENTINE_VERSION_MINOR}.${CLEMENTINE_VERSION_PATCH})
  else (CLEMENTINE_VERSION_PATCH)
    set(CLEMENTINE_VERSION ${CLEMENTINE_VERSION_MAJOR}.${CLEMENTINE_VERSION_MINOR})
  endif (CLEMENTINE_VERSION_PATCH)
  set(CLEMENTINE_DEB_VERSION ${CLEMENTINE_VERSION}~${DEB_DIST})
endif(BUILDBOT_REVISION)

