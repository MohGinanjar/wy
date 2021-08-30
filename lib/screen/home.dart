import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wy/widgets/colortheme.dart';
import 'package:provider/provider.dart';
import 'package:wy/providers/menuassets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menuasset = Provider.of<MenuAssets>(context);
    final all_menu = menuasset.allmenus;

    return Scaffold(
        backgroundColor: colorC,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BarUser(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Menu',
                  style: TextStyle(
                      color: colorA,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: all_menu.length,
                itemBuilder: (BuildContext context, int index) => Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 2,
                  
                  child: Container(
                    width: 180,
                    child: Center(
                      child: SvgPicture.asset(all_menu[index].image,
                      fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: colorA,
                height: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text('My Ac',
                  style: TextStyle(
                      color: colorA,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorA,
                ),
                height: 180,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      trailing: Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                      ),
                      title: Text("Terakhir Service Ac",
                          style: TextStyle(
                              color: colorC,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      subtitle: Text("2021-08-02",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      trailing: Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                      title: Text("Service Ac Selanjutnya",
                          style: TextStyle(
                              color: colorC,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      subtitle: Text("2021-09-02",
                          style: TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('In Progress',
                  style: TextStyle(
                      color: colorA,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (ctx, int) {
                  return Card(
                    child: ListTile(
                        title: Text('Motivation $int',
                            style: TextStyle(
                                color: colorA,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text(
                            'this is a description of the motivation',
                            style: TextStyle(
                                color: colorA,
                                fontSize: 18,
                                fontWeight: FontWeight.w400))),
                  );
                },
              ),
            ),
          ],
        ));
  }
}

class BarUser extends StatelessWidget {
  const BarUser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2021-08-28",
                      style: TextStyle(
                          color: colorA,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  Text("Mohamad Ginanjar",
                      style: TextStyle(
                          color: colorA,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/474x/60/13/a3/6013a33f806d8d74f43ee2eb565ff4dc.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
