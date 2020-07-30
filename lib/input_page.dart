import 'package:flutter/material.dart';

// const: Colors to be used
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MainCard(
                      cardColor: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: MainCard(
                      cardColor: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MainCard(
                      cardColor: activeCardColor,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MainCard(
                      cardColor: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: MainCard(
                      cardColor: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 15.0),
              width: double.infinity,
              height: bottomContainerHeight,
              // width: MediaQuery.of(context).size.width,
              child: FlatButton(onPressed: () {}, child: Text('calculate BMI')),
            )
          ],
        ),
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;

  MainCard({@required this.cardColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(15.0),
      child: cardChild,
    );
  }
}
