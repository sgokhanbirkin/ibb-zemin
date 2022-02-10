import 'package:ibb_zemin_app/models/meditation_model.dart';
import 'package:ibb_zemin_app/models/user_temps.dart';

class MedidationTemps {
  List<MedidationModel> medidationTemps = [
    MedidationModel(
      author: UserTemps().user1,
      description: "Medidation 1",
      imageUrl: "assets/images/card1.png",
      title: "Medidation 1",
      length: 7,
      isFavorite: true,
    ),
    MedidationModel(
      author: UserTemps().user1,
      description: "Medidation 2",
      imageUrl: "assets/images/card2.png",
      title: "Medidation 2",
      length: 7,
      isFavorite: false,
    ),
    MedidationModel(
      author: UserTemps().user3,
      description: "Medidation 3",
      imageUrl: "assets/images/card3.png",
      title: "Medidation 3",
      length: 7,
      isFavorite: false,
    ),
    MedidationModel(
      author: UserTemps().user2,
      description: "Medidation 4",
      imageUrl: "assets/images/card4.png",
      title: "Medidation 4",
      length: 7,
      isFavorite: true,
    ),
    MedidationModel(
      author: UserTemps().user2,
      description: "Medidation 5",
      imageUrl: "assets/images/bg.png",
      title: "Medidation 5",
      length: 7,
      isFavorite: false,
    ),
  ];

  int medidationList() {
    return medidationTemps.length;
  }

  MedidationModel getMedidation(int index) {
    return medidationTemps[index];
  }

  List<MedidationModel> getFavoriteMedidationList() {
    return medidationTemps
        .where((medidation) => medidation.isFavorite)
        .toList();
    return medidationTemps;
  }
}
