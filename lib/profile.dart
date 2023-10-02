import 'package:cryptoapp/bottom.dart';
import 'package:cryptoapp/homepage.dart';
import 'package:flutter/material.dart';
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Container(height: 60,
          width: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade700,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(2, 0)
              )
            ],
              color: Colors.deepPurple,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30))
          ),
            child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom()));},
                child: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
          ),


          SizedBox(height: 100,),


          Center(
            child: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade700,
                    blurRadius: 20,
                    spreadRadius: 1
                  )
                ],
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                   Padding(
                     padding: const EdgeInsets.only(left: 8,right: 8),
                     child: Text("Description: ",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                   ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Text('This Application is for Live Price Tracking for Crypto Currency. Here ,Price Automatically gets updated after 10 to 15 seconds.',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Text('The API which I have used to track the Data is of Coincap which is free for all.',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18),),
                  ),
                  Expanded(child: SizedBox(height: 10)),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Text('Contact Detail:',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  SizedBox(height: 3),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Mail: nkps9680@gmil.com',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                        Text('Mobile No.: 9680984670',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,),)
                      ],
                    ),
                  ),
                  SizedBox(height: 15)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
