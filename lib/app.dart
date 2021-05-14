//
// ********************************
//
// @author liqi
// @time 5/14/21
//
// ********************************
//

import 'package:flutter/material.dart';
import 'model/model.dart';
import 'pages/pages.dart';
import 'routes/routes.dart';

class App extends StatelessWidget {
  static List<ListItemModel> _pages = [
    ListItemModel(title: "Login 1", page: Login1()),
    ListItemModel(title: "Login 2", page: Login2()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login UI"),
        brightness: Brightness.dark,
        elevation: 0,
      ),
      body: DividerTheme(
        data: DividerThemeData(
            color: Colors.grey.shade300, indent: 20, endIndent: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            ..._pages.map((item) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: ListTile(
                      leading: Text(item.title,
                          style: Theme.of(context).textTheme.headline6),
                      trailing: Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return item.page;
                        }));
                      },
                    ),
                  ),
                  Divider(),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
