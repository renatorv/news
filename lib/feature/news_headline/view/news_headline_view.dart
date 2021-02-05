import 'package:flutter/material.dart';
import 'package:news_impl/core/widgets/drawer.dart';

class NewsHeadlineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News HeadLine'),
      ),
      drawer: getAppDrawer(),
      body: Container(),
    );
  }
}
