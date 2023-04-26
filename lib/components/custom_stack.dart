import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/modules/updated_screen.dart';

class CustomStack extends StatelessWidget {
   CustomStack({required this.product});
ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: product );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            //height: 120,                العرض والطول ملهومش لازمه الوقتي علشان grid view فيها ratio
            //width: 220,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40.0,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(8.0,8.0),
                )
              ],
            ),
            child: Card(
              elevation: 7,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,  //علشان اخلي الكلام ده ف اخر ال Card
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.title.substring(0,8),style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$' '${product.price.toString()}',style: TextStyle(
                          fontSize: 16.0,
                        ),),
                        IconButton(onPressed: (){}, icon: Icon(
                          //FontAwesomeIcons.heart,     OR
                          Icons.favorite,
                          color: Colors.red,
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right: 25,
              bottom: 90,
              child: Image.network(product.image, height: 90,width: 90,)),
        ],
      ),
    );
  }
}
