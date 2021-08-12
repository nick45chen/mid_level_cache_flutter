part of '../mid_level_cache.dart';

class MCacheImpl implements MCache {
  static MCacheImpl? _instance;

  static MCache getInstance() {
    if (_instance == null) _instance = MCacheImpl._();
    return _instance!;
  }

  // 預初始化，防止在使用 get 時，preferences 還未完成初始化
  static Future<MCache> preInit() async {
    if (_instance == null) {
      final prefs = await SharedPreferences.getInstance();
      _instance = MCacheImpl._pre(prefs);
    }
    return _instance!;
  }

  SharedPreferences? _preferences;

  MCacheImpl._() {
    init();
  }

  MCacheImpl._pre(SharedPreferences prefs) {
    this._preferences = prefs;
  }

  // 獲取 SharedPreferences 為異步，所以要注意是否在調用 get/set 前完成
  // 建議使用 preInit().
  Future<void> init() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
  }

  @override
  void setString(String key, String value) {
    _preferences?.setString(key, value);
  }

  @override
  void setDouble(String key, double value) {
    _preferences?.setDouble(key, value);
  }

  @override
  void setInt(String key, int value) {
    _preferences?.setInt(key, value);
  }

  @override
  void setBool(String key, bool value) {
    _preferences?.setBool(key, value);
  }

  @override
  void setStringList(String key, List<String> value) {
    _preferences?.setStringList(key, value);
  }

  @override
  T? get<T>(String key) {
    return _preferences?.get(key) as T?;
  }
}
