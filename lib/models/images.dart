class Images {
  String imagepath;
  String category;
  Images({required this.imagepath, required this.category});
}

List images = [
  Images(imagepath: "assets/blush.jpg", category: "Blusher"),
  Images(imagepath: "assets/Concealer.jpg", category: "Concealer"),
  Images(imagepath: "assets/Foundation.jpg", category: "Foundation"),
  Images(imagepath: "assets/Eyeliner.jpg", category: "Eyeliner"),
  Images(imagepath: "assets/Eyeshadow.webp", category: "Eyeshadow"),
  Images(imagepath: "assets/lipstick2.jpg", category: "Lipstick"),
  Images(imagepath: "assets/FacePrimer.webp", category: "Face Primer"),
  Images(imagepath: "assets/Brusher.webp", category: "Brusher"),
];
