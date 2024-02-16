import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                _buildHeader(),
                const Divider(thickness: 2, color: Colors.black),
                _buildCustomerSearch(),
                const SizedBox(height: 10),
                _buildCustomerDetails(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Row(
      children: [
        SizedBox(width: 20),
        Icon(Icons.arrow_circle_left_outlined, size: 35),
        SizedBox(width: 10),
        Text(
          "New Order",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildCustomerSearch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 250,
          color: Colors.white,
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Customer',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(child: Icon(Icons.add)),
        ),
      ],
    );
  }

  Widget _buildCustomerDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            "Suresh Halter",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            "Phone Number",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            "9868627364",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 27),
          child: Row(
            children: [
              Text(
                "Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 250,
              color: Colors.white,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Customer',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(child: Icon(Icons.add)),
            ),
          ],
        ),
      ],
    );
  }
}
