import 'package:flutter/material.dart';
import 'package:project1/model/item_home.dart';
import 'package:project1/widgets/grid_item.dart';
import 'package:project1/widgets/icon_widget.dart';
import 'package:project1/widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}


class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child:IconWidget(icon:Icons.keyboard_arrow_left ,color: Colors.black,size: 28,),
                    ),
                    IconWidget(icon:Icons.filter_list ,color: Colors.black,size: 28,),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),

              TextWidget(text:'Fruits and berries',color: Colors.black,fontSize: 36,fontWeight: FontWeight.bold,),

              SizedBox(
                height: 16,
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 16,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.all(20),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 24,right: 16),
                    child:IconWidget(icon:Icons.search ,color: Colors.black,size: 28,),
                  ),
                ),
              ),

              SizedBox(height: 16,),

              Expanded(
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 1/1.5,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: getProductsList().map((product)=> GridItem(product)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
