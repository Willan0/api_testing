import 'package:fake_store/data/apply/fake_store_apply/fake_store_api_apply.dart';
import 'package:fake_store/data/vo/fake_store_vo/fake_store_vo.dart';
import 'package:fake_store/utils/get_PrefixText.dart';
import 'package:flutter/material.dart';

import '../data/apply/fake_store_apply/fake_store_api_apply_impl.dart';
import '../utils/random_color.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FakeStoreApply fakeStoreApply = FakeStoreApiApplyImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
        body: FutureBuilder<List<FakeStoreVO>?>(
            future: fakeStoreApply.getAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return const Center(
                  child: Text("Error occur is fetching"),
                );
              }
              final listData = snapshot.data;
              return ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(fakeStoreVO: listData?[index]),)) ;
                    },
                        leading: CircleAvatar(
                          backgroundColor: getRandomColor(),
                          child: Text(
                              (listData?[index].title ?? "").getPrefixText()),
                        ),
                        title: Text(listData?[index].title ?? ""),
                        subtitle: Text(listData?[index].description ?? ""),
                        trailing: Text('${listData?[index].price ?? ""}\$'),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: listData?.length ?? 0);
            }));
  }
}
