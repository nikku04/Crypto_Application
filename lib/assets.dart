import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'catagories.dart';
class Assets extends StatelessWidget {
  const Assets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Catagories(),
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10,left: 10),
                  child: Text('Total Balance :',style: TextStyle(color:Colors.white, fontSize: 25 ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 5),
                  child: Text('\$ 1022.11',style:
                  TextStyle(fontSize: 40,color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 5),
                  child: Row(
                    children: [
                      Text('≈ ₹ 81,768.82',style: TextStyle(fontSize: 17,color: Colors.white),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 5),
                  child: Row(
                    children: [
                      Text('+ 35%',style: TextStyle(fontSize: 17,color: Colors.green),),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 185,
                        height: 40,
                        child: ElevatedButton(onPressed: (){}, child: Text('BUY'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green)),
                      ),
                      Container(
                        width: 185,
                        height: 40,
                        child: ElevatedButton(onPressed: (){}, child: Text('DEPOSIT'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                      ),

                    ],
                  ),
                )
              ],
            ),
            ),
          
        ],
      ),
    );
  }
}


