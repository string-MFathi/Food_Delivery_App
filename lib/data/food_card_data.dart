class FoodData{
  FoodData({this.imagePath,this.id,this.category,this.discount,this.name,this.price,this.ratings,});

  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;
}

final foodsData = [
  FoodData(
    id: '6',
    name: 'Coffe',
    imagePath: 'images/six.jpg',
    category: '6',
    price: 6.0,
    discount: 10.5,
    ratings: 99.4,
  ),
  FoodData(
    id: '5',
    name: 'spaghetti',
    imagePath: 'images/five.jpg',
    category: '5',
    price: 17.0,
    discount: 20.0,
    ratings: 99.1,
  ),
  FoodData(
    id: '4',
    name: 'Breakfast',
    imagePath: 'images/four.jpg',
    category: '4',
    price: 11.0,
    discount: 25.0,
    ratings: 99.0,
  ),
  FoodData(
    id: '3',
    name: 'Lunch',
    imagePath: 'images/three.jpg',
    category: '3',
    price: 21.0,
    discount: 20.0,
    ratings: 98.4,
  ),
  FoodData(
    id: '2',
    name: 'Burger',
    imagePath: 'images/two.jpg',
    category: '2',
    price: 10.5,
    discount: 15.0,
    ratings: 98.4,
  ),
  FoodData(
    id: '1',
    name: 'Pizza',
    imagePath: 'images/one.jpg',
    category: '1',
    price: 25.4,
    discount: 10.0,
    ratings: 98.2,
  ),
];