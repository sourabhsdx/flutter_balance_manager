import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/wallet_card.dart';

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
                        child: Icon(
                          Icons.account_balance_wallet,
                          size: 50,
                          color: Colors.blue,
                        )),
                    Text(
                      "Hello, Sourabh",
                      style: Theme.of(context).textTheme.headline4,
                    ),
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
      floatingActionButton: FloatingAddWallet(),
    );
  }
}

class FloatingAddWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: (){
          showBottomSheet(context: context,
              builder: (context){
                return Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20)),
                      border: Border.all(color: Colors.green)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 20,),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Wallet Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              fillColor: Colors.green,
                              focusColor: Colors.green,
                              hoverColor: Colors.green
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        backgroundColor: Colors.blue,
        elevation: 10,
        focusElevation: 20,
        splashColor: Colors.white,
        icon: Icon(
          Icons.add,
          color: Colors.white,
          size: 50,
        ),
        label: Text(
          "Add Wallet",
          style: Theme.of(context).textTheme.headline5,
        ));
  }
}

