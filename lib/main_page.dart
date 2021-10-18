import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

List<Widget> slide = [
  ListView(
    children: [
      Column(
        children: [
          Container(
            child: Image.asset("assets/lu_img12.jpg"),
          ),
          Row(
            children: [
              Expanded(flex:4,child: Container()),
              Expanded(
                flex:2,
                child: InkWell(
                  onTap: (){
                    print("pre order");
                  },
                  child: Container(
                    padding: EdgeInsets.only(top:8),
                    width:300,
                    height:55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:Colors.white,
                    ),
                    child: Text('사전예약 하러하기',
                      style: TextStyle(
                        color:Color(0xFFa15c9b),
                        fontSize:27,
                        fontFamily: 'Jalnan',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(flex:4,child: Container()),
            ],
          ),
          SizedBox(height:50),
          Container(
            child: Image.asset("assets/lu_img13.jpg"),
          ),
          SizedBox(width:30),
          Container(
            padding: EdgeInsets.only(top:30,bottom:30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset("assets/logo_W.png",width:150),

                  ],
                ),
                SizedBox(height:15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('대표 | 이도원',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      ),
                    ),
                    SizedBox(height:5),
                    Text('주소 | 인천시 연수구 갯벌로 12 미주홀캠퍼스 별관 B동, 413,414호',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      ),
                    ),
                    SizedBox(height:5),
                    Text('문의 | dgrab0520@gmail.com',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      ),
                    ),
                    SizedBox(height:5),
                    Text('사업자 등록번호 | 110-45-71986',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  ),

];

List<Widget> slide2 = [
  ListView(
    children: [
      Column(
        children: [
          Container(
            child: Image.asset("assets/lu_img10.jpg"),
          ),
          InkWell(
            onTap: (){
              print("pre order");
            },
            child: Container(
              padding: EdgeInsets.only(top:10),
              width:240,
              height:50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Colors.white,
              ),
              child: Text('사전예약 하러하기',
                style: TextStyle(
                  color:Color(0xFFa15c9b),
                  fontSize:22,
                  fontFamily: 'Jalnan',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height:50),
          Container(
            child: Image.asset("assets/lu_img11.jpg"),
          ),
          Container(
            padding: EdgeInsets.only(top:30,bottom:30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset("assets/logo_W.png",width:120),

                  ],
                ),
                SizedBox(height:15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('대표 | 이도원',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      ),
                    ),
                    SizedBox(height:5),
                    Text('주소 | 인천시 연수구 갯벌로 12 미주홀캠퍼스 별관 B동, 413,414호',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      ),
                    ),
                    SizedBox(height:5),
                    Text('문의 | dgrab0520@gmail.com',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      ),
                    ),
                    SizedBox(height:5),
                    Text('사업자 등록번호 | 110-45-71986',
                      style:TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    ],
  ),

];


late Widget top;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  double i = 0;



  @override
  Widget build(BuildContext context) {

    //print(_controller.offset);
    return Scaffold(
      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30,
                      right: MediaQuery.of(context).size.width / 30),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                    ],
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Listener(
                    child: PageView.builder(
                      itemBuilder: (context, index) {
                        if (MediaQuery.of(context).size.width < 1200) {
                          return slide2[index % slide.length];
                        } else {
                          return slide[index % slide.length];
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

