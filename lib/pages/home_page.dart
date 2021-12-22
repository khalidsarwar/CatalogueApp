import 'package:catalogue_app/models/catalogue.dart';
import 'package:catalogue_app/widgets/drawer.dart';
import 'package:catalogue_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    var catalogueJson =
        await rootBundle.loadString("assets/files/catalogue.json");
    print(catalogueJson);
  }

  @override
  Widget build(BuildContext context) {
    var dummyList = List.generate(20, (index) => CatalogueModel.items[0]);

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: dummyList.length, // CatalogueModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
                item: dummyList[index]); //CatalogueModel.items[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
