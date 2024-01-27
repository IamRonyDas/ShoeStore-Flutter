import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 20,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        //shoe pic
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(shoe.imagePath),
        ),
        //desciption
        Text(
          shoe.description,
          style: TextStyle(color: Colors.grey[600]),
        ),

        //price+detail
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //shoe name
                  Text(
                    shoe.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                  //price
                  Text(
                    '\$' + shoe.price,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              //plus button
              GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: Colors.black),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        )

        //button to add to cart
      ]),
    );
  }
}
