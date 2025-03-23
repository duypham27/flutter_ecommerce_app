import 'package:get_storage/get_storage.dart';

class DLocalStorage {
  static final DLocalStorage _instance = DLocalStorage._internal();

  factory DLocalStorage() {
    return _instance;
  }

  DLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<D>(String key, D value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  D? readData<D>(String key) {
    return _storage.read<D>(key);
  }

  // Generic method to remove data
  Future<void> removeData<D>(String key) async {
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
