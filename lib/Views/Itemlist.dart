import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingapp/Model/Product.dart';


class Items extends StatelessWidget {
  
  final Product product;

  const Items({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          
          Expanded(
            child: Container(
              height: 200.0,
              width: 160.0,
              decoration: BoxDecoration(
                color: Color(0XFFe3e3e3),
                borderRadius: BorderRadius.circular(10.0)
              ),
              
              child: Image.network(product.image),
            ),
          ),
          Text(product.name,style: TextStyle(fontWeight: FontWeight.bold),),

          Text("Price : ${product.price}"),
          
          FlatButton(
              color: Colors.amber,
              onPressed: (){}, child: Text("Buy"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.red)
              ),
          
          )
          
          
          
          
        ],
      );
      
      

  }
}
