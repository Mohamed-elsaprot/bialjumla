import 'package:flutter/material.dart';

class FavIcon extends StatelessWidget {
  const FavIcon({Key? key , this.iconSize=22}) : super(key: key);
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){},
        child: Icon(false? Icons.favorite : Icons.favorite_border,size: iconSize,color: Colors.black45,)
    );
  }
}
