import 'package:flutter/material.dart';
import 'package:ibb_zemin_app/core/init/theme/theme.dart';
import 'package:ibb_zemin_app/features/widgets/arrow_card_widgets.dart';

// ignore: must_be_immutable
class BigCard extends StatelessWidget {
  Size size;
  String png;
  String title;
  BigCard(
      {Key? key, required this.size, required this.png, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.2,
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.5),
                    image: DecorationImage(
                      image: AssetImage(png),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: ArrowCardWidget(
                    size: size,
                    bgColor: Colors.white54,
                    ratio: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: size.width / 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: ThemeYellow().yellowTheme.textTheme.headline4),
              SizedBox(height: size.width / 100),
              Text('2 h 54 min',
                  style: ThemeYellow().yellowTheme.textTheme.bodyText2),
            ],
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.yellowAccent.shade700,
            inactiveTrackColor: Colors.grey,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
          ),
          child: Slider(
            value: 6,
            min: 0,
            max: 7,
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
