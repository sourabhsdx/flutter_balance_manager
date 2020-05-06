import 'package:flutter/material.dart';
import 'package:fluttermanagebalance/screens/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>HomePage() ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: "logoIcon",
                  child: Icon(Icons.account_balance_wallet,size: 100,color: Colors.white,)),
              Text("Balance Manager",style: Theme.of(context).textTheme.headline5,),
              SizedBox(height: 10,),
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
