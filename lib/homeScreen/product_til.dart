import 'package:flutter/material.dart';
import 'package:friutapp/model/product_model.dart';

class productTil extends StatelessWidget {
  const productTil({Key? key, required this.pro1}) : super(key: key);
  final ProductModel pro1;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Text("${pro1.title}"),
        Text("${pro1.price}"),
        Image.network(
          "${pro1.image}",
          height: 170,
          width: double.infinity,
          fit: BoxFit.cover,
        )
      ],
    ));
  }
}
