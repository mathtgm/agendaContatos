import 'package:agendaContatos/helpers/contact_helper.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();

   @override
   void initState(){
     super.initState();

     Contact c = Contact();
     c.name = "Gabriel Carlos";
     c.email = "gabrielC@gmail.com";
     c.phone = "19 208049283";
     c.img = "imgtest";

     helper.saveContact(c);

     helper.getAllContacts().then((list) {
       print(list);
     });
   }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
