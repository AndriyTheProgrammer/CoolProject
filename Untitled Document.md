#### Build gradle (app):
 Add this dependency (This guide assumes you already have wikitude sdk and tartt sdk)

    compile 'com.google.zxing:core:3.2.0


 Add this to bottom of build.gradle file

    repositories {
        flatDir {
            dirs 'libs'
        }
    }

Modify build types like that

    android.buildTypes {
        debug {
            ...
            applicationIdSuffix = ".dev"
            versionNameSuffix = "-dev"
        }
        ...
    }
    
#### Add all required permission and activities to AndroidManifest 

##### Permissions 
#

    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
    <uses-permission android:name="android.permission.ACCESS_GPS" />
    <uses-permission android:name="android.permission.CAMERA" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
    <!-- Get permission for reliable local dispatching on non-Google Play devices. -->
    <uses-permission android:name="android.permission.WAKE_LOCK" />

    <uses-feature
        android:name="android.hardware.camera"
        android:required="true" />
    <uses-feature
        android:name="android.hardware.location"
        android:required="true" />
    <uses-feature
        android:name="android.hardware.sensor.accelerometer"
        android:required="true" />
    <uses-feature
        android:name="android.hardware.sensor.compass"
        android:required="true" />
    <uses-feature
        android:glEsVersion="0x00020000"
        android:required="true" />
        
##### Activities 
#

    <activity
            android:name="com.takondi.clients.uefa.photobooth.euro2016.dev.SplashActivity"
            android:screenOrientation="portrait"
            android:theme="@style/AppTheme.NoActionBar">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>

        </activity>
        <activity
            android:name="com.takondi.clients.uefa.photobooth.euro2016.dev.ARActivity"
            android:configChanges="screenSize|orientation"
            android:screenOrientation="portrait" />
        <activity
            android:name="com.wikitude.tools.activities.MediaPlayerActivity"
            android:screenOrientation="landscape">
            <intent-filter>
                <action android:name="android.intent.action.VIEW" />
                <category android:name="android.intent.category.DEFAULT" />
            </intent-filter>
        </activity>

##### Copy repository data into your project
#

Now copy 

 * folder with source code from com/takondi/clients/uefa/photobooth/euro2016/dev to your project (path must be the same or else you will need to modify android manifest and imports with new one)
* res folder

