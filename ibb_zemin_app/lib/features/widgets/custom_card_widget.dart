import 'package:flutter/material.dart';
import 'package:ibb_zemin_app/core/init/theme/paddings.dart';
import 'package:ibb_zemin_app/core/init/theme/theme.dart';
import 'package:ibb_zemin_app/features/widgets/arrow_card_widgets.dart';

class CustomCardWidget extends StatelessWidget {
  CustomCardWidget({Key? key, required this.size}) : super(key: key);
  Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white70,
        ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(MainPadding.defaultPaddingNormal),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              ArrowCardWidget(
                bgColor: Colors.lightBlue.shade200,
                size: size,
                ratio: 8,
                circularRatio: 15,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today\'s Medidation',
                    style: ThemeYellow().yellowTheme.textTheme.bodyText2,
                  ),
                  Text(
                    'Compassion in Life',
                    style: ThemeYellow().yellowTheme.textTheme.headline4,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
