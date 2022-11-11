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
      image: "https://swingit.in/uploads/ecom/media-1608711152155.jpg",
    ),
    ProductModel(
        title: "Fresh Golden Pineapple",
        price: "\$1.52 each",
        image:
            "https://images-cdn.ubuy.co.in/10NZNCXA-fresh-golden-pineapple.jpg",
        color: Colors.yellow),
    ProductModel(
        title: "Fresho Blueberry",
        //  descrption : "1lb",
        price: "\$4.07",
        image:
            "https://www.bigbasket.com/media/uploads/p/l/30009286_7-fresho-blueberry.jpg"),
    ProductModel(
        title: "Dargon fruit",
        //   descrption : "Averge 0.87 lb",
        price: "\$5.36",
        image:
            "https://www.farmersfz.com/assets/public/vegimg/dragon_fruit1.jpg"),
    ProductModel(
        title: "Lychee",
        // descrption : "1 lb",
        price: "\$8.22  per lib",
        image:
            "https://rukminim1.flixcart.com/image/416/416/xif0q/plant-seed/z/u/4/20-cf-4-20-litchi-caribbean-original-imaghs4vhfzwk594.jpeg?q=70"),
    ProductModel(
        title: "Mango",
        price: "\$1.01 each",
        image:
            "https://rukminim1.flixcart.com/image/416/416/kt8zb0w0/fruit/g/n/h/500-1-un-branded-whole-original-imag6mrzbkenbdfa.jpeg?q=70")
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
                  mainAxisExtent: 450,
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
