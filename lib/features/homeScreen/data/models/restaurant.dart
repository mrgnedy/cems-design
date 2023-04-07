class RestaurantModel {
  final String name;
  final String image;
  final int deliveryTime;
  final double deliveryFees;
  final double rate;

  const RestaurantModel({
    this.name = '',
    this.image = '',
    this.deliveryTime = 0,
    this.deliveryFees = 0.0,
    this.rate = 0.0,
  });
}
