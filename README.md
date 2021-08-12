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
  mid_level_network:
    git:
      url: git@github.com:nick45chen/mid_level_cache_flutter.git
      ref: master
```

### Import it

Now in your Dart code, you can use:

```
import 'package:mid_level_cache/mid_level_cache.dart';
```

