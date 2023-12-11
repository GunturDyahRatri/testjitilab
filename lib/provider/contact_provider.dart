

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:testjitilab/models/contact.dart';
import 'package:testjitilab/services/contact_services.dart';

class ContactProvider extends ChangeNotifier{

  bool isLoading = false;
  final _services = ContactService();
  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  Future<void> getAllContact() async {
    isLoading = true;
    notifyListeners();

    final response = await _services.getContact();
    _contacts = response;
    isLoading = false;
    notifyListeners();
  }
 
}