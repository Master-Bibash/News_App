import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app_flu/components/breaking_news.dart';
import 'package:news_app_flu/components/news_list_tile.dart';
import 'package:news_app_flu/models/news_model.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "NewsApp",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notification_add_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Breaking News",style: TextStyle(fontSize: 26,
            fontWeight: FontWeight.bold,),),
            SizedBox(height: 20,),
            CarouselSlider.builder(
  itemCount: breakingNewsData.length,

            
             itemBuilder: (context,index,id)=>BreakingNewsCard(data: breakingNewsData[index]),
              options: CarouselOptions(aspectRatio: 16/9,enableInfiniteScroll: false,enlargeCenterPage: true)
              ),
              SizedBox(height: 40,),
              Text("Recent News",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 16,
              ),
              Column(
                children: 
                recentNewsData.map((e) => NewsListTile(e)).toList()
                ,
              )
          ],
        ),
        
        
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(12),
        // Set the background color here
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(12), bottom: Radius.circular(12)),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            elevation: 0,
            selectedItemColor: Colors.orange.shade800,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Bookmark',
              
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.rss_feed_outlined),
                label: 'Home',
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.black,
                  icon: Icon(Icons.person),
                  label: "Profile",),
            ],
          ),
        ),
      ),
    );
  }
}
