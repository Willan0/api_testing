import 'package:fake_store/data/vo/fake_store_vo/fake_store_vo.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key,required this.fakeStoreVO}) : super(key: key);
  final FakeStoreVO? fakeStoreVO;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: SizedBox(
        width: 300,
        height: 200,
        child: Image.network(fakeStoreVO?.image??""),
      ),
    );
  }
}
