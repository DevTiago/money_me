Authentication into Firebase Project (Android)

First step:
- Create a project in Firebase Console and Add Firebase to your Android App;
- You can find your ApplicationID inside your project in 'Android/app/build.gradle' in 'defaultConfig' object;
- Download the google-services.json file;
- Place it inside your project into 'Android/app';

Second step:
- Add this line 'classpath 'com.google.gms:google-services:4.3.0' (the version could be different, check firebase documentation)
into 'Android/build.gradle' on dependencies object;
- Add this line 'apply plugin: 'com.google.gms.google-services' to the bottom of the file 'Android/app/build.gradle';

Third step:
- Install the 'firebase_auth' and 'cloud_firestore' packages into your app.