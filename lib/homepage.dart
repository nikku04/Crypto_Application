import 'package:cryptoapp/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math';

import 'Counterprovider.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 38,
        centerTitle: true,
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            isDense: true,
            hintText: '@coin',
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40)
            )
          ),
        ),
        leading: Builder(builder: (context)=>IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.person,color: Colors.white,size: 35,)),),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(Icons.star,size: 35,),
        )
      ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: ListView(
          children: [
            InkWell(
              child: Column(
                children: [
                   Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                          image: AssetImage('assets/images/user4.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  SizedBox(height: 4),
                  Center(child: Text('USER1212',
                    style: TextStyle(color:Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize:17 ),))
                ],
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.settings,color: Colors.white,),
                title: Text('SETTING',style: TextStyle(color: Colors.white),),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.currency_exchange,color: Colors.white,),
                title: Text('CONVERT',style: TextStyle(color: Colors.white),),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.person_add_alt_1,color: Colors.white,),
                title: Text('INVITE',style: TextStyle(color: Colors.white),),
              ),
            ),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));},
              child: ListTile(
                leading: Icon(Icons.messenger,color: Colors.white,),
                title: Text('ABOUT',style: TextStyle(color: Colors.white),),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.help_outline_sharp,color: Colors.white,),
                title: Text('HELP',style: TextStyle(color: Colors.white),),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.phone,color: Colors.white,),
                title: Text('CONTACT US',style: TextStyle(color: Colors.white),),
              ),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.logout_outlined,color: Colors.white,),
                title: Text('LOGOUT',style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Row(
                children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height:20),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text('Total Assets:',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('\$ 1022.11',style:
                                    TextStyle(fontSize: 37),),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: ElevatedButton(onPressed: (){},
                                    child: Text('Deposit',style: TextStyle(fontSize: 17),),
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple,),),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Row(
                                children: [
                                  Text('≈ ₹ 81,768.82',style: TextStyle(fontSize: 17),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Text('+ 35% ',style: TextStyle(color: Colors.green, fontSize: 17),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                ],
            ),

            ChangeNotifierProvider<CounterProvider>(
                create: (context)=>CounterProvider(),
                child: Consumer<CounterProvider>(
                  builder: (context, provider, child){
                    return Container(
                      height: 548,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22)
                      ),
                      child:SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 15),
                              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('Name',style: TextStyle(color: Colors.grey),),
                                  ),
                                  Expanded(child: SafeArea(child: Text(''))),
                                  Container(width: 80,
                                    child: Text('price',style: TextStyle(color: Colors.grey),),),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Text('change',style: TextStyle(color: Colors.grey),),
                                  )
                                ],
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/bitcoin2.jpeg'),),
                              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Bitcoin',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 70),
                                  Expanded(child: Text('\$${provider.pr1}',maxLines: 1,style: TextStyle(fontSize: 20)))
                                ],
                              ),
                              trailing: ElevatedButton(onPressed: (){},
                                child: Expanded(child: Text('+0.22%')),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                            ),
                            ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/eth.png'),),
                              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Ethereum ',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 80),
                                  Expanded(child: Text('\$${provider.pr2}',maxLines: 1,style: TextStyle(fontSize: 20)))
                                ],
                              ),selectedTileColor: Colors.green,
                              trailing: ElevatedButton(onPressed: (){},
                                child: Text(' -0.18%'),style: ElevatedButton.styleFrom(backgroundColor: Colors.red),),
                            ),
                            ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/bnb.jpg'),),
                              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('BNB',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 80),
                                  Expanded(child: Text('\$${provider.pr4}',maxLines: 1,style: TextStyle(fontSize: 20)))
                                ],
                              ),selectedTileColor: Colors.green,
                              trailing: ElevatedButton(onPressed: (){},
                                child: Text('+0.66%'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                            ),
                            ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/tet.png'),),
                              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Tether',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 120,),
                                  Expanded(child: Text('\$${provider.pr3}',maxLines: 1,style: TextStyle(fontSize: 20)))
                                ],
                              ),selectedTileColor: Colors.green,
                              trailing: ElevatedButton(onPressed: (){},
                                child: Text(' -0.51%'),style: ElevatedButton.styleFrom(backgroundColor: Colors.red),),
                            ),
                            ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/shib.jpg'),),
                              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Shib Inu',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 50),
                                  Expanded(child: Text('\$${provider.pr9}',maxLines: 1,style: TextStyle(fontSize: 20)))
                                ],
                              ),selectedTileColor: Colors.green,
                              trailing: ElevatedButton(onPressed: (){},
                                child: Text('+0.20%'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                            ),
                            ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/ltc.png'),),
                              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Litecoin',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 85),
                                  Expanded(child: Text('\$${provider.pr8}',maxLines: 1,style: TextStyle(fontSize: 20)))
                                ],
                              ),selectedTileColor: Colors.green,
                              trailing: ElevatedButton(onPressed: (){},
                                child: Text('+0.41%'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                            ),
                            ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/xrp.png'),),
                              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('XRP',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 140),
                                  Expanded(child: Text('\$${provider.pr5}',style: TextStyle(fontSize: 20),maxLines: 1,))
                                ],
                              ),selectedTileColor: Colors.green,
                              trailing: ElevatedButton(onPressed: (){},
                                child: Text('+1.02%'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                            ),
                            ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/solana.png'),),
                              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Solana',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 83),
                                  Expanded(child: Text('\$${provider.pr6}',maxLines: 1,style: TextStyle(fontSize: 20)))
                                ],
                              ),selectedTileColor: Colors.green,
                              trailing: ElevatedButton(onPressed: (){},
                                child: Text(' -0.09%'),style: ElevatedButton.styleFrom(backgroundColor: Colors.red),),
                            ),
                            ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/tron.png'),),
                              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Tron',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 80),
                                  Expanded(child: Text('\$${provider.pr7}',maxLines: 1,style: TextStyle(fontSize: 20)))
                                ],
                              ),selectedTileColor: Colors.green,
                              trailing: ElevatedButton(onPressed: (){},
                                child: Text('+0.69%'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                            ),
                            ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage('assets/images/1inch.png'),),
                              title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('${provider.name}',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 95,),
                                  Expanded(child: Text('\$${provider.pr10}',maxLines: 1,style: TextStyle(fontSize: 20)))
                                ],
                              ),selectedTileColor: Colors.green,
                              trailing: ElevatedButton(onPressed: (){},
                                child: Text('+1.84%'),style: ElevatedButton.styleFrom(backgroundColor: Colors.green),),
                            ),
                            InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20,bottom: 15),
                                child: Container(
                                  child: Row( mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('View More ',style: TextStyle(fontSize: 15,color: Colors.deepPurple),),
                                      Icon(Icons.arrow_right,color: Colors.deepPurple,)
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    );

                  },
                )
            ),

          ],
        ),
      )
    );
  }
}



