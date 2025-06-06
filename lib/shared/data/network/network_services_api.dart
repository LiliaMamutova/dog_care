import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../exception/app_exceptions.dart';
import 'base_api_services.dart';

class NetworkServicesApi extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException("");
    } on TimeoutException {
      throw FetchDataException("Tome out try again");
    }

    return jsonResponse;
  }

  Future<dynamic> deleteApi(String url) async {
    dynamic jsonResponse;
    try {
      final response = await http.delete(Uri.parse(url)).timeout(Duration(seconds: 10));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException("");
    } on TimeoutException {
      throw FetchDataException("Tome out try again");
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, data) async {
    dynamic jsonResponse;
    if (kDebugMode) {
      print(url);
      print(data);
    }
    try {
      final response = await http.post(Uri.parse(url), body: data).timeout(Duration(seconds: 10));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException("");
    } on TimeoutException {
      throw FetchDataException("Tome out try again");
    }

    return jsonResponse;
  }
}

dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      dynamic jsonResponse = jsonDecode(response.body);
      return jsonResponse;

    case 400:
      dynamic jsonResponse = jsonDecode(response.body);
      return jsonResponse;

    case 401:
      throw UnauthorisedException();

    case 500:
      throw FetchDataException("Error communication with Server" + response.statusCode.toString());
    default:
      throw UnauthorisedException();
  }
}
