class Category{
  Category({this.categoryName, this.imagePath, this.numberItem});

  final String categoryName;
  final String imagePath;
  final int numberItem;

}

final categoryData = [
  Category(
    categoryName: 'Pizza',
    imagePath: "images/one.jpg",
    numberItem: 54,
  ),
  Category(
    categoryName: 'Burger',
    imagePath: "images/two.jpg",
    numberItem: 36,
  ),
  Category(
    categoryName: 'spaghetti',
    imagePath: "images/five.jpg",
    numberItem: 23,
  ),
  Category(
    categoryName: 'Breakfast',
    imagePath: "images/four.jpg",
    numberItem: 23,
  ),
  Category(
    categoryName: 'Lunch',
    imagePath: "images/three.jpg",
    numberItem: 33,
  ),
  Category(
    categoryName: 'Coffee',
    imagePath: "images/six.jpg",
    numberItem: 14,
  ),
];

