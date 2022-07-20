import 'package:flutter/material.dart';
import "package:whatsapp_clone/utils/contacts.dart";

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "${contacts[index]['profilePic']}",
                    ),
                    radius: 30,
                  ),
                  title: Text(
                    "${contacts[index]['name']}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      "${contacts[index]['message']}",
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                  trailing: Text(
                    "${contacts[index]['time']}",
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.shade700,
                indent: 85,
              )
            ],
          );
        },
      ),
    );
  }
}
