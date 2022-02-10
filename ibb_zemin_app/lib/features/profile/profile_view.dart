import 'package:flutter/material.dart';
import 'package:ibb_zemin_app/core/init/theme/theme.dart';
import 'package:ibb_zemin_app/features/widgets/arrow_card_widgets.dart';
import 'package:ibb_zemin_app/models/my_custom_clipper.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool _isActive3 = false;
  bool _isActive5 = false;
  bool _isActive10 = false;
  bool _isActive15 = false;
  bool _isActive20 = false;
  late List<bool> actives;

  void changeActivity(bool isActive) {
    for (bool active in actives) {
      if (active) {
        setState(() {
          print("active $active");
          active = false;
        });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    actives = [_isActive3, _isActive5, _isActive10, _isActive15, _isActive20];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0.7),
              Colors.white.withOpacity(0.4),
              Colors.white.withOpacity(0.1),
              Colors.redAccent.withOpacity(0.1),
              Colors.redAccent.withOpacity(0.4),
              Colors.redAccent.withOpacity(0.7),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 64.0, left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        customIconButton(size, Icons.favorite, true),
                        const SizedBox(width: 8),
                        customIconButton(
                            size, Icons.cloud_download_rounded, false),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        customIconButton(size, Icons.favorite, false),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [
                    Text(
                      'WEEK 1 - DAY 2',
                      style: ThemeYellow()
                          .yellowTheme
                          .textTheme
                          .headline5!
                          .copyWith(color: Colors.redAccent, fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Positive Thinking',
                        style: ThemeYellow()
                            .yellowTheme
                            .textTheme
                            .headline2!
                            .copyWith(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Meditation',
                        style: ThemeYellow()
                            .yellowTheme
                            .textTheme
                            .headline2!
                            .copyWith(),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: size.width * 0.7,
                        child: Text(
                          'Cu vide suavitate gubergren vis, duo ad idque suscipit. unum imptus ullamcorper vel asdqd asdqdsada qwdasdasd',
                          style: ThemeYellow()
                              .yellowTheme
                              .textTheme
                              .bodyText1!
                              .copyWith(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                width: double.infinity,
                height: 300.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('clicked');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: size.width * 0.3,
                        height: size.height * 0.2,
                        child: ArrowCardWidget(
                          circularRatio: 50,
                          bgColor: Colors.orangeAccent,
                          size: size,
                          ratio: 5,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 8, right: 8, left: 8),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        width: double.infinity,
                        height: size.height * 0.5,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8, left: 8),
                                child: Text(
                                  'Details',
                                  style: ThemeYellow()
                                      .yellowTheme
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'Author',
                                          style: ThemeYellow()
                                              .yellowTheme
                                              .textTheme
                                              .bodyText2!
                                              .copyWith(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          'Janek Panasiuk',
                                          style: ThemeYellow()
                                              .yellowTheme
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w800),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4, left: 8),
                                child: Text(
                                  'Lector',
                                  style: ThemeYellow()
                                      .yellowTheme
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                ),
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      'Janek Panasiuk',
                                      style: ThemeYellow()
                                          .yellowTheme
                                          .textTheme
                                          .subtitle2,
                                    ),
                                    leading: Radio(
                                      value: 1,
                                      groupValue: 1,
                                      activeColor: const Color(0xFF6200EE),
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  ListTile(
                                    title: Text(
                                      'Daria Zaradkiewicz',
                                      style: ThemeYellow()
                                          .yellowTheme
                                          .textTheme
                                          .subtitle2,
                                    ),
                                    leading: Radio(
                                      value: 0,
                                      groupValue: 1,
                                      activeColor: const Color(0xFF6200EE),
                                      onChanged: (value) {},
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4, left: 8),
                                child: Text(
                                  'Length',
                                  style: ThemeYellow()
                                      .yellowTheme
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      customOutLinedButton(_isActive3, "3 min",
                                          () {
                                        setState(() {
                                          _isActive3 = !_isActive3;
                                        });
                                      }),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      customOutLinedButton(_isActive5, "5 min",
                                          () {
                                        setState(() {
                                          _isActive5 = !_isActive5;
                                        });
                                      }),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      customOutLinedButton(
                                          _isActive10, "10 min", () {
                                        setState(() {
                                          _isActive10 = !_isActive10;
                                        });
                                      }),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      customOutLinedButton(
                                          _isActive15, "15 min", () {
                                        setState(() {
                                          _isActive15 = !_isActive15;
                                        });
                                      }),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      customOutLinedButton(
                                          _isActive20, "20 min", () {
                                        setState(() {
                                          _isActive20 = !_isActive20;
                                        });
                                      }),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customOutLinedButton(
      bool _isActive, String text, VoidCallback onPressed) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: _isActive ? Colors.white : Colors.black,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: _isActive
            ? MaterialStateProperty.all<Color>(Colors.orangeAccent)
            : MaterialStateProperty.all<Color>(Colors.white),
      ),
    );
  }

  Widget customIconButton(Size size, IconData icon, bool active) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      width: size.width * 0.08,
      height: size.width * 0.08,
      child: Center(
        child: IconButton(
          icon: active
              ? Icon(
                  icon,
                  color: Colors.orangeAccent,
                  size: 15,
                )
              : Icon(
                  icon,
                  color: Colors.grey,
                  size: 15,
                ),
          onPressed: () {},
        ),
      ),
    );
  }
}
