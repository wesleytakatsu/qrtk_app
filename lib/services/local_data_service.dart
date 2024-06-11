import 'package:hive/hive.dart';
// import 'package:qrtk_app/resources/global_variables.dart';
import 'package:path_provider/path_provider.dart';

class LocalDataService {
  static const String _boxName = 'local_data';
  static const String _boxEncryptedName = 'local_data_encrypted';
  static const String _encryptionKey = 'encryption_key_qrtk_app';


  Future<void> saveData(String key, dynamic value) async {
    final appSupportDirectory = await getApplicationSupportDirectory();
    Hive.init(appSupportDirectory.path);
    var box = await Hive.openBox(_boxName);
    await box.put(key, value);
  }

  Future<dynamic> getData(String key) async {
    final appSupportDirectory = await getApplicationSupportDirectory();
    Hive.init(appSupportDirectory.path);
    var box = await Hive.openBox(_boxName);
    return box.get(key);
  }

  Future<void> deleteData(String key) async {
    final appSupportDirectory = await getApplicationSupportDirectory();
    Hive.init(appSupportDirectory.path);
    var box = await Hive.openBox(_boxName);
    await box.delete(key);
  }

  Future<void> clearData() async {
    final appSupportDirectory = await getApplicationSupportDirectory();
    Hive.init(appSupportDirectory.path);
    var box = await Hive.openBox(_boxName);
    await box.clear();
  }

  Future<void> saveEncryptedData(dynamic value) async {
    final appSupportDirectory = await getApplicationSupportDirectory();
    Hive.init(appSupportDirectory.path);
    var box = await Hive.openBox(_boxEncryptedName);
    await box.put(_encryptionKey, value);
  }

  Future<dynamic> getEncryptedData() async {
    final appSupportDirectory = await getApplicationSupportDirectory();
    Hive.init(appSupportDirectory.path);
    var box = await Hive.openBox(_boxEncryptedName);
    return box.get(_encryptionKey);
  }

  Future<void> deleteEncryptedData() async {
    final appSupportDirectory = await getApplicationSupportDirectory();
    Hive.init(appSupportDirectory.path);
    var box = await Hive.openBox(_boxEncryptedName);
    await box.delete(_encryptionKey);
  }

  Future<void> clearEncryptedData() async {
    final appSupportDirectory = await getApplicationSupportDirectory();
    Hive.init(appSupportDirectory.path);
    var box = await Hive.openBox(_boxEncryptedName);
    await box.clear();
  }
}
