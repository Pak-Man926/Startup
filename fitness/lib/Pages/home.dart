import 'package:fitness/Models/category_model.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget 
{
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List <CategoryModel> categories = [];

  void _getCategories()
  {
    categories = CategoryModel.getCategory();
  }

  // @override
  // void initSate()
  // {
  //   _getCategories();
  // }

  @override
  Widget build(BuildContext context) 
  {
    _getCategories();

    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: _categoriesMethod()
    );
  }

  Column _categoriesMethod() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _searchField(),
        SizedBox(height: 40),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Category",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                ),
            ),
            SizedBox(height: 20),
            Container(
              height: 120,
              child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20, right: 20),
                separatorBuilder: (context, index) => SizedBox(width: 25),
                itemBuilder: (Context, index)
                {
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: categories[index].boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(categories[index].image),
                          ),
                        ),
                        Text(categories[index].name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                      )
                  ); 
                }
              )
            ),
              
          ]
        ),
      ],
    );
  }

  Column _searchField() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top:40, left: 20, right: 20),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0
                )
              ]
             ),
          child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(15),
            hintText: "Search for recipes",
            hintStyle: TextStyle(
              color: Color(0xffDDDADA),
              fontSize: 14,
            ),
            prefixIcon: Icon(Icons.search),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 0.1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            )
          )
        )
        )
      ],
      );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: Text("Breakfast",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {

        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset("assets/icons/left-arrow-svgrepo-com.svg",
            height: 20,
            width: 20,
          )
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            
          },
          child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 37,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset("assets/icons/three-dots-svgrepo-com.svg",
            height: 30,
            width: 30,
          )
                  ),
        )
      ],
    );
  }
}