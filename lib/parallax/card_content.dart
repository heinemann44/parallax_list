import 'package:flutter/material.dart';
import 'package:parallax_app/parallax/entities/animal.dart';

class CardContent extends StatelessWidget {
  final Animal animal;
  final double offset;

  const CardContent({
    Key key,
    @required this.animal,
    this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          this._buildNameText(),
          SizedBox(height: 8),
          this._buildAgeText(),
          SizedBox(height: 8),
          this._buildWeightText(),
          SizedBox(height: 8),
          this._buildLiveInText(),
          Spacer(),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              this._buildButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNameText() {
    return Transform.translate(
      offset: Offset(8 * this.offset, 0),
      child: Text(
        this.animal.name,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget _buildAgeText() {
    return Transform.translate(
      offset: Offset(16 * this.offset, 0),
      child: Text(
        "Age: ${this.animal.maxAge}",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget _buildWeightText() {
    return Transform.translate(
      offset: Offset(24 * this.offset, 0),
      child: Text(
        "Weight: ${this.animal.weight}",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget _buildLiveInText() {
    return Transform.translate(
      offset: Offset(32 * this.offset, 0),
      child: Text(
        "Live in: ${this.animal.livingPlace}",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  Widget _buildButton() {
    return Transform.translate(
      offset: Offset(48 * this.offset, 0),
      child: RaisedButton(
        color: Color(0xFF162A49),
        child: Text('Do something'),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        onPressed: () {},
      ),
    );
  }
}
