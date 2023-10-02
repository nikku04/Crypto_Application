import 'package:cryptoapp/assets.dart';
import 'package:cryptoapp/exchange.dart';
import 'package:cryptoapp/homepage.dart';
import 'package:cryptoapp/profile.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(bottom());

}

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  @override
  int _currentindex =0;
  final tabs =[
    Home(),
    Exchange(),
    Assets()
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentindex,
          selectedIconTheme: IconThemeData(size: 32),
          fixedColor: Colors.white,
          iconSize: 25,
          backgroundColor: Colors.deepPurple,
          unselectedItemColor: Colors.white.withOpacity(0.4),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.currency_exchange),label: 'exchange'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),label: 'assets'),
          ],
          onTap: (index){
            setState(() {
              _currentindex = index;
            });
          }
          ),
      ),
    );
  }
}

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        leading: Builder(builder: (context)=>IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.person,color: Colors.white,size: 35,)),),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: ListView(
          children: [
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>profile())); },
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
            SizedBox(height: 12),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text('SETTING',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.currency_exchange,color: Colors.white,),
              title: Text('CURRENCY EXCHANGE',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.person_add_alt_1,color: Colors.white,),
              title: Text('INVITE',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.messenger,color: Colors.white,),
              title: Text('ABOUT',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.help_outline_sharp,color: Colors.white,),
              title: Text('HELP',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.phone,color: Colors.white,),
              title: Text('CONTACT US',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined,color: Colors.white,),
              title: Text('LOGOUT',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
