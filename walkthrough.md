#### It is recommended to choose a standard development folder for building:

e.g. **C:\Development**

### SdrPlusPlus

```
git clone https://github.com/peterchafe/SDRPlusPlus.git
```

### PothosSDR

Download the latest release from: `https://downloads.myriadrf.org/builds/PothosSDR/`

Make sure to install to `C:\Program Files\PothosSDR`

Update the environment variables to include the bin folder
NOTE: if the path couldn't be updated because of the length to long, add the value to the path using the windows environment.

Add `C:\Program Files\PothosSDR\bin` to the end of the path. (can add as a user or System variable)

### Install vcpkg

Follow the getting started guide at `https://vcpkg.io/en/getting-started.html`

```
git clone https://github.com/Microsoft/vcpkg.git
cd vcpkg
.\vcpkg\bootstrap-vcpkg.bat
mkdir build
cd build
cmake .. "-DCMAKE_TOOLCHAIN_FILE=<vcpkg install directory>/scripts/buildsystems/vcpkg.cmake" -G "Visual Studio 17 2022"
cmake --build . --config Release
```

#### Install the required packages

```
vcpkg install fftw3
vcpkg install glfw3
vcpkg install zstd
```

### Build RtAudio

```
git clone https://github.com/thestk/rtaudio
cd rtaudio
git checkout 2f2fca4502d506abc50f6d4473b2836d24cfb1e3
mkdir build
cd build
cmake ..
cmake --build . --config Release
cmake --install .
```

Once completed you should ensure the files have been created in

```
C:\Program Files (x86)\RtAudio\
    bin\
        rtaudio.dll
    include\
        rtaudio\
            RtAudio.h
            rtaudio_c.h
    lib\
        pkgconfig\
            rtaudio.pc
        rtaudio.lib
    share\
        rtaudio\
            RtAudioConfig.cmake
            RtAudioConfig-version.cmake
            RtAudioTargets.cmake
            RtAudioTargets-release.cmake
```

### Create Binary release

Execute **create_root.bat** which will create the folder structure and copy the required res files.
Run **CreateBinaries_Win64.bat** which will copy all of the generated dll's and executables required to the previously created **root_dev** directory.
