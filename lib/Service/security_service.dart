import 'dart:convert';

import 'package:http/http.dart' as http;




class SecurityApiService
{
  Future<dynamic> addSecurityApi(String name,String empid,String address,String phno,String email,String password) async
  {
    var client =http.Client();
    var apiUrl= Uri.parse("http://192.168.0.104:3001/api/sec/add");

    var response =await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type" : "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>{
          "name": name,
          "empid": empid,
          "address": address,
          "phno": phno,
          "email": email,
          "password": password,
        })
    );
    if(response.statusCode==200)
    {
      return json.decode(response.body);
    }
    else
    {
      throw Exception("failed to add");
    }
  }


}