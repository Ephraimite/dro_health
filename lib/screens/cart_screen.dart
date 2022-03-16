import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorDarkPurple,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(),
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Bag',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Spacer(),
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
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: colorLightGrey,
                ),
                child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'tap on the item for add, remove, delete options',
                      style: TextStyle(fontSize: 14),
                    )),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Row(
                      children: const [
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: Colors.grey,
                        ),
                        Text(
                          'x1',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text('Vitamin E 400 capsule',
                            style: TextStyle(color: Colors.white)),
                        Text('Vitamin E 400 capsule',
                            style: TextStyle(color: Colors.white)),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
