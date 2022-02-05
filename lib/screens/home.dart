import 'package:e_xchange/data/home_data.dart';
import 'package:e_xchange/models/SingleProductModel.dart';
import 'package:e_xchange/widgets/singleProduct_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController? _textEditingController = TextEditingController();
  List<SingleProductModel> ProductsDataOnSearch = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            backgroundColor: Colors.black,
            title: Text('E-xchange',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                )),
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left:20, top:0, right:20),
                child: Center(
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.white,
                    child: Center(
                      child: TextFormField(

                        style: TextStyle(
                          fontSize: 20,
                        ),

                        onChanged: (value) {
                          setState(() {
                            ProductsDataOnSearch = ProductsData.where((element) => element.productName.toLowerCase().contains(value.toLowerCase())).toList();
                            print(ProductsDataOnSearch);

                          });
                        },
                        controller: _textEditingController,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color:Colors.amber)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color:Colors.amber)
                            ),

                            hintText: 'Search for product',
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.camera_alt)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            ),
          ),

          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                child: Center(
                  child: ListView.builder(
                    itemCount:_textEditingController!.text.isNotEmpty ? ProductsDataOnSearch.length: ProductsData.length,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var data = _textEditingController!.text.isNotEmpty ? ProductsDataOnSearch[index] : ProductsData[index];
                      return SingleProductWidget(
                        productImage: data.productImage,
                        productName: data.productName,
                        productPrice: data.productPrice,
                        onPressed: () {},
                      );
                    },
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}