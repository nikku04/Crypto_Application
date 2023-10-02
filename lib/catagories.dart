import 'package:flutter/material.dart';
class Catagories extends StatefulWidget {
  const Catagories({super.key});

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  List<String> catg =["OVERVIEW","HOLDING","REWARDS"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catg.length,
          itemBuilder: (context,index)=> buildCatagory(index)),
    );
  }

  Widget buildCatagory(int index) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 35),
    child: GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Text(catg[index],style:
          TextStyle(fontWeight: FontWeight.bold,color: selectedIndex == index ? Colors.deepPurple : Colors.deepPurple.shade100),),
          Container(
            margin: EdgeInsets.only(top: 4),
            height: 4,
            width: 50,
            color: selectedIndex == index ? Colors.deepPurple : Colors.transparent,
          )
        ],
      ),
    ),
  );
}
