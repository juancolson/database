import 'package:flutter/material.dart';
import 'generated/pocketbase/series_record.dart';
import 'utils/database.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemsListScreen extends StatefulWidget {
  const ItemsListScreen({super.key});

  @override
  State<ItemsListScreen> createState() => _ItemsListScreen();
}

class _ItemsListScreen extends State<ItemsListScreen> {

  List<SeriesRecord> items = [];
  Future<void> refreshData() async {
    final resultList = await pb.collection('Series').getList(
    page: 1,
    perPage: 50,
    sort: "title"
  );
    setState(() {
      items =  resultList.items.map(
    (item) => SeriesRecord.fromRecordModel(item),
  ).toList(growable: false);
    });
  }

  @override
  void initState() {
    super.initState();
    refreshData();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(onRefresh: refreshData, 
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                title: Text(item.title),
                onTap: () {
                  launchUrl(Uri.parse(item.download));
                  // Handle item tap if necessary
                },
              );
            },
          ));
  }}