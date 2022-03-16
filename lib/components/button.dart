
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReuseableButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  ReuseableButton(
      {required this.text,
        this.onPressed, this.backgroundColor, this.textColor,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/2,
      height: 50,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(vertical: 5),
              ),
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            onPressed: onPressed,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                  SizedBox(width: 10,),
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500, color: textColor),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
