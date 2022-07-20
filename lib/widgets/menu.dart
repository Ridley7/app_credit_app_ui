import 'package:app_credit_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 3.0),
            blurRadius: 10.0
          )
        ]
      ),
      child: Column(
        children: const [
          CellButton(title: "Recent Transaction",  subtitle: "Track Transaction & Convert EMI0s", icon: Icons.timelapse,),
          SizedBox(height: 10.0,),
          Divider(color: Colors.grey,),
          SizedBox(height: 10.0,),
          CellButton(title: "Bill Ampunt and Due Date",  subtitle: "Net Billing Cycle & Amount Due Details", icon: Icons.calendar_month,),
          SizedBox(height: 10.0,),
          Divider(color: Colors.grey,),
          SizedBox(height: 10.0,),
          CellButton(title: "Ongoing EMI(s)",  subtitle: "View and Manage your EMI(s)", icon: Icons.wallet,),
        ],
      ),
    );
  }
}

class CellButton extends StatelessWidget {
  const CellButton({
    required this.title,
    required this.subtitle,
    required this.icon,
    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon, color: kIconsColor,
        ),
        const SizedBox(width: 15.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
            style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 4.0,),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 13.0,
                color: Colors.grey
              ),
            ),
          ],
        ),

        const Spacer(),
        const Icon(Icons.arrow_forward_ios, size: 18.0,),
      ],
    );
  }
}
