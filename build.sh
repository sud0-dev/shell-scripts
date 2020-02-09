export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true
. build/envsetup.sh
export CUSTOM_BUILD_TYPE=OFFICIAL
lunch aosp_X00T-userdebug
mka bacon
