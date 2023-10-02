import 'package:cryptoapp/homepage.dart';
import 'package:flutter/material.dart';
class Exchange extends StatelessWidget {
  const Exchange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios_rounded,color: Colors.deepPurple,),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(child: Text('EXCHANGE',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),)),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 160,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5,top: 5),
                          child: Container(
                            width: 300,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade300,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('From :',
                                        style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 197,
                                        height: 50,
                                        child:
                                        TextField(
                                          decoration: InputDecoration(
                                              filled: true,
                                              hintText: '@coin...',
                                              fillColor: Colors.white,
                                              isDense: true,
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15)
                                              )
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('To      :',
                                        style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 196,
                                        height: 50,
                                        child:
                                        TextField(
                                          decoration: InputDecoration(
                                              filled: true,
                                              hintText: '@coin...',
                                              fillColor: Colors.white,
                                              isDense: true,
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(15)
                                              )
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            child: TextButton.icon(onPressed: (){},
                                icon: Icon(Icons.currency_exchange,color: Colors.white,size: 35,), label: Text('')),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(child: SizedBox(height: 50)),
            Container(
              padding: EdgeInsets.only(bottom: 8,left: 8,right: 8),
              height: 60,
              width: 400,
              child: ElevatedButton(onPressed: (){}, child: Text('CONVERT'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple
                ) ,),
            ),
          ],
        ),
      ),
    );
  }
}
