import 'package:flutter/material.dart';
import 'package:project1/model/item_home.dart';
import 'package:project1/widgets/icon_widget.dart';
import 'text_widget.dart';
import 'package:project1/screens/details_screen.dart';

class GridItem extends StatelessWidget {
  Product product;

  GridItem(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen(product: product)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: product.color,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextWidget(
                text: product.title,
                color: Colors.black,
                fontSize: 16,
                textAlign: TextAlign.left,
                fontWeight: FontWeight.bold,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextWidget(
                    text: '\$' + product.price,
                    color: Colors.black,
                    fontSize: 16,
                    textAlign: TextAlign.left,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  TextWidget(
                      text: product.info,
                      color: Colors.black,
                      textAlign: TextAlign.left,
                      fontSize: 14),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: Image.asset(
                  product.imageUrl,
                ),
              ),
              SizedBox(
                height: 8,
              ),

              Container(
                alignment: Alignment.bottomRight,
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: product.color.withOpacity(1.0),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),
                ),
                child: IconWidget(icon: Icons.add,color: Colors.white,size: 14,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
