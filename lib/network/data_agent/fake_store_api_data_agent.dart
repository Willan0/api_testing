
import '../../data/vo/fake_store_vo/fake_store_vo.dart';

abstract class FakeStoreDataAgent{
  Future<List<FakeStoreVO>?> getAllProducts();
}