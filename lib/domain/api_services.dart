
import 'package:flutter_food_app/config/server_addresses.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class ApiServices {

  ///login
  Future<dynamic> getLogin({Map<String, String> params}) async {
    try {
      var response = await http.post(
        ServerAddresses.login,
       // data: params,
      );
      print('login response------------$response');
      return response;
    } catch (e) {
      return e;
    }
  }

  ///menu list
  Future<Response> getMenuList({Map<String, String> params}) async {
    try {
      var response = await http.get(
        '${ServerAddresses.menuList}',
      );
      print('menu list response------------$response');
      return response;
    } catch (e) {
      return e;
    }
  }
}
