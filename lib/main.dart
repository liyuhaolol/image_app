import 'dart:io';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());

  /*if(Platform.isAndroid){
    SystemUiOverlayStyle systemUiOverlayStyle =
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent.withOpacity(1),
      //systemNavigationBarIconBrightness: null,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }*/
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home:
      AnnotatedRegion<SystemUiOverlayStyle>(
        value: defaultM(),
        //defaultT(context),
        child: Scaffold(
          //resizeToAvoidBottomInset: false,
          body: MyContainer2(),
        ),
      ),
      //MyContainer2(),
    );
  }
}

SystemUiOverlayStyle defaultM(){
  var st = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent.withOpacity(0.002),
    systemNavigationBarDividerColor:Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
  );
  return st;
}

SystemUiOverlayStyle defaultT(BuildContext context){
  var st = FlexColorScheme.themedSystemNavigationBar(context,
    opacity: 1,
  systemNavigationBarColor: Colors.deepPurple,
  systemNavigationBarDividerColor: Colors.deepPurple, );
  return st;
}




class MyContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.yellow,
              /*borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg&refer=http%3A%2F%2Fa0.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617868339&t=8fa3b514a079a6e604f4c15dfb9a59c2'),
                fit: BoxFit.cover,
              ),*/
            ),
            /*child: Image.network('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg&refer=http%3A%2F%2Fa0.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617868339&t=8fa3b514a079a6e604f4c15dfb9a59c2',
              //alignment: Alignment.topLeft,
              //color: Colors.blue,
              //colorBlendMode: BlendMode.screen,
              fit: BoxFit.cover,
              //repeat: ImageRepeat.repeatY,
            ),*/
            /*child: ClipOval(
              child: Image.network('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg&refer=http%3A%2F%2Fa0.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617868339&t=8fa3b514a079a6e604f4c15dfb9a59c2',
              width: 100,
              height: 100,
              fit: BoxFit.cover,)
            ),*/
            child: Image.asset('images/abc.jpg',
            fit: BoxFit.cover,
            ),
          ),
      ),
    );
  }
}

class MyContainer2 extends StatelessWidget {
  String version = "R";
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: Stack(children: [
        Container(color: Colors.yellow,),
        Positioned(child: Align(
          alignment: Alignment.center,
          child: Text(version,
          style: TextStyle(
            color: Colors.black,
            fontSize: 100,
          ),),
        ))
      ],),
    );
  }
}

class Test {
  static SystemUiOverlayStyle myWay(
  BuildContext context,){
    final Color background = Theme.of(context).colorScheme.background;

    return SystemUiOverlayStyle(
      systemNavigationBarColor: background.withOpacity(0.01),
    );
  }
}

