import 'package:flutter/material.dart';

class TileBox extends StatelessWidget {
  final Function()? onPressed;

  final IconData iconD;

   TileBox({
    required this.onPressed,
     required this.iconD

});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200]
        ),
        child:
            Icon(iconD,size: 50,)
      ),
    );
  }
}
