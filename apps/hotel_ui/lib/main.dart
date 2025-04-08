import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Explore'),
        centerTitle: true,
        actions: [
          Icon(
            Icons.favorite_border,
          ),
          Icon(
            Icons.location_on,
          ),
        ]
        ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 6,
                  child: Container(
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'London',
                        style: TextStyle(fontSize: 25)
                        ),
                    )
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 35
                    )
                  ),
                )
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 6,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(color: Colors.red)
                        )
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Choose date',
                              style: TextStyle(fontSize: 20)
                              ),
                          )
                        ),
                        Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              '12 Dec - 22 Dec',
                              style: TextStyle(fontSize: 25)
                              ),
                          )
                        ),                    
                      ]
                    ),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              'Number of Rooms',
                              style: TextStyle(fontSize: 20)
                              ),
                          )
                        ),
                        Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              '1 Room - 2 Adults',
                              style: TextStyle(fontSize: 25)
                              ),
                          )
                        ),                    
                      ]
                    ),
                  ),
                ),
              ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text('530 hotels found')
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Text('Filters ')
                    ),
                    Icon(
                      Icons.sort,
                    )
                ],)
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Column(children: [
                  Container(
                    child: Image.asset('assets/hotel/hotel_1.png'),
                    width: 594,
                    height: 300,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                    Container(
                      child: Column(children: [
                        Row(children: [ 
                          Container(child: Text('Grand Royal Hotel'))
                        ],),
                        Row(children: [
                          Column(children: [
                            Container(child: Text('Wembly, London ')),
                            Container(child: Icon(Icons.location_on)),
                            Container(child: Text(' 2 km to city'))
                          ],)
                        ],),
                        Row(children: [
                          Container(child: Icon(Icons.star)),
                          Container(child: Icon(Icons.star)),
                          Container(child: Icon(Icons.star)),
                          Container(child: Icon(Icons.star)),
                          Container(child: Icon(Icons.star)),
                          Container(child: Text('80 Reviews'))
                        ],),
                      ],),
                    ),
                    Container(
                      child: Column(children: [
                        Row(children: [
                          Container(child: Text('\$180')),
                          
                        ],),
                        Row(children: [
                          Container(child: Text('/per night')),
                        ],)
                      
                      ],),
                    ),
               
                    ],
                  ),
                ],)
              ),
            ],
          )
        ]
      ),
    )

    );
  }
}





