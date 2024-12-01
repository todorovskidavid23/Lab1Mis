class Product {
  final int id;
  final String name;
  final String image;
  final String description;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  Product.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        image= data['image'],
        description=data['description'],
        price=data['data'];


  Map<String, dynamic> toJson() => {'id' : id, 'name' : name, 'image' : image, 'description':description,'price':price};

}