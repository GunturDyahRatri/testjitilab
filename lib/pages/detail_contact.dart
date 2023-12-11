import 'package:flutter/material.dart';
import 'package:testjitilab/models/contact.dart';

class DetailContact extends StatelessWidget {
  const DetailContact({
    super.key,
    required this.contact,
    // required this.avatar,
    // required this.sex,
    // required this.phoneNumber,
  });
  final Contact contact;
  // final String avatar;
  // final String sex;
  // final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 140),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(contact.avatar),
              backgroundColor: Colors.grey,
            ),
            const SizedBox(
              height: 20,
            ),
             SizedBox(
              height: 20,
              child: Text(
                contact.name,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             SizedBox(
              height: 20,
              child: Text(
                contact.sex,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             SizedBox(
              height: 20,
              child: Text(
                contact.phoneNumber,
                style: const TextStyle(
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
