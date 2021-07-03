class PopularModel {
  String image;
  int color;
  PopularModel({
    required this.image,
    required this.color,
  });

}

List<PopularModel> populars = [
  PopularModel(
    image: "assets/images/img_beach.png", 
    color: 0xFFFEF1ED
  ),
  PopularModel(
    image: "assets/images/img_mountain.png", 
    color: 0xFFEDF6FE
  ),
  PopularModel(
    image: "assets/images/img_lake.png", 
    color: 0xFFFEF6E8
  ),
  PopularModel(
    image: "assets/images/img_river.png", 
    color: 0xFFEAF8E8
  ),
];
