
class ImageModel{
  final int id;
  final String image;
  final double ratio;

  ImageModel({required this.id, required this.image, required this.ratio});

  factory ImageModel.parseJsonData(Map<String,dynamic> data){
    return ImageModel(id: data["id"], image: data["image"], ratio: data["ratio"]);
  }
}
