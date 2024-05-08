import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/2.png', height: 30, width: 30),
                SizedBox(width: 5),
                Text('LEADS',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF121168))), // Removed the Center widget
                SizedBox(width: 60), // Adjust as needed for spacing
              ],
            ),
          ),
          actions: [
            Icon(Icons.menu),
            SizedBox(width: 20),
          ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                TabBar(
                    labelPadding: EdgeInsets.all(10),
                    tabs: [Text('Call leads'), Text('Form Leads')]),
                Expanded(
                  child: TabBarView(children: [
                    Container(
                      child: ListView.builder(
                        itemCount: 6,
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.green, width: 2.5)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade300,
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                      blurStyle: BlurStyle.normal,
                                      offset: Offset(0, 0))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 130,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons.play_circle_fill,
                                              size: 32,
                                              color: Colors.grey,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                '79xxxxxxxx',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                            ),
                                            Icon(
                                              Icons.call_missed,
                                              size: 20,
                                              color: Colors.red,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Icon(Icons.call),
                                            ),
                                            Icon(CupertinoIcons
                                                .ellipsis_vertical)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.grey,
                                        ),
                                        Text('Connaught Place, new delhi')
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.blueGrey.shade100),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('Other Enquiry'),
                                          ),
                                        ),
                                        Text('31 Aug, 06:22 PM')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      color: Colors.grey,
                    )
                  ]),
                )
              ],
            ),
            Positioned(
                bottom: 20,
                right: 20,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Filters',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Leads',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Reviews')
          ],
        ),
      ),
    );
  }
}
