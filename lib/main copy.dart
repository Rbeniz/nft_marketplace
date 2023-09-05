
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Pages/profil/myProfile.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
         statusBarColor: Colors.transparent));

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter NFT Marketplace',
      home: MyProfile(),
    );
  }
}
