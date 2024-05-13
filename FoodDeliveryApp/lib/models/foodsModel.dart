class FoodModel {
  final String image;
  final String name;
  final int price;
  int amount = 1;
  FoodModel({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<FoodModel> foodsModel = [
  FoodModel(image: 'assets/images/foods/fish.jpg', name: 'Fish', price: 20),
  FoodModel(image: 'assets/images/foods/meat.jpg', name: 'Meat', price: 50),
  FoodModel(image: 'assets/images/foods/rice.jpg', name: 'Rice', price: 15),
  FoodModel(image: 'assets/images/foods/salad.jpg', name: 'Salad', price: 10),
  FoodModel(image: 'assets/images/foods/burger.jpg', name: 'Burger', price: 17),
  FoodModel(
      image: 'assets/images/foods/chicken Pies.jpg',
      name: 'Chicken Pies',
      price: 19),
  FoodModel(
      image: 'assets/images/foods/frid chicken.jpg',
      name: 'Frid Chicken',
      price: 14),
  FoodModel(
      image: 'assets/images/foods/heart meal.jpg',
      name: 'Heart Meal',
      price: 19),
  FoodModel(image: 'assets/images/foods/pizza.jpg', name: 'Pizza', price: 13),
  FoodModel(
      image: 'assets/images/foods/rice meal.jpg', name: 'Rice Meal', price: 11),
];

List<FoodModel> drinksModel = [
  FoodModel(
      image: 'assets/images/Juices/AppleJuice.jpg',
      name: 'Apple Juice',
      price: 10),
  FoodModel(
      image: 'assets/images/Juices/LemonJuice.jpg',
      name: 'Lemon Juice',
      price: 10),
  FoodModel(
      image: 'assets/images/Juices/MangoJuice.jpg',
      name: 'Mango Juice',
      price: 10),
  FoodModel(
      image: 'assets/images/Juices/StrJuice.jpg',
      name: 'Strawberry juice',
      price: 10),
  FoodModel(
      image: 'assets/images/Juices/orange juice.jpg',
      name: 'Orange Juice',
      price: 10),
  FoodModel(
      image: 'assets/images/Juices/pepsi can.jpg',
      name: 'Pepsi Can',
      price: 10),
  FoodModel(
      image: 'assets/images/Juices/pineapple juice.jpg',
      name: 'Pineapple Jice',
      price: 10),
  FoodModel(
      image: 'assets/images/Juices/Pomegranate juice.jpg',
      name: 'Pomegranate Juice',
      price: 10),
  FoodModel(
      image: 'assets/images/Juices/schweppes can.jpg',
      name: 'Schweppes Can',
      price: 10),
  FoodModel(
      image: 'assets/images/Juices/Mineral water.jpg',
      name: 'Mineral Water',
      price: 10),
];

List<FoodModel> snacksModel = [
  FoodModel(
      image: 'assets/images/snacks/biscuit.jpg', name: 'Biscuit', price: 10),
  FoodModel(
      image: 'assets/images/snacks/cheesePies.jpg',
      name: 'Cheese Bies',
      price: 12),
  FoodModel(image: 'assets/images/snacks/Chipsy.jpg', name: 'Chipsy', price: 9),
  FoodModel(
      image: 'assets/images/snacks/poatoSnack.jpg',
      name: 'Poato Snack',
      price: 17),
  FoodModel(
      image: 'assets/images/snacks/chocolate.jpg',
      name: 'Chocolate',
      price: 10),
  FoodModel(
      image: 'assets/images/snacks/cokickes.jpg', name: 'Cokickes', price: 12),
  FoodModel(image: 'assets/images/snacks/Crisps.jpg', name: 'Crisps', price: 9),
  FoodModel(
      image: 'assets/images/snacks/dorites.jpg', name: 'Corites', price: 7),
  FoodModel(
      image: 'assets/images/snacks/fruits.jpg', name: 'Fruits', price: 11),
  FoodModel(image: 'assets/images/snacks/oreo.jpg', name: 'Oreo', price: 8),
];

List<FoodModel> dessertsModel = [
  FoodModel(image: 'assets/images/desserts/cack.jpg', name: 'Cack', price: 20),
  FoodModel(
      image: 'assets/images/desserts/suiteCookies.jpg',
      name: 'Sweet Cookies',
      price: 15),
  FoodModel(
      image: 'assets/images/desserts/sweets.jpg', name: 'Sweets', price: 7),
  FoodModel(image: 'assets/images/desserts/Tart.jpg', name: 'Tart', price: 11),
  FoodModel(
      image: 'assets/images/desserts/cheese cake.jpg',
      name: 'Cheese Cake',
      price: 10),
  FoodModel(
      image: 'assets/images/desserts/ice cream.jpg',
      name: 'Ice Cream',
      price: 7),
  FoodModel(
      image: 'assets/images/desserts/Kunafa.jpg', name: 'Kunafa', price: 9),
  FoodModel(
      image: 'assets/images/desserts/Pudding.jpg', name: 'Pudding', price: 11),
  FoodModel(
      image: 'assets/images/desserts/sweet cookies.jpg',
      name: 'Sweet Cookies',
      price: 13),
  FoodModel(
      image: 'assets/images/desserts/sweet fruits.jpg',
      name: 'Sweet Fruits',
      price: 11),
];

List<FoodModel> likesfoodModel = [];
List<FoodModel> cartfoodModel = [];
List<FoodModel> searchModel =
    foodsModel + drinksModel + snacksModel + dessertsModel;
