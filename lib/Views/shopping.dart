import 'package:flutter/material.dart';
import 'package:flutter_shoppingapp/Model/Product.dart';
import 'package:flutter_shoppingapp/Views/Itemlist.dart';


class Shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("My Shopping App",style: TextStyle(color: Colors.black),)),
          backgroundColor: Colors.white,
          actions: [

            IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.black,), onPressed: (){}),
          ],
          elevation: 0,
        ),
        body: Container(
          child: Column(
            children: [

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    itemCount: product.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: .75
                      ),

                      itemBuilder: (content,index){

                        return Items(product: product[index],);
                      }

                      ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
