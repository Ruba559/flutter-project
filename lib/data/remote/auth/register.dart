import 'package:flutter_application_1/core/class/curd.dart';

class RegisterData {
  Curd curd;

  RegisterData(this.curd);

  postdata(String name ,String email , String phone , String password  ) async {
    var response =
        await curd.postData('http://order.brain.sy/api/v1/register', {
      "name": name,
      'email': email,
      'phone': phone,
      'password': password,
    });
        return response.fold((l) => l, (r) => r);
  }
}
