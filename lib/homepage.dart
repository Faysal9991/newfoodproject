import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double hight=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(width*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.menu,size: 30,color: Colors.black),
                  Spacer(),
                  Icon(Icons.shopping_cart_outlined,size: 30,color:Colors.grey)
                ],
              ),
              SizedBox(height: hight*0.05,),
              Text
                ("Restaurant Here",style:
              TextStyle(fontStyle: FontStyle.normal,fontSize:width*0.09,color: Colors.black),),
              SizedBox(height: hight* 0.02,),
              Row(
                children: [
                  Text("Top",style: TextStyle(fontSize: width*0.04),),
                  SizedBox(width: width*0.06,),
                  Text("Expensive",style: TextStyle(fontSize: width*0.04),),
                  SizedBox(width: width*0.06,),
                  Text("Midrange",style: TextStyle(fontSize: width*0.04),),
                  SizedBox(width: width*0.06,),
                  Text("Cheap",style: TextStyle(fontSize: width*0.04),)
                ],
              ),
              SizedBox(height: hight* 0.05,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/barger.png")),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                      Padding(
                        padding:  EdgeInsets.only(top: hight*0.01,right: width*0.03),
                        child: Text("BURGER\nPrice\n90tk only",style: TextStyle
                          (fontSize: hight*0.02,fontWeight: FontWeight.bold,),
                        ),
                      ),
                      height: hight*0.35,
                      width: width*0.43,


                    ),
                    SizedBox(width: width*0.04,),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/pizza.png")),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: hight*0.35,
                      width: width*0.43,


                    ),
                    SizedBox(width: width*0.04,),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/rice.png")),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: hight*0.35,
                      width: width*0.43,


                    ),
                    SizedBox(width: width*0.04,),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/nuduls.png")),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: hight*0.35,
                      width: width*0.43,


                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
