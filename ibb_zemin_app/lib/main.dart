import 'package:flutter/material.dart';
import 'package:ibb_zemin_app/core/init/theme/theme.dart';
import 'package:ibb_zemin_app/features/meditation/meditation_view.dart';
import 'package:ibb_zemin_app/features/root/root_view.dart';
import 'package:ibb_zemin_app/models/meditation_model.dart';
import 'package:ibb_zemin_app/models/user_temps.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  MedidationModel m = MedidationModel(
    author: UserTemps().user3,
    description: "Medidation 3",
    imageUrl: "assets/images/card3.png",
    title: "Medidation 3",
    length: 7,
    isFavorite: false,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MeditationView(
        medidationModel: m,
      ),
      theme: ThemeYellow().yellowTheme,
    );
  }
}
