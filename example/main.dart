import 'package:mid_level_cache/mid_level_cache.dart';

const kStringKey = 'stringKey';
const kDoubleKey = 'doubleKey';
const kIntKey = 'intKey';
const kBoolKey = 'boolKey';
const kStringListKey = 'stringListKey';

void main(List<String> arguments) async {
  MCache mCache = MCacheImpl.getInstance();
  // store data
  mCache.setString(kStringKey, 'stringValue');
  mCache.setDouble(kDoubleKey, 0.99);
  mCache.setInt(kIntKey, 999);
  mCache.setBool(kBoolKey, true);
  mCache.setStringList(kStringListKey, ['stringValue01']);
  // get data
  String stringValue = mCache.get(kStringKey);
  String doubleValue = mCache.get(kDoubleKey);
  String intValue = mCache.get(kIntKey);
  String boolValue = mCache.get(kBoolKey);
  String stringListValue = mCache.get(kStringListKey);
  //
  print('stringValue: $stringValue');
  print('doubleValue: $doubleValue');
  print('intValue: $intValue');
  print('boolValue: $boolValue');
  print('stringListValue: $stringListValue');
}
