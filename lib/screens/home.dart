import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermanagebalance/constants.dart';

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
      floatingActionButton: FloatingAddWallet(
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class FloatingAddWallet extends StatelessWidget {
  FloatingAddWallet({this.onPressed});
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: () {
          showBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(20)

                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration:
                                kInputBox.copyWith(labelText: "Wallet Name"),
                            onChanged: (value){
                              print(value);
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: kInputBox,
                              onChanged: (value){
                                print(value);
                              }
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RaisedButton(
                            padding: EdgeInsets.all(20),
                            color: Colors.green,
                            onPressed: () {},
                            child: Text(
                              "Add Wallet",
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            elevation: 10,
                            onLongPress: onPressed,
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
