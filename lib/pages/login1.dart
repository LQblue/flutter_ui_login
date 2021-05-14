//
// ********************************
//
// @author liqi
// @time 5/14/21
//
// ********************************
//

import 'package:flutter/material.dart';

class Login1 extends StatelessWidget {
  static String _imgUrl =
      "https://t7.baidu.com/it/u=612028266,626816349&fm=193&f=GIF";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          Positioned(
            child: Image.network(
              _imgUrl,
              fit: BoxFit.fitHeight,
            ),
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 240,
                child: Text(
                  "We hope you’ll love Mode as much as we do.",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 76,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Connect with Facebook",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF2D55BF)),
                  minimumSize: MaterialStateProperty.all(Size(325, 65)),
                  shape: MaterialStateProperty.all(BeveledRectangleBorder()),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Connect with Telegram",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFFF8D11C)),
                  minimumSize: MaterialStateProperty.all(Size(325, 65)),
                  shape: MaterialStateProperty.all(BeveledRectangleBorder()),
                ),
              ),
              SizedBox(
                height: 29,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 48,
                  ),
                  Text(
                    "Already a member?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 72,
                  ),
                ],
              ),
              SizedBox(
                height: 110,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
