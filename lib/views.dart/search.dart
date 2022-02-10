import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchTextEditingController = TextEditingController();

  initiateSearch() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0x54FFFFFF),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: searchTextEditingController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      hintText: "search username...",
                      hintStyle: TextStyle(color: Colors.black54)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  initiateSearch();
                },
                child: SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset("assets/images/search_white.png")),
              )
            ],
          ),
        ),
      ],
    );
  }
}
