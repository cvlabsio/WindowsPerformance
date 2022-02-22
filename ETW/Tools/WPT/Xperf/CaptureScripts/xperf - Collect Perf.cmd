@echo off
echo Press a key when ready to start...
pause
echo .
echo ...Capturing...
echo .

xperf -on PROC_THREAD+LOADER+Base+Diag+Latency+FileIO+DRIVERS+DPC+DISPATCHER -stackwalk Profile+CSwitch+ReadyThread+ThreadCreate -BufferSize 1024 -MinBuffers 256 -MaxBuffers 256 -MaxFile 256 -FileMode Circular

echo Press a key when you want to stop...
pause
echo .
echo ...Stopping...
echo .

xperf -stop -d result.etl
