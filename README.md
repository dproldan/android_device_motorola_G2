android_device_motorola_G2
==========================

 Building AOSP for the Motorola MotoACTV.  This is a work in progress.  It builds,  but the result hasn't been tested yet.
 
 How to build:


 1. Create a workspace containing vanilla 'android-2.3.4_r1' release from Google.
    
    mkdir motoactv_development
    cd motoactv_development
    repo init -u https://android.googlesource.com/platform/manifest -b android-2.3.4_r1
    repo sync 

 2. Download the motorola sources from here:
    http://sourceforge.net/projects/motoactv.motorola/files/MOTOACTV-Americas/1.7.11/

    Extract each one of those files to motoactv_development folder,  they have to overwrite complete folders,  do not merge!

    You have to fix the android.mk files for each of these components because they're using an "user" tag that is no longer valid,  they need to be changed to "optional".

 3.  make a new folder at motoactv_development/device/motorola/G2/  and clone the git tree

   git clone https://github.com/dproldan/android_device_motorola_G2.git

 4.  make a new folder at motoactv_development/vendor/motorola/G2/  and clone the git tree

   git clone https://github.com/dproldan/android_vendor_motorola_G2.git


 5.  build it!

   lunch generic_G2-userdebug
   make

 6.  you should get an out/target/product/G2 with the images, etc


