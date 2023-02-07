import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key,required this.marketCap,required this.revenue,required this.revenuePercent,required this.ratio,required this.profit,required this.profitPercent,required this.yield}) : super(key: key);

  final double marketCap,revenue,revenuePercent,ratio,profit,profitPercent,yield;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Market Cap",style: TextStyle(color: Color(0xFF5F5F68),fontSize: 16),),
              Text("$marketCap Cr.",style: TextStyle(color: Colors.white,fontSize: 16))
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Revenue",style: TextStyle(color: Color(0xFF5F5F68),fontSize: 16),),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xFF191919)
                    ),
                    child: Text("$revenuePercent%",style: TextStyle(color: Colors.red,fontSize: 11),),
                  ),
                  Text("$revenue Cr.",style: TextStyle(color: Colors.white,fontSize: 16),)
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("P/E Ratio",style: TextStyle(color: Color(0xFF5F5F68),fontSize: 16),),
              Text("$ratio",style: TextStyle(color: Colors.white,fontSize: 16))
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Profit",style: TextStyle(color: Color(0xFF5F5F68),fontSize: 16),),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xFF191919)
                    ),
                    child: Text("$profitPercent%",style: TextStyle(color: Colors.red,fontSize: 11),),
                  ),
                  Text("$profit Cr.",style: TextStyle(color: Colors.white,fontSize: 16))
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Divident Yield",style: TextStyle(color: Color(0xFF5F5F68),fontSize: 16),),
              Text("$yield",style: TextStyle(color: Colors.white,fontSize: 16))
            ],
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}


