import 'package:flutter/material.dart';
import 'package:e_xchange/screens/product_details.dart';

class SingleProductWidget extends StatefulWidget {
  final String productImage;
  final String productName;
  final int productPrice;
  final Function onPressed;
  SingleProductWidget({
    
      this.productImage='',
      this.productName='',
      this.productPrice=0,
      required this.onPressed,
    
  });

  @override
  State<SingleProductWidget> createState() => _SingleProductWidgetState();
}

class _SingleProductWidgetState extends State<SingleProductWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width *0.6;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductInfo(productName: widget.productName)),
          );
      },
      child: Card(
        color: Colors.black,
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              child: Image.asset(widget.productImage),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.productName,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.amber,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: width,
                    child: Text(
                      "\$ ${widget.productPrice}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}