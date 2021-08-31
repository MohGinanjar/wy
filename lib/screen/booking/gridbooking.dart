import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wy/providers/bookings_date.dart';
import 'package:wy/widgets/colortheme.dart';

class GridDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final alldate = Provider.of<BookingsDates>(context, listen: false);
    final alldates = alldate.listOfDates;
    return GridView.builder(
      itemCount: alldates.length,
      shrinkWrap: true,
      itemBuilder: (ctx, i) => ChangeNotifierProvider(
        create: alldates[i],
        child: GridTile(
          child: Card(
              color: colorA,
              child: TextButton(
                onPressed: () {},
                child: new Center(
                  child: new Text(
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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6,
      ),
    );
  }
}
