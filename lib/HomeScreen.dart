import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {



@override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 30,
        title: Container(
          alignment: Alignment.center,
          child: Column(
            children: [

            Text('All', style: TextStyle(fontSize: 15, color: Colors.black),),
            Container(
              width: 20,
              height: 2,
              color: Colors.black,
            ),
          ],)
        ),
        ),









        body: SingleChildScrollView(
        
        child: Column(
          children: [


            // Component3 (bottom area)
            Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                          icon: const Icon(
                            Icons.add,
                            size: 40,
                            color: Color.fromRGBO(54, 54, 54, 1),
                          ),
                          onPressed: () {},
                        ),
                IconButton(
                  icon: const Icon(Icons.sms),
                  onPressed: () {},
                ),


                
              ],
            ),),
          ],
        ),
      ),
    );
  }
}