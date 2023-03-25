class AppModels {
  final String img;
  final String title;
  final String description;
  final String price;
  final double rating;

  AppModels(this.img, this.title, this.description, this.price, this.rating);
}

final List appModels = [
  AppModels("assets/images/img1.jpg", "Item Name", "Description", "\$250", 3),
  AppModels("assets/images/img2.jpg", "Item Name", "Description", "\$310", 4),
  AppModels("assets/images/img3.jpeg", "Item Name", "Description", "\$230", 5),
  AppModels("assets/images/img4.jpg", "Item Name", "Description", "\$200", 4),
];
