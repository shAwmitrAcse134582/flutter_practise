import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  mySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  var items=[
    { "img":"https://images.unsplash.com/photo-1624555130581-1d9cca783bc0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXJsfGVufDB8fDB8fHww","title":"shawmitra"},
    { "img":"https://plus.unsplash.com/premium_photo-1678112180202-cd950dbe5a35?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D","title":"Ashik"},
    { "img":"https://images.unsplash.com/photo-1624555130581-1d9cca783bc0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXJsfGVufDB8fDB8fHww","title":"sharif"},
    { "img":"https://plus.unsplash.com/premium_photo-1683865776032-07bf70b0add1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHVybHxlbnwwfHwwfHx8MA%3D%3D","title":"shawmitra"},
    { "img":"https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D0","title":"shawmitra"},
    { "img":"https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D00","title":"shawmitra"},
     { "img":"https://images.unsplash.com/photo-1624555130581-1d9cca783bc0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXJsfGVufDB8fDB8fHww","title":"shawmitra"},
    { "img":"https://plus.unsplash.com/premium_photo-1678112180202-cd950dbe5a35?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D","title":"Ashik"},
    { "img":"https://images.unsplash.com/photo-1624555130581-1d9cca783bc0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8dXJsfGVufDB8fDB8fHww","title":"sharif"},
    { "img":"https://plus.unsplash.com/premium_photo-1683865776032-07bf70b0add1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHVybHxlbnwwfHwwfHx8MA%3D%3D","title":"shawmitra"},
    { "img":"https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D0","title":"shawmitra"},
    { "img":"https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHVybHxlbnwwfHwwfHx8MA%3D%3D00","title":"shawmitra"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inventory App",
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 0,
        // centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                mySnackbar('I am notification', context);
              },
              icon: Icon(Icons.notification_add)),
          IconButton(
              onPressed: () {
                mySnackbar('I am search Button', context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackbar('I am emailField', context);
              },
              icon: Icon(Icons.email))
        ],
        iconTheme: IconThemeData(color: Colors.white), // Change icon color here
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          childAspectRatio: 1.2,
        ),
        itemCount: items.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap:() {
                
            },
            child:Container(
               margin:EdgeInsets.all(2),
               width:double.infinity,
               height:250,
               child: Image.network(items[index]["img"]!,fit:BoxFit.fill),
               
            )
          );
          
        }

        ),
      floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.green,
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label:'contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile'),
        ],
        onTap: (int index){
          if(index==0){
           mySnackbar('I am home menue', context);
          }
           if(index==1){
            mySnackbar('I am contact menue', context);
           }
           if(index==2){
            mySnackbar('I am profile menue', context);
           }
        },
        ),
        drawer:Drawer(
          child: ListView(
               children: [
                DrawerHeader(
                  child:UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.green),
                    accountName: Text("Shawmitra"),
                    accountEmail: Text("shawmitra.cse.bu@gmail.com"),
                    currentAccountPicture: Image.network("assets/my.png"),
                   

                  )
                
                ),
                ListTile(leading:Icon(Icons.home),title:Text('Home'),onTap: (){
                  mySnackbar('Home', context);
                },),
                ListTile(leading:Icon(Icons.contact_emergency),title: Text('contact')),
                ListTile(leading:Icon(Icons.person),title: Text('Profile')),
                ListTile(leading:Icon(Icons.phone),title: Text('Phone'))
                
               ],
          ),
        )
    );
  }
}
