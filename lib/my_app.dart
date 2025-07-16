import 'package:e_commerce/cubit/cubit.dart';
import 'package:e_commerce/features/view/screens/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<Cubit1>(
      create: (context) => Cubit1()..getData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
