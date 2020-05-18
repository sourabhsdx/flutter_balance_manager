import 'package:flutter/material.dart';
import 'package:fluttermanagebalance/screens/components/custom_raised_button.dart';

class DeductAmount extends StatefulWidget {
  @override
  _DeductAmountState createState() => _DeductAmountState();
}

class _DeductAmountState extends State<DeductAmount> {
  @override
  Widget build(BuildContext context) {
    return CustomRaisedButton(text: 'Deduct Amount',color:Colors.red,onPressed: (){
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
                Text('Deduct Amount', style: TextStyle(color: Colors.red,fontSize: 30),),
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
                  color: Colors.red,
                  padding: EdgeInsets.all(16),
                  child: Text("Deduct Amount", style: TextStyle(color: Colors.white,fontSize: 20),),
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
