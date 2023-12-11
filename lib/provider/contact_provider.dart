import 'dart:core';

import 'package:flutter/material.dart';
import 'package:testjitilab/models/contact.dart';
import 'package:testjitilab/services/contact_services.dart';

class ContactProvider extends ChangeNotifier {
  bool isLoading = false;
  final _services = ContactService();
  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;
  List<Contact> _searchContact = [];
  List<Contact> get searchContact => _searchContact;
  String searchText = '';

  Future<void> getAllContact() async {
    isLoading = true;
    notifyListeners();

    final response = await _services.getContact();
    _contacts = response;
    isLoading = false;
    notifyListeners();
  }

  updateData() {
    if (searchText.isEmpty) {
      _searchContact.addAll(_contacts);
    } else {
    _searchContact.addAll(_contacts
          .where((element) => element.name.toLowerCase().startsWith(searchText))
          .toList());
    }
    notifyListeners();
  }

  search(String name) {
    searchText = name;
    updateData();
  }
}
