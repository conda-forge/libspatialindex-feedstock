mkdir build && cd build

cmake -G "%CMAKE_GENERATOR%" ^
      -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      %SRC_DIR%
if errorlevel 1 exit 1

cmake --build . --config Release --target install
if errorlevel 1 exit 1
