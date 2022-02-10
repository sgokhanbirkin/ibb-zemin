import 'package:flutter/material.dart';
import 'package:ibb_zemin_app/features/home/widgets/bigCard.dart';
import 'package:ibb_zemin_app/models/mediation_temps.dart';
import 'package:ibb_zemin_app/models/meditation_model.dart';

class MyCourses extends StatelessWidget {
  MyCourses({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  List<MedidationModel> medidations = MedidationTemps().medidationTemps;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.4,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BigCard(
            size: size,
            png: medidations[index].imageUrl,
            title: medidations[index].title,
          );
        },
        separatorBuilder: (context, _) => const SizedBox(
          width: 12,
        ),
        itemCount: medidations.length,
      ),
    );
  }
}
