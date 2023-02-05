import 'package:fake_store/data/vo/fake_store_vo/fake_store_vo.dart';

abstract class FakeStoreApply {
  Future<List<FakeStoreVO>?> getAllProducts();
}