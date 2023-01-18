import 'package:cupertino_product_app/modals/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchComponent extends StatefulWidget {
  const SearchComponent({Key? key}) : super(key: key);

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(children: [
        SizedBox(height: 45,),
        Container(
            height: 50,
            width: 400,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    blurRadius: 3,
                    color: Colors.black38,
                    offset: Offset(2, 3)),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: CupertinoTextField(placeholder: '  Search any products',placeholderStyle: TextStyle(color: Colors.grey),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              )
              // InputDecoration(
              //     enabled: true,
              //     filled: true,
              //     suffixIcon: Icon(
              //       Icons.mic_none,
              //       size: 28,
              //       color: Colors.grey.shade700,
              //     ),
              //     focusedBorder: InputBorder.none,
              //     prefixIcon: Icon(
              //       Icons.menu,
              //       color: Colors.grey.shade700,
              //       size: 28,
              //     ),
              //     hintText: 'Search for apps and games',
              //     border: InputBorder.none,
              //     hintStyle: TextStyle(
              //         color: Colors.grey, fontSize: 17)),
            ),),

        Column(
          children:
          Globals.ProductsSearch.map(
                  (e) => Column(
                children: [
                  SizedBox(height: 10,),
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
                            Text(
                              e['price'],
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
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

        ),
      ],),
    );
  }
}
