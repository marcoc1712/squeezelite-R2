# squeezelite-R2

This is a modified version of squeezelite by Adrian Smith (Triode). 
At the moment of writing (October 2015), original code is here: https://code.google.com/p/squeezelite/, MASTER branch here is a clone.

This version was originally meant to inspect pcm header to detect the real samplerate, depth and endianess, in order to override the wrong information coming from the server when transcoding or upsampling.

October, 4 2015 this feature has been incorporated in Daphile, March,  10 2016 in Audiolinux.

Starting form March, 15 2061 it's included in the squeezebox community official version of squeezelite, mantained by Ralph Irving.

Squeezelite-R2 v1.8.4 now incorporates some functionalities from Daphile: 

1.Launched with -x prevent lms to downsample in case original samplerate is greater than the maximum imposed with -r in command line. 
2.Using ALSA, is now possible to send DSD 'natives' formats (as opposed to DOP) to XMOS based USB interfaces or DACs.
