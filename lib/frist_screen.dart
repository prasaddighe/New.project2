import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello",
                style: TextStyle(
                  fontSize: 24, // Increase font size for HD
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    "Vikas Sodnar",
                    style: TextStyle(
                      fontSize: 20, // Increase font size for HD
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 150), // Adjust width for HD
                  Icon(Icons.person, size: 32), // Increase icon size for HD
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Your today's performance",
                style: TextStyle(
                  fontSize: 16, // Increase font size for HD
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 120, // Increase height for HD
                    width: 120, // Increase width for HD
                    color: Colors.grey[300], // Lighter color for HD
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Orders",
                          style: TextStyle(
                            fontSize: 18, // Increase font size for HD
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "124",
                          style: TextStyle(
                            fontSize: 30, // Increase font size for HD
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120, // Increase height for HD
                    width: 120, // Increase width for HD
                    color: Colors.green[300], // Lighter color for HD
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Orders",
                          style: TextStyle(
                            fontSize: 18, // Increase font size for HD
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "223",
                          style: TextStyle(
                            fontSize: 30, // Increase font size for HD
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120, // Increase height for HD
                    width: 120, // Increase width for HD
                    color: Colors.pink[200], // Lighter color for HD
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Orders",
                          style: TextStyle(
                            fontSize: 18, // Increase font size for HD
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "12k",
                          style: TextStyle(
                            fontSize: 30, // Increase font size for HD
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(children: [Image.asset("graph.png",fit: BoxFit.cover,)],),
              const SizedBox(height: 15),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      ButtonsTabBar(
                        backgroundColor: Colors.red,
                        borderWidth: 2,
                        borderColor: Colors.black,
                        labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        tabs: const [
                          Tab(
                            icon: Icon(Icons.person_add),
                            text: 'New Lead',
                          ),
                          Tab(
                            icon: Icon(Icons.border_all_outlined),
                            text: 'New Order',
                          ),
                          Tab(
                            icon: Icon(Icons.person_add_alt_rounded),
                            text: 'Compagian',
                          ),
                        ],
                      ),
                      Container(
                        height: 350,
                        width: 375  ,
                        color: const Color.fromARGB(255, 123, 156, 126),
                        child: const Column(children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text("Targets",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),Column(children: [Text("You Must Visit To Sinnar Route Today With The Amol Gite")],),
                          
                          Row(children: [Text("data")],)
                        ],
                        ),
                        
                        
                        
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FirstScreen(),
  ));
}
