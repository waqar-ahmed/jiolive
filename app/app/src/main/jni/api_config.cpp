#include <jni.h>
#include <string>

        // DEV
//std::string SERVER_URL = "http://192.168.178.54:8000/rest-api/";
//std::string API_KEY    = "395ce48b39890cd8860ef692";

        // PROD
std::string SERVER_URL      = "https://jiolive.000webhostapp.com/rest-api/";
std::string API_KEY         = "6trhkkuky0yxkmw7h5ioor0y";


std::string PURCHASE_CODE   = "xxxxxxxxxx-xxxxxxx-xxxxxx-xxxx";
//std::string YOUTUBE_API_KEY = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx";
std::string YOUTUBE_API_KEY = "AIzaSyD5exuJZq0MKvoqKGfnZnkVWbihpMWN4Gg";

extern "C" JNIEXPORT jstring JNICALL
// Change "com_oxoo_spagreen" with your package name. // I.e "com_package_name" // DO NOT CHANGE OTHER THINGS
Java_com_jiovio_jiolive_AppConfig_getApiServerUrl(
        JNIEnv* env,
        jclass clazz) {
    return env->NewStringUTF(SERVER_URL.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
// Change "com_oxoo_spagreen" with your package name. // I.e "com_package_name" // DO NOT CHANGE OTHER THINGS

Java_com_jiovio_jiolive_AppConfig_getApiKey(
        JNIEnv* env,
jclass clazz) {
return env->NewStringUTF(API_KEY.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
// Change "com_oxoo_spagreen" with your package name. // I.e "com_package_name" // DO NOT CHANGE OTHER THINGS

Java_com_jiovio_jiolive_AppConfig_getPurchaseCode(
        JNIEnv* env,
        jclass clazz) {
    return env->NewStringUTF(PURCHASE_CODE.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
// Change "com_oxoo_spagreen" with your package name. // I.e "com_package_name" // DO NOT TOUCH OTHER THINGS

Java_com_jiovio_jiolive_AppConfig_getYouTubeApiKey(
        JNIEnv* env,
        jclass clazz) {
    return env->NewStringUTF(YOUTUBE_API_KEY.c_str());
}
