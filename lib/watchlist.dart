import 'package:flutter/material.dart';

class Watchlist extends StatefulWidget {
  @override
  _Watchlist createState() => _Watchlist();
}

class _Watchlist extends State<Watchlist> {
  final color = [
    Color.fromARGB(255, 5, 255, 180),
    Color.fromARGB(255, 237, 39, 55)
  ];

  final icon = [
    Icon(
      Icons.call_made,
      size: 8,
      color: Colors.green,
    ),
    Icon(
      Icons.call_received,
      size: 8,
      color: Colors.red,
    ),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleSpacing: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
              onPressed: null,
            );
          },
        ),
        title: Text(
          'WATCHLIST',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              final cardcolor = color[index % color.length];
              final cardicon = icon[index % color.length];
              index = index + 1;
              return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: cardcolor,
                  child: ListTile(
                      horizontalTitleGap: 0,
                      leading: Icon(Icons.home, color: Colors.black),
                      trailing: Container(
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('\$7639.98',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black, fontFamily: 'Inter')),
                            Container(
                              width: 37,
                              height: 18,
                              padding: EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          5.0) //                 <--- border radius here
                                  ),
                                  border:
                                  Border.all(color: Colors.black)),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.end,
                                children: [
                                  cardicon,
                                  Text(
                                    '0.11%',
                                    style: TextStyle(
                                        fontSize: 8,
                                        color: Colors.black, fontFamily: 'Inter'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("BTC/BUSD",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black, fontFamily: 'Inter')),
                          Row(
                            children: [
                              Text(
                                'Bitcoin',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black, fontFamily: 'Inter'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.remove_red_eye,
                                size: 15,
                                color: Colors.black,
                              ),
                            ],
                          )
                        ],
                      )));
            }),
      ),
    );
  }
}
