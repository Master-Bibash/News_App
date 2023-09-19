import 'package:flutter/material.dart';
import 'package:news_app_flu/models/news_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.data, {Key? key}) : super(key: key);
  final NewsData data;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.data.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              widget.data.author,
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(height: 20),
            Hero(
              tag: "${widget.data.title}",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  widget.data.urlToImage,
                  errorBuilder: (context, error, stackTrace) {
                    return Placeholder(); // Replace with your error image widget
                  },
                  // You can also use a placeholder image:
                  // placeholder: AssetImage('assets/placeholder.png'),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(widget.data.content),
          ],
        ),
      ),
    );
  }
}
