import 'package:dro_health/colors.dart';
import 'package:dro_health/components/button.dart';
import 'package:dro_health/model/product_model.dart';
import 'package:dro_health/screens/cart_screen.dart';
import 'package:dro_health/viewmodels/product_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductModel productModel;
  ProductDetailsScreen({required this.productModel});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final CartViewModel viewModel = Get.put(CartViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 10, right: 10),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: colorPurple, borderRadius: BorderRadius.circular(5)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    '3',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                widget.productModel.imageUrl!,
                width: double.infinity,
                height: 200,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 150,
                child: Text(
                  widget.productModel.productName!,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: colorGrey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SOLD BY',
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 10),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.productModel.soldBy!,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: colorGrey, width: 1.0)),
                    child: Row(
                      children: const [
                        Icon(Icons.remove),
                        SizedBox(
                          width: 10,
                        ),
                        Text('1'),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Packs(s)'),
                  Spacer(),
                  Text(
                    '₦ ${widget.productModel.price!.toString()}',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              const Text(
                'PRODUCT DETAILS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              // Row(
              //   children: [
              //     Image.network(
              //       'https://cdn-icons.flaticon.com/png/512/4030/premium/4030569.png?token=exp=1647439658~hmac=a7417c792d9feb81622465e637bdb018',
              //       width: 20,
              //       height: 20,
              //       color: colorDarkPurple,
              //     ),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Column(
              //       children: [
              //         Text(
              //           'PACK SIZE',
              //           style: TextStyle(
              //               fontWeight: FontWeight.w500, fontSize: 10),
              //         ),
              //         Text(
              //           productModel.packSized!,
              //           style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               fontSize: 10,
              //               color: Colors.blue),
              //         ),
              //       ],
              //     ),
              //     SizedBox(
              //       width: 40,
              //     ),
              //     Image.network(
              //       'https://cdn-icons-png.flaticon.com/512/3409/3409518.png',
              //       width: 20,
              //       height: 20,
              //       color: colorDarkPurple,
              //     ),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'PRODUCT ID',
              //           style: TextStyle(
              //               fontWeight: FontWeight.w500, fontSize: 10),
              //         ),
              //         Text(
              //           productModel.productID!,
              //           style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               fontSize: 10,
              //               color: Colors.blue),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Image.network(
              //       'https://cdn-icons-png.flaticon.com/512/1617/1617465.png',
              //       width: 20,
              //       height: 20,
              //       color: colorDarkPurple,
              //     ),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           'CONSTITUENTS',
              //           style: TextStyle(
              //               fontWeight: FontWeight.w500, fontSize: 10),
              //         ),
              //         Text(
              //           productModel.constituent!,
              //           style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               fontSize: 10,
              //               color: Colors.blue),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Image.network(
              //       'https://cdn-icons-png.flaticon.com/512/2797/2797814.png',
              //       width: 20,
              //       height: 20,
              //       color: colorDarkPurple,
              //     ),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: const [
              //         Text(
              //           'DISPENSED IN',
              //           style: TextStyle(
              //               fontWeight: FontWeight.w500, fontSize: 10),
              //         ),
              //         Text(
              //           'Packs',
              //           style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               fontSize: 10,
              //               color: Colors.blue),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              SizedBox(height: 40,),
              Center(
                  child: Text(
                '1 pack of ${widget.productModel.constituent!} contains 3 units of 10 tablets',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              )),
              SizedBox(height: 20,),
              Center(child: ReuseableButton(text: 'Add to bag',backgroundColor: colorPurple,textColor: Colors.white,onPressed: (){
                // viewModel.addItem(productModel.productID!, productModel.price!, productModel.productName!, productModel.imageUrl!);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
              },)),
            ],
          ),
        ),
      ),
    );
  }
}
