### WebVR + GearVR with Crosswalk

This is a fork of [crosswalk-app-tools](https://github.com/crosswalk-project/crosswalk-app-tools) intended to build applications for GearVR.

Mainly this introduces changes to the `AndroidManifest.xml` template. You can also build a Crosswalk application without these app tools, which means you don't need this repo to get Crosswalk working with GearVR.

The following describes the steps necessary to build a WebVR/WebGL app for your GearVR (Android).

For more details on this workflow, see [crosswalk-app-tools](https://github.com/crosswalk-project/crosswalk-app-tools) and [crosswalk-project.org](https://crosswalk-project.org).

## GearVR Tutorial

Make a new project folder, `cd` into it and make a release folder:

```sh
mkdir my-project
cd my-project
mkdir release
```

We use a `release` folder so that our `node_modules` and other files won't be included in the Crosswalk application. You can name it whatever.

Add `release/index.html` like this:

```html
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>simple</title>
  </head>
  <body>
    <p>hello world</p>
  </body>
</html>
```

Add `release/manifest.json` like this:

```
{
  "name": "My Crosswalk Example",
  "start_url": "index.html",
  "orientation": "landscape",
  "xwalk_package_id": "com.foobar.example"
}
```

Now add a npm config so we can start installing dependencies:

```sh
# fill this out as needed
npm init
```

That will create a `package.json`. Now run:

```sh
npm install mattdesl/crosswalk-app-tools#gearvr --save-dev
```

This will install this fork and save it in `devDependencies`. 

Now add the following to the `"scripts"` field in your `package.json`:

```json
"scripts": {
  "xwalk": "crosswalk-pkg release/"
}
```

Now run the following to build a new APK:

```sh
npm run xwalk
```

You can push the APK to the device with `adb push`. This can also be added to npm scripts for faster automation. e.g.

```sh
adb push com.foobar.example-0.1-debug.armeabi-v7a.apk /sdcard/
```

Now when you run the app, it will prompt you to insert it into your GearVR.

### License

The license for this project is the Apache License Version 2.0, please refer to the LICENSE-APACHE-V2 included with the package for details.
