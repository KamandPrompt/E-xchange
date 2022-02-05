import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 110, 0, 0),
                  child: Text(
                    'Add product',
                    style: TextStyle(
                      color: Colors.amber,
                      letterSpacing: 2.0,
                      fontSize: 40.0,
                      fontFamily: 'Rancho',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 80, right: 20),
            child: Column(children: <Widget>[
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color:Colors.amber)
                    ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color:Colors.amber)
                  ),
                    labelText: 'Name',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
              SizedBox(height: 14),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color:Colors.amber)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color:Colors.amber)
                    ),
                    labelText: 'Product Description',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),
              SizedBox(height: 14),
              TextFormField(
                style: TextStyle(color: Colors.white),
                 keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color:Colors.amber)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color:Colors.amber)
                    ),
                    labelText: 'Enter Price',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ),

            ]),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(left: 30, top: 100, right: 20, bottom: 30),
            child: Row(

              children: <Widget>[

                SizedBox(width: 0),
                Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.amber,
                    fontFamily: 'Rancho',
                    letterSpacing: 2.0,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(width: 225),
                Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.blue,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.amber,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                 ),
              ],
            ),
          )
        ],
      ),
      ),
    );
  }
}