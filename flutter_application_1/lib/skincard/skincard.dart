import 'package:flutter/material.dart';

class skinCard extends StatelessWidget {
  const skinCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),),
        child: Row(
          children: [
            Text('สิว'),
          ],
        ),
      ),
    );
  }
}
