import 'package:resto/generated/resources.dart';

import '../features/homeScreen/data/models/categories.dart';
import '../features/homeScreen/data/models/meal.dart';
import '../features/homeScreen/data/models/restaurant.dart';
import 'locale_keys.dart';

class DummyData {
  static final carouselCards = [
    R.ASSETS_IMAGES_CAROUSEL_IMAGE_PNG,
    R.ASSETS_IMAGES_CAROUSEL_IMAGE_PNG,
    R.ASSETS_IMAGES_CAROUSEL_IMAGE_PNG
  ];
  static const categories = [
    CategoryModel(
        image: R.ASSETS_IMAGES_FAST_ORDER_CAT_PNG, name: LocaleKeys.fastOrder),
    CategoryModel(
        image: R.ASSETS_IMAGES_REST_CAT_PNG, name: LocaleKeys.resturants),
    CategoryModel(
        image: R.ASSETS_IMAGES_GROCERY_CAT_PNG, name: LocaleKeys.groceries),
  ];
  static const lastOrders = [
    CategoryModel(
        image: R.ASSETS_IMAGES_HENDY_PNG,
        name: "مطعم هندي",
        subtitle: "وجبة العائلة"),
    CategoryModel(
        image: R.ASSETS_IMAGES_SAREE_PNG,
        name: "طلب سريع",
        subtitle: "وجبة السلام"),
  ];

  static const meals = [
      MealModel(
      name: "برجر، فرايد تشيكن",
      image: R.ASSETS_IMAGES_COOK_DOOR_PNG,
      resturant: RestaurantModel(
        rate: 4.5,
        deliveryTime: 45,
        deliveryFees: 15,
        image: R.ASSETS_IMAGES_COOK_DOOR_PNG,
        name: "كوك دور",
      ),
    ),
      MealModel(
      name: "برجر، فرايد تشيكن",
      image: R.ASSETS_IMAGES_COOK_DOOR_PNG,
      resturant: RestaurantModel(
        rate: 4.5,
        deliveryTime: 45,
        deliveryFees: 15,
        image: R.ASSETS_IMAGES_COOK_DOOR_PNG,
        name: "كوك دور",
      ),
    ),
      MealModel(
      name: "برجر، فرايد تشيكن",
      image: R.ASSETS_IMAGES_COOK_DOOR_PNG,
      resturant: RestaurantModel(
        rate: 4.5,
        deliveryTime: 45,
        deliveryFees: 15,
        image: R.ASSETS_IMAGES_COOK_DOOR_PNG,
        name: "كوك دور",
      ),
    ),
  ];
}
