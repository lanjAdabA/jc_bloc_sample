import 'package:flutter/material.dart';
import 'package:jc_bloc/app/multiblov_wrapper.dart';
import 'package:jc_bloc/pages/user.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MultiBlockWrapper(child: UserList()),
    );
  }
}
