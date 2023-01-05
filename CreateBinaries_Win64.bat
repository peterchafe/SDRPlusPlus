@echo off

echo Copying misc modules files.

copy build\misc_modules\rigctl_server\Release\*.dll C:\Development\sdrplusplus\root_dev\modules\
copy build\misc_modules\frequency_manager\Release\*.dll root_dev\modules\
copy build\misc_modules\recorder\Release\*.dll root_dev\modules\
copy build\misc_modules\discord_integration\Release\*.dll root_dev\modules\
copy build\misc_modules\scanner\Release\*.dll root_dev\modules\

echo Copying sinkmodules files.

copy build\sink_modules\network_sink\Release\*.dll root_dev\modules\
copy build\sink_modules\audio_sink\Release\*.dll root_dev\modules\

echo Copying source modules files.

copy build\source_modules\airspy_source\Release\*.dll root_dev\modules\
copy build\source_modules\airspyhf_source\Release\*.dll root_dev\modules\
copy build\source_modules\file_source\Release\*.dll root_dev\modules\
copy build\source_modules\hackrf_source\Release\*.dll root_dev\modules\
copy build\source_modules\hermes_source\Release\*.dll root_dev\modules\
copy build\source_modules\plutosdr_source\Release\*.dll root_dev\modules\
copy build\source_modules\rfspace_source\Release\*.dll root_dev\modules\
copy build\source_modules\rtl_sdr_source\Release\*.dll root_dev\modules\
copy build\source_modules\rtl_tcp_source\Release\*.dll root_dev\modules\
copy build\source_modules\sdrpp_server_source\Release\*.dll root_dev\modules\
copy build\source_modules\soapy_source\Release\*.dll root_dev\modules\
copy build\source_modules\spectran_http_source\Release\*.dll root_dev\modules\
copy build\source_modules\spyserver_source\Release\*.dll root_dev\modules\

echo Copying decoder modules files.

copy build\decoder_modules\radio\Release\*.dll root_dev\modules\
copy build\decoder_modules\meteor_demodulator\Release\*.dll root_dev\modules\

echo Copying SDR++ files.

copy build\Release\* root_dev\
copy "C:\Program Files (x86)\RtAudio\bin\*.dll" root_dev\

echo Copying PothosSDR files.

copy "C:\Program Files\PothosSDR\bin\rtlsdr.dll" root_dev\
copy "C:\Program Files\PothosSDR\bin\pthreadVC2.dll" root_dev\

echo done.
pause.