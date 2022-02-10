import 'package:flutter/material.dart';
import 'package:ibb_zemin_app/features/widgets/custom_card_widget.dart';

import '../../core/init/theme/paddings.dart';
import '../../core/init/theme/theme.dart';
import '../../models/mediation_temps.dart';
import '../../models/meditation_model.dart';
import '../widgets/custom_text_widget.dart';
import 'widgets/my_courses_widget.dart';
import 'widgets/my_favorite_medidation_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController _scrollController;
  double top = 0;
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              sliderAppBar(size),
              sliderBody(size),
            ],
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter sliderBody(Size size) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CustomTextWidget(
                label: 'My Courses',
                style: ThemeYellow().yellowTheme.textTheme.headline4!,
              ),
            ),
            MyCourses(size: size),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: CustomTextWidget(
                label: 'My Favourites',
                style: ThemeYellow().yellowTheme.textTheme.headline4!,
              ),
            ),
            MyFavoriteMedidationWidget(size: size),
          ],
        ),
      ),
    );
  }

  SliverAppBar sliderAppBar(Size size) {
    return SliverAppBar(
      pinned: true,
      stretch: true,
      expandedHeight: size.height * 0.4,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          top = constraints.biggest.height;
          return FlexibleSpaceBar(
            background: customAppBar(context, size),
            centerTitle: true,
            title: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: top < 200 ? 1 : 0,
              child: Row(
                children: const [
                  SizedBox(
                    height: 12,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text("Dorata"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Stack customAppBar(BuildContext context, Size size) {
    return Stack(
      children: [
        appbarBackground(context),
        appbarColumn(context, size),
      ],
    );
  }

  Container appbarBackground(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/bg.png',
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Container appbarColumn(BuildContext context, Size size) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      color: Colors.white10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Padding(
            padding: const EdgeInsets.all(MainPadding.defaultPaddingLow),
            child: Text('Hello Dorata!',
                style: ThemeYellow().yellowTheme.textTheme.headline5),
          ),
          Padding(
            padding: const EdgeInsets.all(MainPadding.defaultPaddingLow),
            child: Text(
              'Have a nice day!',
              style: ThemeYellow().yellowTheme.textTheme.headline2,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomCardWidget(size: size),
          ),
        ],
      ),
    );
  }
}
