import 'package:e_commerce/features/models/product_model.dart';
import 'package:e_commerce/features/view/screens/details_screen.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final ProductModel productModel;
  const CustomCardWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => DetailsScreen(productModel: productModel,)),
        );
      },
      child: Card(
        elevation: 30,
        child: Column(
          children: [
            Text(productModel.name),
            Expanded(
              child: Card(
                elevation: 20,
                child: Image.asset(productModel.image),
              ),
            ),
            Text(productModel.description),
            Text("Price ${productModel.price}\$"),
          ],
        ),
      ),
    );
  }
}
