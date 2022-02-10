import 'package:flutter/material.dart';
import 'package:ibb_zemin_app/core/init/theme/theme.dart';
import 'package:ibb_zemin_app/models/meditation_model.dart';

class MeditationView extends StatefulWidget {
  MeditationView({Key? key, required this.medidationModel}) : super(key: key);
  final MedidationModel medidationModel;
  @override
  State<MeditationView> createState() => _MeditationViewState();
}

class _MeditationViewState extends State<MeditationView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, size.height * 0.25),
        child: appbarBackground(context),
      ),
      body: SingleChildScrollView(
        child: bodyColumn(size, widget.medidationModel),
      ),
    );
  }

  Container appbarBackground(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        image: DecorationImage(
          image: AssetImage(
            widget.medidationModel.imageUrl,
          ),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget bodyColumn(Size size, MedidationModel model) {
    return Container(
      height: size.height * 0.8,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                model.title,
                style: ThemeYellow().yellowTheme.textTheme.headline2,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.cloud_download))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(model.description,
                style: ThemeYellow().yellowTheme.textTheme.bodyText2),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(model.author.imageUrl),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text("Author",
                          style: ThemeYellow().yellowTheme.textTheme.caption),
                      const SizedBox(
                        width: 18,
                      ),
                      Text("${model.author.name}  ${model.author.surname}",
                          style: ThemeYellow().yellowTheme.textTheme.bodyText2),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Weeks',
                style: ThemeYellow().yellowTheme.textTheme.headline5),
          ),
        ],
      ),
    );
  }
}
