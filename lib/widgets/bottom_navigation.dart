import 'package:app_credit_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _currenTab = 1;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
        right: 0.0,
        bottom: 0.0,
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -3.0),
                blurRadius: 10.0
              )
            ]
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0)
            ),
            child: BottomNavigationBar(
              currentIndex: _currenTab,
              onTap: (int value){
                setState((){
                  _currenTab = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: const Icon(
                      Icons.wallet,
                      size: 23.0,
                        color: kIconsColor,
                    ),
                  label: "",
                  activeIcon: _activeIcon(Icons.wallet)
                ),

                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.home,
                    size: 23.0,
                    color: kIconsColor,
                  ),
                  label: "",
                  activeIcon: _activeIcon(Icons.home)
                ),

                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.add,
                    size: 23.0,
                    color: kIconsColor,
                  ),
                  label: "",
                  activeIcon: _activeIcon(Icons.add)
                ),
              ],
            ),
          ),
        )
    );
  }

  _activeIcon(IconData icon){
    return Container(
      width: 100.0,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(color: Theme.of(context).accentColor, shape: BoxShape.circle),
      child: Icon(icon, size: 30.0, color: Colors.white,),
    );
  }

}
