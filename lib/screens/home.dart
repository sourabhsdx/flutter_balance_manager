import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Hero(
                      tag: "logoIcon",
                        child: Icon(Icons.account_balance_wallet, size: 50,color: Colors.blue,)),
                    Text("Hello, Sourabh", style: Theme.of(context).textTheme.headline4,),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView(
                  children: <Widget>[
                    WalletCard(),

                  ],
                ),
              )

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){},
          backgroundColor: Colors.blue,
          elevation: 10,
         focusElevation: 20,
          splashColor: Colors.white,
          icon: Icon(Icons.add,color: Colors.white, size: 50,),
          label: Text("Add Wallet", style: Theme.of(context).textTheme.headline5,)
    ),

    );
  }
}

class WalletCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 200,
      child: Card(
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
    );
  }
}
