import 'package:app_credit_ui/constants/constants.dart';
import 'package:app_credit_ui/widgets/bottom_navigation.dart';
import 'package:app_credit_ui/widgets/header.dart';
import 'package:app_credit_ui/widgets/menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-4.0, 0.0),
                end: Alignment(0.0, 1.5),
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor,
                  kGradientColor1,
                  kGradientColor2,
                  kGradientColor3,
                  kGradientColor4,
                  kGradientColor4,
                ],
                stops: [0.0, 0.3, 0.2, 0.3, 0.63, 0.63, 0.0],
              )
            ),
            child: const Header(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 180.0),
            padding: EdgeInsets.only(top: 40.0),
            decoration: const BoxDecoration(
              color: kBodyColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)
              )
            ),

            child: Column(
              children:  [
                const Text(
                  "AVAILABLE LIMIT",
                  style: TextStyle(fontSize: 14.0),
                ),

                const SizedBox(height: 6.0,),

                const Text(
                  "\$4,25,000",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.1
                  ),
                ),

                SizedBox(height: 30.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "USED LIMIT",
                          style: kSubTitlesStyle,
                        ),
                        SizedBox(height: 6.0,),
                        Text(
                          "\$75,000",
                          style: kNumberTextStyle,
                        ),
                      ],
                    ),

                    Column(
                      children: const [
                        Text(
                          "APPROVED LIMIT",
                          style: kSubTitlesStyle,
                        ),
                        SizedBox(height: 6.0,),
                        Text(
                          "\$5,00,000",
                          style: kNumberTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30.0,),
                ButtonTheme(
                  minWidth: 250.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: (){},
                      child: Text("Get Money",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),),
                      elevation: 0.0,
                      color: Theme.of(context).accentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                    )
                ),
                Menu(),
              ],
            ),
          ),
          BottomNavigation(),
        ],
      ),
    );
  }
}
