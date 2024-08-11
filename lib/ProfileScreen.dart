import 'package:flutter/material.dart';

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


      body: Center(
        child: Column(children: [



          //Profile Picture
          CircleAvatar(
            radius: 50, // Adjust the radius as needed
            backgroundImage: AssetImage('assets/images/img1.jpg'), // Load the image from assets
          ),

          Text('Hanan Mustafa'),

          Row(children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.logo_dev)),
            Text('Hanan Mustafa'),
          ],),

          Row(children: [
            //Follower Digit
            Text('0'),
            Text(' followers'),
            Text(' . '),
            Text('0'),
            Text(' following'),
          ],),

          ElevatedButton(onPressed: () {}, child: Text('Edit Profile')),


            // TabBar and TabBarView
      DefaultTabController(
        length: 2, // Number of tabs
        child: Column(
          children: [
            TabBar(
              tabs: const [
                Tab(text: 'Created'),
                Tab(text: 'Saved'),
              ],
              labelColor: Colors.black, // Customize label color
              indicatorColor: Colors.black, // Color of the selected tab underline
              indicatorSize: TabBarIndicatorSize.label, // Shrinks the underline to fit the label
              labelPadding: EdgeInsets.symmetric(horizontal: 30), // Reduce space between tabs
              unselectedLabelColor: Colors.grey, // Color of unselected tabs
              // Remove the bottom border of the TabBar
              indicatorWeight: 2.0, // Thickness of the indicator line
              isScrollable: true, // Allows the tabs to adjust based on content
            ),
            Container(
              height: 200, // Adjust the height as needed
              child: const TabBarView(
                children: [
                  // Content for 'Created' tab
                  Center(child: Text('Created content goes here')),
                  // Content for 'Saved' tab
                  Center(child: Text('Saved content goes here')),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),



    );}}