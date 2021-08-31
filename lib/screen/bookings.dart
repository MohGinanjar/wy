import 'package:flutter/material.dart';
import 'package:wy/screen/booking/gridbooking.dart';
import 'package:wy/screen/home.dart';
import 'package:wy/widgets/colortheme.dart';
import 'package:provider/provider.dart';
import 'package:wy/providers/bookings_date.dart';

class Bookings extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final alldate = Provider.of<BookingsDates>(context);
    final alldates = alldate.listOfDates;
    final cekdate = alldate.todays;
    
    print(cekdate);
    int datenow = DateTime.now().day;
    return Scaffold(
        backgroundColor: colorC,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("2021-08-30"),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
              itemCount: alldates.length,
              itemBuilder: (ctx, i) => GridTile(
                child: Consumer<BookingsDates>(
                  builder: (context, value, child) => Card(
                      
                      color: value.todays ? colorA : colorD,
                      child: TextButton(
                        onPressed: value.cek,
                        child: Center(
                          child: Text(
                            '${alldates[i]}',
                            style: TextStyle(
                                color: colorD,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                color: colorB,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Text("07.00"),
                    ),
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Text("09.00"),
                    ),
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Text("11.00"),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 2, style: BorderStyle.solid)),
                      child: Text("13.00"),
                    ),
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Text("15.00"),
                    ),
                    Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: Text("17.00"),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (ctx, int) {
                return Card(
                  child: ListTile(
                      title: Text('Motivation $int',
                          style: TextStyle(
                              color: colorA,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      subtitle: Text('this is a description of the motivation',
                          style: TextStyle(
                              color: colorA,
                              fontSize: 18,
                              fontWeight: FontWeight.w400))),
                );
              },
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 120,
          color: colorC,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 60,
                width: 450,
                color: colorA,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "BOOKING",
                      style: TextStyle(
                          color: colorD,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ),
        ));
  }
}
