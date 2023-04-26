import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/apis/all_products_api.dart';
import 'package:store_app/components/custom_stack.dart';
import 'package:store_app/models/product_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  static String id = 'LoginPage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void UpdateUi(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Trend Store',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.cartShopping,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0, right: 10.0, left: 10.0,),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsApi().getAllProducts(),
          builder: (context, snapshot){
            if (snapshot.hasData){
              List<ProductModel> products =snapshot.data!;
              return GridView.builder(
                itemCount: products.length,
                clipBehavior: Clip.none,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 25,
                ),
                itemBuilder: (context, index){
                  return CustomStack(product: products[index],);
                },
              );
            }else{
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
        )
    );
  }
}
