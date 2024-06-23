
import 'package:flutter/material.dart';
void main() {
  runApp( MaterialApp(home: MainApp(),debugShowCheckedModeBanner: false,));
}
class MainApp extends StatefulWidget {
   MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}
class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar:AppBar(
          title:Text("Mandob"),
         backgroundColor: Colors.greenAccent,
        ),
        
        body: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://media-exp1.licdn.com/dms/image/C4D0BAQFUa_SZSVEViQ/company-logo_200_200/0?e=2159024400&v=beta&t=5Kx5JrFtFUz7HORPy4unJXQawAKrkUQT63v0gu2Ea_c"),
              Container(
                color: Colors.greenAccent,
                width: 200,
                height: 40,
                child: Center(child: Text("Mandob", 
                style: TextStyle(fontSize: 30),
                ))),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  ElevatedButton(
                     child:
                      Text("Restaurant"),
                      style: ElevatedButton.styleFrom(
    backgroundColor: Colors.greenAccent,),
                  onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
                  },
                  ),
                ElevatedButton(
                     child:
                      Text("Shop"),
                      style: ElevatedButton.styleFrom(
    backgroundColor: Colors.greenAccent,),
                  onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>jClothes ()));
                  }, 
                ),
                
                    ElevatedButton(
                     child:
                      Text("fkowers"),
                      style: ElevatedButton.styleFrom(
    backgroundColor: Colors.greenAccent,),
                  onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>fkowers ()));
                  })
               ],
              ),
             ],
            ),
           ),
         );
       }
    }
// ignore: must_be_immutable
class homepage extends StatelessWidget {
   homepage({super.key});
  var stores = [
    Stores(name: "chick in", type: "fast food"),
    Stores(name:"KFC" , type:"Healthy food", ),
    Stores(name: "Mc donalds", type:"fast food", ),
    Stores(name: "Hardees", type: "Healthy food",),
    Stores(name: "burger king", type:"food",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: stores.length,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text(stores[index].name),
            subtitle: Text(stores[index].type),
            trailing: IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => foodstore()));
            },),
          );
        }),
      ),
    );
  }
}
class Stores {
  String name;
  String type;
  Stores({required this.name, required this.type});
}
class foodstore extends StatelessWidget {
   foodstore({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [
          Image.network("https://5aen.net/wp-content/uploads/2019/09/3814-1.jpg%22"),
          Image.network("https://th.bing.com/th/id/OIP.PMqJKU_LQaXI8ptn3AzwqgHaGq?pid=ImgDet&rs=1"),
      ]),
      );
  }
}
// ignore: must_be_immutable
class jClothes  extends StatelessWidget {
  jClothes ({super.key});
  var stores = [
    Stores(name: "jclothes", type: "clothes"),
    Stores(name:"dear and dear", type:"clothes" ),
    Stores(name: "H&M", type: "clothes",),
    Stores(name: "Nike", type: "shose",),
    Stores(name: "jordin", type: "clothes",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: stores.length,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text(stores[index].name),
            subtitle: Text(stores[index].type),
            trailing: IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Clothes()));
            },),
          );
        }),
      ),
    );
  }
}
class Clothes extends StatelessWidget {
   Clothes({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [
          Image.network("https://dfcdn.defacto.com.tr/7/W6146AZ_22SP_BK27_07_01.jpg"),
          Image.network("https://dfcdn.defacto.com.tr/7/U7706A6_21WN_NV64_01_01.jpg"),
      ]),
      );
  }
}
  var stores = [
    Stores(name: "jClothes", type: "Clothes"),
  ];
  @override
  Widget building(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: stores.length,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text(stores[index].name),
            subtitle: Text(stores[index].type),
            trailing: IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){ },),
          );
        }),
      ),
    );
  }
  // ignore: must_be_immutable
  class fkowers  extends StatelessWidget {
  fkowers ({super.key});
  var stores = [
    Stores(name: "Nos store", type: "fkowers"),
    Stores(name:"lavander fkowers ", type:"fkowers",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: stores.length,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text(stores[index].name),
            subtitle: Text(stores[index].type),
            trailing: IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>fkowerss ()));
            },),
          );
        }),
      ),
    );
  }
}
class fkowerss extends StatelessWidget {
 fkowerss  ({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children: [
          Image.network("https://th.bing.com/th/id/R.98ed57a98b01faee50dd41ea46ccdba2?rik=tumIwBeeycuPFQ&pid=ImgRaw&r=0"),
          Image.network("https://img4cdn.haraj.com.sa/userfiles30/2021-09-30/650x650-1_-GO__MTYzMzAwNjEyMTgxNzE3NzkxMDU2MA.jpg"),
      ]),
      );
  }
}