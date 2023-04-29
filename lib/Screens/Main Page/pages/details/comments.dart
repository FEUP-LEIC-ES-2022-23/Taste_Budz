import 'package:flutter/material.dart';

class CommentSection extends StatefulWidget {
  @override
  _CommentSectionState createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  List<String> _comments = [
    "Wow, this is amazing!",
    "I love this product!",
    "This is exactly what I was looking for.",
    "I had a great experience using this.",
    "Highly recommend this to everyone.",
    "Can't wait to use this again!",
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: _comments.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(_comments[index]),
              );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Add a comment",
                  ),
                  onSubmitted: (value) {
                    setState(() {
                      _comments.add(value);
                    });
                  },
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  // Add the comment to the list
                  setState(() {
                    _comments.add("New Comment");
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
