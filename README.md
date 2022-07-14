# mid_level_cache

[![build](https://github.com/nick45chen/mid_level_cache_flutter/actions/workflows/test-package.yml/badge.svg)](https://github.com/nick45chen/mid_level_cache_flutter/actions/workflows/test-package.yml)

A flutter app mid-level cache framework for Android/iOS/macOS.

```
flutter shared_preferences packages <=> mid_level_cache <=> production logic
```

## Use this package as a library

This will add a line like this to your package's pubspec.yaml (and run an implicit dart pub get):

```
dependencies:
  mid_level_cache:
    git:
      url: git@github.com:nick45chen/mid_level_cache_flutter.git
      ref: master
```

### Import it

Now in your Dart code, you can use.
And the best way to use it is to initialize it when the application starts.

``` dart
import 'package:mid_level_cache/mid_level_cache.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MCache>(
      // initialize
      future: MCache.preInit(),
      builder: (BuildContext context, AsyncSnapshot<MCache> snapshot) {
        return MaterialApp(
          home: rootWidget,
        );
      },
    );
  }
}
```

