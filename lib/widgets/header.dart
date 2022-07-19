import 'package:app_credit_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 70.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      "24",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white
                      ),
                    ),

                    Text(
                      "Apr",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    color: kCardName,
                    borderRadius: BorderRadius.circular(50.0)
                  ),

                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage("assets/images/44.jpg"),
                        ),
                      ),
                      SizedBox(width: 10.0,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Ashley Denver",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                            ),
                          ),

                          Text(
                            "821 - 1212 - 1212",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 27,
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
