import 'package:flutter/material.dart';

import '../app_colors.dart';

class IndicatorsDialog extends StatefulWidget {
  const IndicatorsDialog({Key? key}) : super(key: key);

  @override
  State<IndicatorsDialog> createState() => _IndicatorsDialogState();
}

class _IndicatorsDialogState extends State<IndicatorsDialog> {

  bool? maValue = false,maValue2 = false,maValue3 = false,maValue4 = false,maValue5 = false;
  int drop = 1;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showGeneralDialog(
            context: context,
            barrierDismissible: true,
            barrierLabel: MaterialLocalizations.of(context)
                .modalBarrierDismissLabel,
            barrierColor: Colors.black45,
            transitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (BuildContext buildContext,
                Animation animation,
                Animation secondaryAnimation) {
              return StatefulBuilder(
                builder: (context,StateSetter setState){
                  return DefaultTextStyle(
                    style: TextStyle(color: Colors.white,fontSize: 14),
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 400,
                        // height: MediaQuery.of(context).size.height - 80,
                        padding: EdgeInsets.all(0),
                        color: Color(0xFF111115),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Indicators",
                                        style: TextStyle(color: Color(0xFF98B5FF), fontSize: 12),
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: AppColors.PRIMARY_COLOR_LIGHT,
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Icon(
                                              Icons.close_rounded,
                                              color: Colors.white,
                                              size: 15,
                                            )),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 0.5,
                                    color: AppColors.PRIMARY_COLOR_LIGHT,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex:1,
                                        child: Material(
                                          color: Color(0xFF111115),
                                          child: Theme(
                                            data: ThemeData(
                                                primarySwatch: Colors.blue,
                                                unselectedWidgetColor: Color(0xFF4A4A4A),
                                                selectedRowColor: Color(0xFF4A4A4A)
                                            ),
                                            child: Checkbox(
                                              value: maValue,
                                              checkColor: Color(0xFF4A4A4A),
                                              activeColor: Colors.black,
                                              focusColor: Colors.red,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  maValue = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 8,
                                        child: Container(
                                          decoration: BoxDecoration(border: Border.all(color: Color(0xFF4A4A4A),width: 0.25),borderRadius: BorderRadius.all(Radius.circular(4))),
                                          padding: EdgeInsets.only(left: 5,top: 4,bottom: 4),
                                          height: 45,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("MA - Moving Average",style: TextStyle(color: Colors.white,fontSize: 12),),
                                              TextButton(
                                                onPressed:() {
                                                  setState(() {
                                                    drop = 1-drop;
                                                  });
                                                },
                                                child:Icon(drop==1?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up,color: Color(0xFF4A4A4A),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  drop==0?Row(
                                    children: [
                                      Material(
                                        color: Color(0xFF111115),
                                        child: Theme(
                                          data: ThemeData(
                                              primarySwatch: Colors.blue,
                                              unselectedWidgetColor: Color(0xFF4A4A4A),
                                              selectedRowColor: Color(0xFF4A4A4A)
                                          ),
                                          child: Checkbox(
                                            value: maValue2,
                                            checkColor: Color(0xFF4A4A4A),
                                            activeColor: Colors.black,
                                            focusColor: Colors.red,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                maValue2 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Text("10 day",style: TextStyle(fontSize: 11),),
                                      Material(
                                        color: Color(0xFF111115),
                                        child: Theme(
                                          data: ThemeData(
                                              primarySwatch: Colors.blue,
                                              unselectedWidgetColor: Color(0xFF4A4A4A),
                                              selectedRowColor: Color(0xFF4A4A4A)
                                          ),
                                          child: Checkbox(
                                            value: maValue3,
                                            checkColor: Color(0xFF4A4A4A),
                                            activeColor: Colors.black,
                                            focusColor: Colors.red,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                maValue3 = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Text("30 day",style: TextStyle(fontSize: 11),),
                                    ],
                                  ):Container(),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex:1,
                                        child: Material(
                                          color: Color(0xFF111115),
                                          child: Theme(
                                            data: ThemeData(
                                                primarySwatch: Colors.blue,
                                                unselectedWidgetColor: Color(0xFF4A4A4A),
                                                selectedRowColor: Color(0xFF4A4A4A)
                                            ),
                                            child: Checkbox(
                                              value: maValue4,
                                              checkColor: Color(0xFF4A4A4A),
                                              activeColor: Colors.black,
                                              focusColor: Colors.red,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  maValue4 = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 8,
                                        child: Container(
                                          decoration: BoxDecoration(border: Border.all(color: Color(0xFF4A4A4A),width: 0.25),borderRadius: BorderRadius.all(Radius.circular(4))),
                                          padding: EdgeInsets.only(left: 5,top: 4,bottom: 4),
                                          height: 45,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("RSI - Relative Strength Index",style: TextStyle(color: Colors.white,fontSize: 12),),
                                              TextButton(onPressed:() {}, child:Icon(Icons.keyboard_arrow_down,color: Color(0xFF4A4A4A),))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex:1,
                                        child: Material(
                                          color: Color(0xFF111115),
                                          child: Theme(
                                            data: ThemeData(
                                                primarySwatch: Colors.blue,
                                                unselectedWidgetColor: Color(0xFF4A4A4A),
                                                selectedRowColor: Color(0xFF4A4A4A)
                                            ),
                                            child: Checkbox(
                                              value: maValue5,
                                              checkColor: Color(0xFF4A4A4A),
                                              activeColor: Colors.black,
                                              focusColor: Colors.red,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  maValue5 = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 8,
                                        child: Container(
                                          decoration: BoxDecoration(border: Border.all(color: Color(0xFF4A4A4A),width: 0.25),borderRadius: BorderRadius.all(Radius.circular(4))),
                                          padding: EdgeInsets.only(left: 5,top: 4,bottom: 4),
                                          height: 45,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("BOLL - Bollinger Bands",style: TextStyle(color: Colors.white,fontSize: 12),),
                                              TextButton(onPressed:() {}, child:Icon(Icons.keyboard_arrow_down,color: Color(0xFF4A4A4A),))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.all(20)),
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Color(0xFF1D1D24)),
                                    ),
                                    child: Text(
                                      "Reset",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.all(20)),
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.black),
                                    ),
                                    child: Text(
                                      "Apply",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            });
      },
      child: Row(
        children: [
          Icon(
            Icons.line_axis_outlined,
            size: 15,
            color: Colors.white,
          ),
          Text(
            "Indicators",
            style: TextStyle(color: Colors.white, fontSize: 11),
          )
        ],
      ),
    );
  }
}
