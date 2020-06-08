import 'package:flutter/material.dart';

class PuzzlesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PuzzlesPageState();
  }
}

class _PuzzlesPageState extends State<PuzzlesPage> {
  Color _blue = Color.fromRGBO(89, 110, 237, 1);

  static TextStyle _style(Color color, double size, {isBold: false}) {
    return TextStyle(
      color: color,
      fontFamily: 'Poppins',
      fontSize: size,
      fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
    );
  }

  // ----------------- USING ----------------------

  Widget _gameSmallContainer() {
    return Container(
      height: 30,
      width: 110,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.pink[300],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Text('Game.com', style: _style(Colors.white, 14, isBold: true)),
    );
  }

  Widget _lightCard(
      int levelNo, int noPuzzles, int noStars, IconData icon, Color iconColor) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 12),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 15),
            blurRadius: 20,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 20),
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400], width: .6),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Icon(icon, size: 35, color: iconColor),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Level ' + levelNo.toString(),
                          style: _style(Colors.black, 18, isBold: true)),
                      Text(noPuzzles.toString() + ' puzzles',
                          style: _style(Colors.grey[400], 14)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 70,
            height: 40,
            padding: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              color: Colors.orange[50],
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.star, color: Colors.deepOrange, size: 18),
                Text(noStars.toString(),
                    style: _style(Colors.deepOrange, 14, isBold: true)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _gameSmallContainer(),
                  Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Icon(Icons.person, color: Colors.black)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20),
              child: Text('01', style: _style(Colors.deepOrange, 16)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 20),
                        child: Text('Puzzles',
                            style: _style(Colors.black, 32, isBold: true)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 10),
                        child: Text('Very interesting game',
                            style: _style(Colors.grey[400], 14)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text('for developing your brain',
                            style: _style(Colors.grey[400], 14)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  width: 100,
                  height: 100,
                  child: Image.asset('images/letter_p.png'),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20),
              child: Text('Your progress',
                  style: _style(Colors.black, 18, isBold: true)),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20),
              width: 200,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.lightBlue[50],
              ),
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 190, end: 100),
                duration: Duration(seconds: 1),
                builder: (_, marginLength, __) => Container(
                  margin: EdgeInsets.only(right: marginLength),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 60),
              child:
                  Text('Levels', style: _style(Colors.black, 18, isBold: true)),
            ),
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  SizedBox(height: 20),
                  _lightCard(1, 4, 10, Icons.done, Colors.blue),
                  _lightCard(2, 6, 20, Icons.done, Colors.blue),
                  _lightCard(3, 8, 30, Icons.clear, Colors.deepOrange),
                  _lightCard(4, 10, 40, Icons.clear, Colors.deepOrange),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
