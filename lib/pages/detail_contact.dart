import 'package:flutter/material.dart';

class DetailContact extends StatelessWidget {
  // final Contact contact;
  const DetailContact({
    super.key,
    required this.name,
    required this.avatar,
    required this.sex,
    required this.phoneNumber,
  });
  final String name;
  final String avatar;
  final String sex;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 140),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 60,
              // backgroundImage: NetworkImage(avatar),
              backgroundColor: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
              child: Text(
                "Bla bla bla bla",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
              child: Text(
                "Male",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
              child: Text(
                "081-354-456-789",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
