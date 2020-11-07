import 'package:flutter/material.dart';
import 'package:parallax_app/parallax/card_content.dart';
import 'dart:math';

import 'package:parallax_app/parallax/entities/animal.dart';

class SlidingCard extends StatelessWidget {
  final Animal animal;
  final double offset;

  const SlidingCard({
    Key key,
    this.animal,
    this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = this._calculateGaussianFunction();

    return Transform.translate(
      offset: Offset( -32 * gauss * this.offset.sign, 0 ),
      child: Card(
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        elevation: 8,
        child: Column(
          children: [
            this._buildImage(context),
            SizedBox(height: 8.0),
            Expanded(
              child: CardContent(
                animal: this.animal,
                offset: gauss,
              ),
            ),
          ],
        ),
      ),
    );
  }

  double _calculateGaussianFunction(){
    return exp(-(pow((offset.abs() - 0.5), 2) / 0.08));
  }

  Widget _buildImage(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      child: Image.asset(
        "assets/${this.animal.image}",
        height: MediaQuery.of(context).size.height * 0.3,
        width: double.infinity,
        alignment: Alignment(-this.offset.abs(), 0),
        fit: BoxFit.none,
      ),
    );
  }
}
