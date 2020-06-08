import 'package:flutter/material.dart';
import 'package:game_app_ui/puzzles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  TextStyle _style(Color color, double size, {isBold: false}) {
    return TextStyle(
      color: color,
      fontFamily: 'Poppins',
      fontSize: size,
      fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
    );
  }

  // ----------------- USING -------------------

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

  Widget _text(String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Text(text, style: _style(Colors.black, 32, isBold: true)),
    );
  }

  Widget _mainText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _text('Let\'s'),
        _text('explore'),
        _text('new'),
        _text('horizon'),
        _text('with us'),
      ],
    );
  }

  Widget _nextBtn(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => PuzzlesPage(),
        ));
      },
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.black,
              ),
              child: Text('Next', style: _style(Colors.white, 18)),
              alignment: Alignment.center,
            ),
            Container(
              padding:
                  EdgeInsets.only(left: 20, right: 15, top: 15, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.keyboard_arrow_right,
                      color: Colors.black, size: 30),
                  Icon(Icons.keyboard_arrow_right,
                      color: Colors.grey, size: 30),
                  Icon(Icons.keyboard_arrow_right,
                      color: Colors.grey[400], size: 30),
                  Icon(Icons.keyboard_arrow_right,
                      color: Colors.grey[350], size: 30),
                ],
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
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
            SizedBox(height: 60),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: _gameSmallContainer(),
            ),
            SizedBox(height: 80),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: _mainText(),
                  ),
                  Container(
                    width: 158.0,
                    height: 198.5,
                    child: Image.asset('images/text_1.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: _nextBtn(context),
            ),
          ],
        ),
      ),
    );
  }
}
