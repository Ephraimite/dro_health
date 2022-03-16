import 'package:dro_health/colors.dart';
import 'package:dro_health/components/product_cards.dart';
import 'package:dro_health/model/product_model.dart';
import 'package:dro_health/viewmodels/cart_viewmodel';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '25 items',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorLightGrey,
                    ),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.sort)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorLightGrey,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_alt_outlined)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorLightGrey,
                    ),
                    child:
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  ),
                ],
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.5),
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(
                    productName:
                        ProductModel.listOfProducts[index].productName!,
                    imageUrl: ProductModel.listOfProducts[index].imageUrl!,
                    price: ProductModel.listOfProducts[index].price!,
                    productID:  ProductModel.listOfProducts[index].productID!,
                    description:  ProductModel.listOfProducts[index].description!,
                    constituent:  ProductModel.listOfProducts[index].constituent!,
                    packSized:  ProductModel.listOfProducts[index].packSized!,
                    quantity:  ProductModel.listOfProducts[index].cartItemQuantity,
                    soldBy:  ProductModel.listOfProducts[index].soldBy!,

                  );
                },
                itemCount: ProductModel.listOfProducts.length,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: colorPurple,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Text(
                  'Bag',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const Spacer(),
              Container(
                height: 5,
                width: 60,
                decoration: BoxDecoration(
                  color: colorLightGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorLightGrey,
                ),
                child: InkWell(
                    onTap: () {},
                    child: const Text(
                      '3',
                      style: TextStyle(fontSize: 14),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
