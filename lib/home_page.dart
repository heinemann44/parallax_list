import 'package:flutter/material.dart';
import 'package:parallax_app/parallax/sliding_cards_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this._buildAppbar(),
      body: this._buildBody(),
    );
  }

  Widget _buildAppbar() {
    return AppBar(
      title: Text("Parallax app"),
      automaticallyImplyLeading: false,
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SlidingCardsView(),
        ],
      ),
    );
  }
}
