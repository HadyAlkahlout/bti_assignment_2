class PostModel {
  String image;
  String details;
  bool isFav;

  PostModel({
    required this.image,
    required this.details,
    this.isFav = false,
});
}