import 'package:e_commerce/cubit/cubit.dart';
import 'package:e_commerce/cubit/cubit_state.dart';
import 'package:e_commerce/features/view/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Cubit1, ParentState>(
      builder: (context, state) {
      if (state is LoadState) {
        Center(child: CircularProgressIndicator());
      }   if (state is SuccessState) {
          return Scaffold(
            appBar: AppBar(title: Text("Products"), centerTitle: true),
            body: GridView.builder(
              padding: EdgeInsets.all(10),
    
              itemCount: state.products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return CustomCardWidget(productModel: state.products[index]);
              },
            ),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
