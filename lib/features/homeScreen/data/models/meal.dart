import 'package:resto/features/homeScreen/data/models/categories.dart';
import 'package:resto/features/homeScreen/data/models/restaurant.dart';

class MealModel {
  final String name;
  final String image;
  final double price;
  final double priceAfterDiscount;
  final RestaurantModel resturant;
  const MealModel({
    this.name = '',
    this.image = '',
    this.resturant = const RestaurantModel(),
    this.price = 0.0,
    this.priceAfterDiscount = 0.0,
  });
}
