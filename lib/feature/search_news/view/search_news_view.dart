import 'package:flutter/material.dart';
import 'package:news_impl/core/widgets/drawer.dart';

class SearchNewsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search News'),
      ),
      drawer: getAppDrawer(),
      body: Container(),
    );
  }
}
