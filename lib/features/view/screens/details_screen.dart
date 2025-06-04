import 'package:e_commerce/features/models/product_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final ProductModel productModel;
  const DetailsScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white, title: Text("Details")),
      body: Center(
        child: Column(
          children: [
            Image.asset(productModel.image),
            Text(productModel.name, style: TextStyle(fontSize: 30)),
            Text("Price: ${productModel.price} \$"),
            Text(productModel.description),
          ],
        ),
      ),
    );
  }
}
