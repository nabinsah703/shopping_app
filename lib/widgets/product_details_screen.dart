import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {

  final String title;
  final double price;
  final String image;
  final String description;

  ProductDetailsScreen(this.title, this.price, this.image, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffF6F6F6),
          child: Column(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  child: Image.network(
                    this.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                        Chip(
                          label: Text(
                            "Price: " + "₦" + this.price.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                    const SizedBox(height: 15),
                    Text(
                      "" + this.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff403B58),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}