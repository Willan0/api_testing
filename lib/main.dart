import 'package:dio/dio.dart';
import 'package:fake_store/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'network/api/fake_store_api/fake_store_api.dart';

void main(){
  runApp(const MyApp());
  FakeStoreAPI api = FakeStoreAPI(Dio());
  api.getAllProducts().then((value) {
    print("Success vlaue is $value");
  }).catchError((error)=> print(error));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
