import 'package:flutter/material.dart';
import 'package:parallax_app/parallax/entities/mock_animal.dart';
import 'package:parallax_app/parallax/sliding_card.dart';

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;
  double pageOffset;

  @override
  void initState() {
    super.initState();
    this._buildPageController();
    this.pageOffset = 0;
  }

  void _buildPageController() {
    this.pageController = PageController(
      viewportFraction: 0.8,
    );

    this.pageController.addListener(() {
      setState(() => this.pageOffset = this.pageController.page);
    });
  }

  @override
  void dispose() {
    this.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: PageView(
        controller: this.pageController,
        children: this._buildSlidingCardsList(),
      ),
    );
  }

  List<Widget> _buildSlidingCardsList() {
    List<Widget> items = List();

    for (int index = 0; index < MockAnimal().validList().length; index++) {
      items.add(SlidingCard(
        animal: MockAnimal().validList()[index],
        offset: this.pageOffset - index,
      ));
    }

    return items;
  }
}
