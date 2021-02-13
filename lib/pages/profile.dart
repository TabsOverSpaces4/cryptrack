import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.height;
    final deviceHorizontal = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: ListView(children: [
          Stack(
            children: [
              Container(
                  height: deviceWidth * .3,
                  width: double.infinity,
                  color: Colors.pinkAccent[700],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: deviceWidth * .08),
                        height: deviceWidth * .14,
                        width: deviceWidth * .14,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("lib/assets/images/avatar.png"),)
                            ),
                            
                      ),
                      SizedBox(height: deviceWidth * .01),
                      Text(
                        "Harsh Gupta",
                        style: TextStyle(
                            fontSize: deviceWidth / 32, color: Colors.white),
                      ),
                    ],
                  )),

            ]),
            SizedBox(height: 40.0,),
            Center(
              child: Text(
                'Current Ethereum Price',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                '1,804.90 USD',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Text(
                'Current Circulating Supply',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                '114,626,525 ETH',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Text(
                'VALUATION',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'Down by 11.86%',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Text(
                'Market Cap',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                '205,501,089,039 USD',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Text(
                'Current BTC',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                '0.03782 BTC',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 50.0),
            FloatingActionButton(
        backgroundColor: Colors.pinkAccent[700],
        onPressed: () { 
          Navigator.pushNamed(context, '/info');
         },
        child: Icon(Icons.info_outline)
            )
        ]
      ),)
      
    
    );
    
  }
}