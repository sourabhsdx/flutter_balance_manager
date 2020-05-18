import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {


  CustomRaisedButton({this.text='Click Me',this.color=Colors.green,@required this.onPressed});
  final String text;
  final Color color;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      elevation: 10,
      padding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      color: color,
      child: Text(text,style: Theme.of(context).textTheme.headline5,),
    );
  }
}
