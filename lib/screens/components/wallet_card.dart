import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermanagebalance/screens/components/add_amount.dart';
import 'package:fluttermanagebalance/screens/components/custom_raised_button.dart';
import 'package:fluttermanagebalance/screens/components/deduct_amount.dart';

class WalletCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showBottomSheet(context: context,
            builder: (context){
          return Container(
            height: MediaQuery.of(context).size.height*0.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white,
              border: Border.all(color: Colors.blue, width: 4)
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    AddAmount(),
                    DeductAmount()

                  ],
                ),
                SizedBox(height: 10,),
                Expanded(
                  flex: 1,
                  child: ListView(
                    children: <Widget>[
                      Material(
                        elevation: 5,
                        child: ListTile(
                          leading: Icon(Icons.attach_money),
                          title: Text("Balance Deducted"),
                          trailing: Text("+ 100.00"),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        child: ListTile(
                          leading: Icon(Icons.attach_money),
                          title: Text("Balance Deducted"),
                          trailing: Text("- 100.00"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
            });
      },
      child: Container(
        margin: EdgeInsets.all(20),
        width: double.infinity,
        height: 200,
        child: Material(
          borderRadius: BorderRadius.circular(20),
          shadowColor: Colors.greenAccent[200],
          color: Colors.green[400],
          elevation: 10,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.account_balance_wallet,color: Colors.white,size: 35,),
                  SizedBox(width: 10,),
                  Text("Wallet Balance:", style:Theme.of(context).textTheme.headline5,),
                ],
              ),
              SizedBox(height: 5,),
              Text("Updated On: "+DateTime.now().toString(), style: TextStyle(color: Colors.white), ),
              Padding(
                padding:EdgeInsets.all(10.0),
                child: Text("300.00",  style: Theme.of(context).textTheme.headline2,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}