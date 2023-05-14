import 'package:flutter/material.dart';
List icons = [
  "home",
  "grocery",
  "liquor",
  "cheese",
];

List foods = [
  "Ginger",
  "GarlicPremium",
  "RedOnions",
  "Watermelon",
];

List foods_name = [
  "Ginger",
  "Garlic Premium",
  "Red Onions",
  "Watermelon",
];

List foods1 = [
  "Carrot",
  "Mango",
  "Grapes",
  "Coconut",
];

List foods1_name = [
  "Carrot",
  "Mango",
  "Grapes",
  "Coconut",
];

List foods_values = [
  "Rs.690.00",
  "Rs.100.00",
  "Rs.200.00",
  "Rs.300.00",
];

List foods1_values = [
  "Rs.150.00",
  "Rs.120.00",
  "Rs.240.00",
  "Rs.340.00",
];
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index1 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text("Keells"),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.circle)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "All Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "View All",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          margin: EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(360),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  "images/${icons[index]}.png",
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Row(
                            children: [
                              Text(
                                "${icons[index]}",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.arrow_right),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Nexus Member Deals",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "View All",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 180,
                          width: 200,
                          margin: EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 138, 136, 136),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "1KG",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                height: 60,
                                width: 60,
                                child: Image.asset(
                                  "images/${foods[index]}.png",
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (index == 0)
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.green,
                                      ),
                                    ),
                                  if(index !=0)
                                      Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 175,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${foods_name[index]}",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "${foods_values[index]}",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              // Other widgets to add to the right of the column
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Keells Deals",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "View All",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 180,
                          width: 200,
                          margin: EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 50,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 138, 136, 136),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "1KG",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                height: 60,
                                width: 60,
                                child: Image.asset(
                                  "images/${foods1[index]}.png",
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (index == 1)
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.green,
                                      ),
                                    ),
                                  if(index !=1)
                                      Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 175,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${foods1_name[index]}",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "${foods1_values[index]}",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              // Other widgets to add to the right of the column
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index1,
        onTap: (index)=>{
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: "Home",
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store,),
            label: "My Cart",
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,),
            label: "Favorite",
            
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,),
            label: "Profile",
            
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined,),
            label: "More",
            
          ),
        ],
      ),
      )
      
    );
  }
}