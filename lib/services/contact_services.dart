import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testjitilab/constant/api_constant.dart';
import 'package:testjitilab/models/contact.dart';

class ContactService {
  Future<List<Contact>> getContact() async {
    final uri = Uri.parse(baseUrl);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final contacts = json.map((e) {
        return Contact(
          name: e['name'],
          avatar: e['avatar'],
          sex: e['sex'],
          phoneNumber: e['phoneNumber'],
          id: e['id'],
        );
      }).toList();
      return contacts;
    }
    // throw "Something went wrong";
    return [];
  }
}
