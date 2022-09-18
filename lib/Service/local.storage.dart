import 'package:get_storage/get_storage.dart';

class GetLocalStorage {
  static final storage = GetStorage();
  static saveUserInformations(Map<String, dynamic> user) async {
    storage.write("user", user);
    // storage.write("token", user["token"]);
    // storage.write("name", user["name"]);
    // storage.write("email", user["email"]);
    print(storage.read('user'));
  }

  static dynamic getUserInformation(String key) {
    Map<String, dynamic>? user = storage.read<Map<String, dynamic>>("user");

    // print(user?[key]);  

    return user?[key];
  }

  static deleteUserTokenAnduId() {
    storage.remove("user");
  }
}
