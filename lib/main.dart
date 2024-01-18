import 'package:flutter/material.dart';
import 'package:uas/model/kuliah.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screen/home.dart';
main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(KuliahAdapter());
  await Hive.openBox('boxkuliah');
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UAS',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: InfoScreen(),
    );
  }
}