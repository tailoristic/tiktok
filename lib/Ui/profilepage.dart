import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111522),
      body: Stack(
        children: [
          Container(
            color: Color(0xFF4A389C),
            height: 230.0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50.0,
                    width: 200.0,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0x38000000),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20.0,
                          color: Color(0xFFECD713),
                        ),
                        Text(
                          "Customize your cover >",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Color(0x38000000),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: null,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 120.0,
            width: 120.0,
            margin: EdgeInsets.fromLTRB(15.0, 200.0, 10.0, 0.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: Color(0xFF727070),
            ),
            child: Icon(
              Icons.person,
              size: 120.0,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 350.0, 0.0, 0.0),
            child: Text(
              "Barry Allen",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 390.0, 0.0, 0.0),
            child: Text(
              "ID: fastestmanalive",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(165.0, 245.0, 5.0, 0.0),
                height: 50.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 245.0, 5.0, 0.0),
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 245.0, 20.0, 0.0),
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Center(
                  child: Icon(
                    Icons.view_compact,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 420.0, 15.0, 0.0),
            child: Divider(
              height: 20.0,
              thickness: 0.6,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 450.0, 0.0, 0.0),
            child: Text(
              "Tap to add a bio to your profile ",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 490.0, 0.0, 0.0),
            child: Row(
              children: [
                Text(
                  "0",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Likes",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                Text(
                  "0",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Following",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                Text(
                  "0",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    "Followers",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 530.0, 15.0, 0.0),
            child: Divider(
              height: 20.0,
              thickness: 0.6,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: _tabFoo(),
          ),
        ],
      ),
    );
  }

  // _tabBar() {
  //   return Padding(
  //     padding: const EdgeInsets.fromLTRB(0.0, 560.0, 0.0, 0.0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: [
  //         Container(
  //           child: Text(
  //             "Videos 0",
  //             style: TextStyle(
  //               fontSize: 25.0,
  //               color: Colors.white,
  //             ),
  //           ),
  //         ),
  //         Container(
  //           child: Text(
  //             "Likes 0",
  //             style: TextStyle(
  //               fontSize: 25.0,
  //               color: Colors.white,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  _tabFoo() {
    return Container(
      height: 50.0,
      margin: EdgeInsets.fromLTRB(15.0, 560.0, 15.0, 0.0),
      child: DefaultTabController(
        length: 2,
        child: TabBar(indicatorColor: Color(0xFFECD713), tabs: [
          Tab(
            text: "Videos 0",
          ),
          Tab(
            text: "Likes 0",
          ),
        ]),
      ),
    );
  }
}
