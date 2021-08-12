import 'package:flutter_test/flutter_test.dart';
import 'package:mid_level_cache/mid_level_cache.dart';

void main() {
  test('test store bool data', () {
    MCache mCache = MockMCache();
    mCache.setBool('keyBoolFalse', false);
    mCache.setBool('keyBoolTrue', true);
    //
    var boolFalseValue = mCache.get('keyBoolFalse');
    var boolTrueValue = mCache.get('keyBoolTrue');
    //
    expect(boolFalseValue, false);
    expect(boolFalseValue is bool, true);
    expect(boolTrueValue, true);
    expect(boolTrueValue is bool, true);
  });

  test('test store double data', () {
    MCache mCache = MockMCache();
    mCache.setDouble('keyDouble', 0.99);
    //
    var doubleValue = mCache.get('keyDouble');
    //
    expect(doubleValue, 0.99);
    expect(doubleValue is double, true);
  });

  test('test store Int data', () {
    MCache mCache = MockMCache();
    mCache.setInt('keyInt', 999);
    //
    var intValue = mCache.get('keyInt');
    //
    expect(intValue, 999);
    expect(intValue is int, true);
  });

  test('test store String data', () {
    MCache mCache = MockMCache();
    mCache.setString('keyString', 'HelloWorld');
    //
    var stringValue = mCache.get('keyString');
    //
    expect(stringValue, 'HelloWorld');
    expect(stringValue is String, true);
  });

  test('test store String List data', () {
    MCache mCache = MockMCache();
    mCache.setStringList('keyStringList', ['Value01', 'Value02']);
    //
    var stringListValue = mCache.get('keyStringList');
    //
    expect(stringListValue[0], 'Value01');
    expect(stringListValue[1], 'Value02');
    expect(stringListValue is List<String>, true);
  });
}

class MockMCache implements MCache {
  Map<String, dynamic> mockCache = {};

  @override
  T? get<T>(String key) {
    return mockCache[key] as T?;
  }

  @override
  void setBool(String key, bool value) => mockCache[key] = value;

  @override
  void setDouble(String key, double value) => mockCache[key] = value;

  @override
  void setInt(String key, int value) => mockCache[key] = value;

  @override
  void setString(String key, String value) => mockCache[key] = value;

  @override
  void setStringList(String key, List<String> value) => mockCache[key] = value;
}
