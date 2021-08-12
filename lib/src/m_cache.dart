part of '../mid_level_cache.dart';

/// MCache interface

/// Dart does not have a syntax for declaring interfaces.
/// Class declarations are themselves interfaces in Dart.
abstract class MCache<T> {
  void setString(String key, String value) {
    // todo: implement
  }

  void setDouble(String key, double value) {
    // todo: implement
  }

  void setInt(String key, int value) {
    // todo: implement
  }

  void setBool(String key, bool value) {
    // todo: implement
  }

  void setStringList(String key, List<String> value) {
    // todo: implement
  }

  T? get<T>(String key) {
    // todo: implement
  }
}
