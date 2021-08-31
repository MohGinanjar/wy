import 'package:flutter/material.dart';
import 'package:wy/widgets/colortheme.dart';

class Shipping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorC,
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                child: Container(
                  height: 160,
                  color: colorD,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("Service Location"),
                                Text("Banjaran Village", style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                              color: colorA,
                              borderRadius: BorderRadius.all(Radius.circular(12))),
                              height: 40,
                              width: 120,
                              child: Center(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text("Change Location",
                                      style: TextStyle(
                                          color: colorD,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),

                            
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Jl.Tapos Cimpaeun Depok, Jawa Barat"),
                      )
                    ],
                  ),
                ),
              )),
          
        ],
      ),
    );
  }
}
