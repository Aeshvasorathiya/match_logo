import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:match_logo/data.dart';
import 'package:match_logo/logo3.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    double Status_bar = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[Colors.black, Colors.blue]),
          ),
        ),
        title: Text("LEVEL 1"),
        centerTitle: true,
        actions: [Image(image: AssetImage("myassets/img/n_bulb_hints.png"))],
      ),
      body: SafeArea(
        minimum: EdgeInsets.only(top: 10),
        child: Container(
          margin: EdgeInsets.all(20),
          child: GridView.builder(
            itemCount: data.img.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 30, mainAxisSpacing: 30),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Home(data.img,index,);
                    },
                  ));
                },
                child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("${data.img[index]}"),
                          fit: BoxFit.fill),
                    )),
              );
            },
          ),
        ),
      ),
    );
  }
}
