import 'dart:developer';

import 'package:cupertino_product_app/modals/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductComponent extends StatefulWidget {
  const ProductComponent({Key? key}) : super(key: key);

  @override
  State<ProductComponent> createState() => _ProductComponentState();
}

class _ProductComponentState extends State<ProductComponent> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  ' Cupertino Store',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 38,
                      fontWeight: FontWeight.bold),
                ),
                Divider(
                  color: Colors.grey.shade300,
                  thickness: 1,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              height: height * 0.8,
              width: width * 1,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    ...Products.map(
                      (e) => Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: height * 0.11,
                                width: width * 0.23,
                                child: Image(
                                  image: AssetImage(
                                    e['image'],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: height * 0.1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${e['name']}',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Text('\$',style: TextStyle(color: Colors.grey),),
                                        Text(
                                          '${e['price']}',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    sum =sum + int.parse(e['price'],);
                                    CartProducts.add(e);
                                  });
                                  log('$CartProducts');
                                },
                                child: CircleAvatar(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 13,
                                    child: Icon(CupertinoIcons.add),
                                  ),
                                  radius: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            color: Colors.grey.shade300,
                            thickness: 2,
                            indent: 100,
                          ),
                        ],
                      ),
                    ).toList(),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
