import 'package:flutter/material.dart';

import '../models/product_model.dart';
import 'details.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id:1,
      name: 'Nike Hoodie',
      image: 'https://img01.ztat.net/article/spp-media-p1/f07f18d06c3e4ce7b2176b2a530e09f5/4efc7256fc1a4a558d1f846d339b7c84.jpg?imwidth=762&filter=packshot',
      description: 'Comfortable and stylish hoodie from Nike.',
      price: 149.99,
    ),

    Product(
      id:2,
      name: 'Nike T-Shirt',
      image: 'https://mobile.yoox.com/images/items/12/12456459VO_14_f.jpg?impolicy=crop&width=387&height=490',
      description: 'Casual T-shirt with Nike logo.',
      price: 25.0,
    ),

    Product(
      id:3,
      name: 'Jordan Hoodie',
      image: 'https://img01.ztat.net/article/spp-media-p1/797594a44ba24e049a8e04e07607182e/a62b57003364425dad474c55c7a81834.jpg?imwidth=300&filter=packshot',
      description: 'Comfortable and stylish Jordan hoodie',
      price: 50.0,
    ),

    Product(
      id:4,
      name: 'Jordan T-Shirt',
      image: 'https://cdn.shopify.com/s/files/1/0852/3376/products/c256e92c66316c5521fb1ca6071a6a5d_358x.jpg?v=1706126618',
      description: 'High-quality and stylish Jordan T-Shirt',
      price: 25.0,
    ),

    Product(
      id:5,
      name: 'Flight Hoodie',
      image: 'https://n.nordstrommedia.com/it/81a8eb75-6b64-4f6b-8c54-f6884e013be3.jpeg?h=365&w=240&dpr=2',
      description: 'High-quality retro Jordan Hoodie',
      price: 99.99,
    ),

    Product(
      id:6,
      name: 'Air Jordan Hoodie',
      image: 'https://slimages.macysassets.com/is/image/MCY/products/9/optimized/22932069_fpx.tif?qlt=80,0&resMode=sharp2&op_usm=1.75,0.3,2,0&fmt=jpeg&wid=342&hei=417',
      description: 'Comfortable and stylish Air Jordan hoodie',
      price: 100.0,
    ),

    Product(
      id:7,
      name: 'Nike Jordan',
      image: 'https://dimg.dillards.com/is/image/DillardsZoom/mainProduct/jordan-big-boys-8-20-jordan-fleece-pullover-hoodie/00000000_zi_9b23c4bf-ff0b-469a-82c0-f11343302488.jpg',
      description: 'High-quality retro Nike Jordan EST.1985 ',
      price: 100.0,
    ),



  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Center(
            child: Text(
                'Clothing Store 211187',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),

            )
        ),
      ),
      body: Container(color: Colors.grey,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(product: products[index]),
                  ),
                );
              },
              child: Card(
                child: Column(
                  children: [
                    Image.network(
                        products[index].image,
                        height: 150, fit: BoxFit.cover),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          products[index].name,
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text(
                          '\$${products[index].price.toStringAsFixed(2)}',
                          style: const TextStyle(color: Colors.grey)
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
