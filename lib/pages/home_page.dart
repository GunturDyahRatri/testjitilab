import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testjitilab/models/contact.dart';
import 'package:testjitilab/pages/detail_contact.dart';
import 'package:testjitilab/provider/contact_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late Contact contact;

  List<Map<String, dynamic>> _foundContacts = [];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ContactProvider>(context, listen: false).getAllContact();
    });
    // _foundContacts = contact as List<Map<String, dynamic>>;
    super.initState();
  }

  // void _runFilter(String enterKeyword){
  //   List<Map<String, dynamic>> results = [];
  //   if(enterKeyword.isEmpty){
  //     results = _foundContacts;
  //   } else {
  //     results = _foundContacts.where((contact) => contact['sex'].toLo)
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final provider =  Provider.of<ContactProvider>(context, listen: false);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Consumer<ContactProvider>(builder: (context, value, child) {
          final contacts = value.contacts;
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) {
                  provider.search(value);
                }, 
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: const Icon(Icons.search),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: provider.searchText.length,
                  itemBuilder: (context, index) => Card(
                    key: ValueKey(contacts[index].id),
                    color: const Color.fromARGB(255, 209, 227, 236),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailContact(
                            contact: Contact(
                              name: contacts[index].name,
                              avatar: contacts[index].avatar,
                              sex: contacts[index].sex,
                              phoneNumber: contacts[index].phoneNumber,
                              id: contacts[index].id,
                            ),
                          ),
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(contacts[index].avatar),
                      ),
                      title: Text(contacts[index].name),
                      subtitle: Text(contacts[index].phoneNumber),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
