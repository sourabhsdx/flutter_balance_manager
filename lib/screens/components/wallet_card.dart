import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showBottomSheet(context: context,
            builder: (context){
          return Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
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