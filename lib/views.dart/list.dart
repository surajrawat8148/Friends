import 'package:flutter/material.dart';
import 'package:friends_app/services/database.dart';
import 'package:friends_app/views.dart/edit.dart';
import 'package:friends_app/views.dart/search.dart';

class List1 extends StatefulWidget {
  List<Friend> userlist;
  int userId;
  List1({Key? key, required this.userlist, required this.userId})
      : super(key: key);

  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) =>
                      EditFriend(userId: widget.userId)));
        },
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Search(),
            ListView.builder(
                shrinkWrap: true,
                itemCount: widget.userlist.length,
                itemBuilder: (context, int index) {
                  return ListTile(
                    title: Text(widget.userlist[index].name),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
