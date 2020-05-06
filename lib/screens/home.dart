import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 200,
            leading: Icon(Icons.account_balance_wallet),
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              title: Text("Balance"),
              centerTitle: true,
            ),
            ),
         SliverList(
           delegate: SliverChildListDelegate(
             [
               Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30)
                ),
                 child: ListView(
                   children: <Widget>[
                     Text("Heelo")
                   ],
                 ),
               )

             ]
           ),
         )

        ],
      ),
    );
  }
}
