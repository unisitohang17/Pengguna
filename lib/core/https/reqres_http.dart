import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pengguna/core/models/reqres_model.dart';
import 'package:http/http.dart' as http;

class Services {
  static Future<List<Reqres>> getListUser() async {
    String apiURL = "https://reqres.in/api/users/";

    var apiResult = await http.get(Uri.parse(apiURL));
    var jsonList = json.decode(apiResult.body);

    debugPrint(jsonList.toString());

    List<dynamic> getData = (jsonList as Map<String, dynamic>)['data'];

    List<Reqres> list = [];

    list.addAll(getData.map((element) => Reqres.fromJson(element)));

    return list;
  }
}
