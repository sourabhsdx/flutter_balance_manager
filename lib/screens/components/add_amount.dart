import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttermanagebalance/screens/components/custom_raised_button.dart';

class AddAmount extends StatefulWidget {
  @override
  _AddAmountState createState() => _AddAmountState();
}

class _AddAmountState extends State<AddAmount> {
  @override
  Widget build(BuildContext context) {
    return CustomRaisedButton(text: 'Add Amount',onPressed: (){
      showModalBottomSheet(context: context, builder: (context){
        return Container(
          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Add Amount', style: Theme.of(context).textTheme.headline4,),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Puropose",
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    labelText: "Amount",
                  ),
                ),
                SizedBox(height: 16,),
                RaisedButton(
                  color: Colors.blue,
                  padding: EdgeInsets.all(16),
                  child: Text("Add Amount", style: TextStyle(color: Colors.white,fontSize: 20),),
                  onPressed: ()=>Navigator.of(context).pop(),
                )
              ],
            ),
          ),
        );
      },shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      )
      );
    },);
  }
}
