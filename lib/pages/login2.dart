//
// ********************************
//
// @author liqi
// @time 5/14/21
//
// ********************************
//

import 'package:flutter/material.dart';

class Login2 extends StatelessWidget {
  final String _avatarUrl =
      "https://t7.baidu.com/it/u=2697203538,2641245625&fm=193&f=GIF";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: height - 240 - 76 - 65 - 17,
                  child: Image.network(
                    _avatarUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 80,
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF1B303F),
                                ),
                              ),
                              TextField(
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B303F),
                                ),
                                decoration: InputDecoration(
                                  hintText: "Lucy",
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF1B303F),
                                  ),
                                  border: InputBorder.none,
                                ),
                                cursorColor: Color(0xFF1B303F),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF1B303F),
                                ),
                              ),
                              TextField(
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B303F),
                                ),
                                decoration: InputDecoration(
                                  hintText: "xx@gmail.com",
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF1B303F),
                                  ),
                                  border: InputBorder.none,
                                ),
                                cursorColor: Color(0xFF1B303F),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 80,
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF1B303F),
                                ),
                              ),
                              TextField(
                                obscureText: true,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF1B303F),
                                ),
                                decoration: InputDecoration(
                                  hintText: "xxxxxxxxxxx",
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xFF1B303F),
                                  ),
                                  border: InputBorder.none,
                                ),
                                cursorColor: Color(0xFF1B303F),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25, right: 25),
                          height: 65,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFFFE70B5)),
                              shape: MaterialStateProperty.all(
                                  BeveledRectangleBorder()),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 76,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: AppBar(
              backgroundColor: Colors.transparent,
              brightness: Brightness.dark,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_outlined, color: Colors.white,),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            top: 0,
            left: 0,
            right: 0,
          ),
        ],
      ),
    );
  }
}
