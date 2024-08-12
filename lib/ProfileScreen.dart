import 'package:flutter/material.dart';
import 'package:flutterpinterestclone/CreatedSection.dart';
import 'package:flutterpinterestclone/SavedScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.title});
  final String title;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.share, color: Colors.black,)),
        ],
      ),
      body: Column(
        children: [
          // Profile Picture and Info
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/img1.jpg'),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text('Hanan Mustafa', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png', height: 18.0, width: 18.0),
                SizedBox(width: 3.0),
                Text('HananMustafa'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('0 followers'),
                Text(' . '),
                Text('0 following'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 236, 236, 236),
            ),
            child: Text('Edit Profile'),
          ),
          // TabBar and TabBarView
          Expanded(
            child: DefaultTabController(
              length: 2, // Number of tabs
              child: Column(
                children: [
                  SizedBox(
                    width: 300, // Adjust the width as needed
                    child: TabBar(
                      tabs: const [
                        Tab(text: 'Created'),
                        Tab(text: 'Saved'),
                      ],
                      labelColor: Colors.black,
                      indicatorColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelPadding: EdgeInsets.symmetric(horizontal: 30),
                      unselectedLabelColor: Colors.grey,
                      indicatorWeight: 2.0,
                      isScrollable: true,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        CreatedSection(),
                        SavedScreen(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
