<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
      package="{{ packageId }}"
      android:versionCode="1"
      android:versionName="1.0"
      android:installLocation="internalOnly">
    <application android:name="org.xwalk.core.XWalkApplication"
        android:hardwareAccelerated="true"
        android:label="{{ packageName }}"
        android:icon="@drawable/crosswalk">
        <meta-data android:name="com.samsung.android.vr.application.mode" android:value="vr_only"/>
        <activity android:name="{{ activityName }}"
                  android:theme="@android:style/Theme.Black.NoTitleBar.Fullscreen"
                  android:configChanges="orientation|keyboardHidden|keyboard|screenSize"
                  android:screenOrientation="landscape"
                  android:label="{{ packageName }}"
                  android:launchMode="singleTask"
                  android:excludeFromRecents="true">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.INFO" />
            </intent-filter>
        </activity>
    </application>
    <uses-feature android:glEsVersion="0x00020000" android:required="true" />
    <uses-sdk android:minSdkVersion="19" android:targetSdkVersion="19" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
    <uses-permission android:name="android.permission.CAMERA"/>
    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
</manifest>
