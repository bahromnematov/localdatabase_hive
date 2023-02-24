import 'package:flutter/material.dart';
import 'package:localdatabase_hive/servise/get_storage_service.dart';
import 'package:localdatabase_hive/servise/hive_servise.dart';

import '../model/user_model.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var user=User("szdksghadga1231@gmail.com","23142412");
    // HiveServise.stareUser(user);
    // var user2= HiveServise.loadUser();
    // print(user2.toJson().toString());

    GetStorageService.storeUser(user);
    var user2=GetStorageService.loadUser();
    print(user2.toJson().toString());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Database"),

      ),
      body: const Center(
        child: Text("Local Database"),
      ),
    );
  }
}
