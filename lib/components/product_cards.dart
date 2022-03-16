import 'package:dro_health/colors.dart';
import 'package:dro_health/model/product_model.dart';
import 'package:dro_health/screens/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String? description;
  final String? productID;
  final String? constituent;
  final String? soldBy;
  final String? packSized;
  final double price;
  final String productName;
  final String imageUrl;
  final int? quantity;

  ProductCard(
      {this.description,
      this.productID,
      this.constituent,
      this.soldBy,
      this.packSized,
      required this.price,
      required this.productName,
      required this.imageUrl, this.quantity, });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
              productModel: ProductModel(
                productName: productName,
                productID: productID,
                imageUrl: imageUrl,
                price: price,
                packSized: packSized,
                constituent: constituent,
                description: description,
                cartItemQuantity: quantity!,
                soldBy: soldBy
              ),
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(10),
        clipBehavior: Clip.antiAlias,
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fitWidth,
                height: 150,
                width: 200,
              ),
              Text(
                productName,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 7,),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: colorGrey),
                  child: Text(
                    '₦ $price',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
