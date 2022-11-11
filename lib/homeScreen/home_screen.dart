import 'package:flutter/material.dart';
import 'package:friutapp/homeScreen/product_til.dart';
import 'package:friutapp/homeScreen/screen_product.dart';
import 'package:friutapp/model/product_model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductModel> product = [
    ProductModel(
        title: "Strawberry",
        price: "\$2.45",
        image: "assets/images/stob.png",
        color: Color(0xffF7A4A4)),
    ProductModel(
        title: "Fresh Golden Pineapple",
        price: "\$1.52 each",
        image: "assets/images/panple.png",
        color: Colors.yellow),
    ProductModel(
        title: "Fresho Blueberry",
        //  descrption : "1lb",
        price: "\$4.07",
        image: "assets/images/grape.png",
        color: Color(0xffFEBE8C)),
    ProductModel(
        title: "Dargon fruit",
        //   descrption : "Averge 0.87 lb",
        price: "\$5.36",
        image: "assets/images/dragenpng.png",
        color: Color(0xffFFFBC1)),
    ProductModel(
        title: "Lychee",
        // descrption : "1 lb",
        price: "\$8.22  per lib",
        image: "assets/images/lac.png"),
    ProductModel(
        title: "Mango",
        price: "\$1.01 each",
        image: "assets/images/mang.png",
        color: Color(0xff557153))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Fruits and berries",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: "Search"),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  mainAxisExtent: 300,
                  childAspectRatio: 0.05),
              itemCount: product.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductScreen(
                          p2: product[index],
                        ),
                      )),
                  child: productTil(
                    pro1: product[index],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
