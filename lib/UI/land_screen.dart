import 'package:flutter/material.dart';

class LandScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child:Container(
                    child: ClipRRect(
                
                borderRadius:BorderRadius.all(Radius.circular(10)) ,
            child: Image.asset('assets/farm.png',
            fit: BoxFit.fill,
            ),
        ),
                  ),
                  ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  flex: 37,
                  child: Container(
                    color: Colors.transparent,
                  )
                  ),
                 Expanded(
                  flex: 63,
                  child:Container(
                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.only(topLeft: Radius.circular(25),topRight:Radius.circular(25),
                      
                      )
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex:15,
                          child: Container(
                          
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child:Row(
                                    
                                    children: [
                                       Container(
              width: 25,
              height: 25,
              margin: EdgeInsets.only(top: 20,right: 20),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: Center(
                child: Image.asset("assets/User.png")
              ),
            ),
SizedBox(width: 10,),
           Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "اسم المزارع",
              style:TextStyle(
                color: Colors.black,
                fontSize: 18
              ),
              )),
                                    ],
                                  )
                                  ),
                                 Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                      
                                      children: [
                                         Container(
                                          
              width: 25,
              height: 25,
              margin: EdgeInsets.only(top: 20,right: 20),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: Center(
                child: Image.asset("assets/marker.png")
              ),
            ),
SizedBox(width: 10,),
           Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "الخرطوم",
              style:TextStyle(
                color: Colors.black,
                fontSize: 18
              ),
              )),
                                      ],
                                    )
                                      ],
                                    ),
                                  ))
                              ],
                            ),
                          )),
                          ////sec 1
                          Expanded(
                          flex:65,
                          child:Column(
                            children: [
                              Row(),
                              SizedBox(height: 10,),
                               Row(),
                              SizedBox(height: 10,),
                              Row(),
                              SizedBox(height: 10,),
                              
                            ],
                          )
                          
                          ),
                         //sec2
                          Expanded(
                          flex:25,
                          child: Container(
                            color: Colors.blue,
                          )),
                          //sec 3
                      ],
                    ),
                  )
                  ),
              ],
            ),
            Container(
              width: 35,
              height: 35,
              margin: EdgeInsets.only(top: 20,right: 20),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: Center(
                child: Image.asset("assets/back_t.png")
              ),
            )

          ],
        )
        
        ),
    );
  }
}