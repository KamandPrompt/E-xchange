import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  String productName = '';
  ProductInfo({required this.productName});

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: TextButton(
            child: const Icon(Icons.arrow_back),
            style: TextButton.styleFrom(
              primary: Colors.amber,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(productName),
          titleTextStyle: TextStyle(color: Colors.amber, fontSize: 20),
        ),
        body: Center(
          child: ListView(children: [
            Container(
              color: Colors.deepPurple,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 400,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
                itemCount: 5,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Center(
                  child: Text("image " + itemIndex.toString()),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting "
                "industry. Lorem Ipsum has been the industry's standard dummy text "
                "ever since the 1500s, when an unknown printer took a galley of type "
                "and scrambled it to make a type specimen book. It has survived not "
                "only five centuries, but also the leap into electronic typesetting"
                ", remaining essentially unchanged. It was popularised in the 1960s "
                "with the release of Letraset sheets containing Lorem Ipsum passages,"
                " and more recently with desktop publishing software like Aldus"
                " PageMaker including versions of Lorem Ipsum ",
                style: TextStyle(
                  color: Colors.amber,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Posted by : Mahendra Aanjna",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(
              Icons.add_call,
              color: Colors.amber,
            ),

            // price tag
            Row(
              children: <Widget>[
                // the login button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    minWidth: 150.0,
                    height: 40,
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    // defining the shape
                    color: Color(0xff0095FF),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),

                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                // add to wishlist button

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 40,
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                    },
                    color: Color(0xff0095FF),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Add to Wishlist",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
