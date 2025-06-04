import 'package:e_commerce/features/view/widgets/card_list.dart';
import 'package:e_commerce/features/view/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products"), centerTitle: true),
      body: GridView.builder(
        padding: EdgeInsets.all(10),

        itemCount: cardList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return CustomCardWidget(productModel: cardList[index]);
        },
      ),
    );
  }
}
