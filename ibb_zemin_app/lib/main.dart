import 'package:flutter/material.dart';
import 'package:ibb_zemin_app/core/init/theme/theme.dart';
import 'package:ibb_zemin_app/features/root/root_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: RootView(),
      theme: ThemeYellow().yellowTheme,
    );
  }
}
