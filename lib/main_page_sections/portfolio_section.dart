import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:on_finance/app_colors.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            HighlightBox(),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Your Portfolio Exposure",style: TextStyle(color: Color(0xFFF8B545)),),
                        Text("\u{20B9}14,69,073",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 0.5,
                    color: AppColors.PRIMARY_COLOR_LIGHT,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            const Text("INVESTED",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),),
                            const SizedBox(height: 10,),
                            Row(
                              children: const [
                                Text("\u{20B9}",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),),
                                Text("6480",style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("QUANTITY",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),),
                            SizedBox(height: 10,),
                            Text("1.5",style: TextStyle(color: Colors.white,fontSize: 12),)
                          ],
                        ),
                        Column(
                          children: [
                            Text("BROKER",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),),
                            SizedBox(height: 10,),
                            Icon(Icons.arrow_circle_up_outlined,color: Colors.white,)
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Dropdown(),
                ],
              ),
            ),
          ],
        )
    );
  }
}

class HighlightBox extends StatelessWidget {
  const HighlightBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 188,
        width: 130,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFF8B545)
        ),
      ),
    );
  }
}

class Dropdown extends StatelessWidget {
  const Dropdown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(  // <-- Provides ExpandableController to its children
      child: Column(
        children: [
          Expandable(           // <-- Driven by ExpandableController from ExpandableNotifier
            collapsed: ExpandableButton(  // <-- Expands when tapped on the cover photo
              child: const Icon(Icons.keyboard_arrow_down,color: AppColors.PRIMARY_COLOR_LIGHT,),
            ),
            expanded: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Divider(
                        thickness: 0.5,
                        color: AppColors.PRIMARY_COLOR_LIGHT,
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Flexible(child: Text("64%",style: TextStyle(fontSize: 30,color: Color(0xFFF8B545)),)),
                          Flexible(child: Text(" Buy rating",style: TextStyle(fontSize: 15,color: Color(0xFFF8B545))))
                        ],
                      ),
                      SizedBox(height: 15,),
                      const Divider(
                        thickness: 0.5,
                        color: AppColors.PRIMARY_COLOR_LIGHT,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Top Bulls",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),),
                                Text("Historical Accuracy",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/hdfc_logo.jpg'),
                                      radius: 10,
                                    ),
                                    SizedBox(width: 5,),
                                    Text("HDFC Asset Mngt. Co",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                Text("86%",style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/solar_logo.jpg'),
                                      radius: 10,
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Solar Industries",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                Text("96%",style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Text("Top Bears",style: TextStyle(color: AppColors.PRIMARY_COLOR_LIGHT,fontSize: 12),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/us_logo.jpg'),
                                      radius: 10,
                                    ),
                                    SizedBox(width: 5,),
                                    Text("United Spirits",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                Text("86%",style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    CircleAvatar(
                                      foregroundImage: AssetImage('assets/images/home_first_logo.png'),
                                      radius: 10,
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Home First Finance",style: TextStyle(color: Colors.white,fontSize: 12),)
                                  ],
                                ),
                                Text("92%",style: TextStyle(color: Colors.white,fontSize: 12),)
                              ],
                            ),
                            // SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ExpandableButton(       // <-- Collapses when tapped on
                      child:const Icon(Icons.keyboard_arrow_up,color: AppColors.PRIMARY_COLOR_LIGHT,)),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
