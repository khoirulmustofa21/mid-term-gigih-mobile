import 'package:get/get.dart';

class PlayViewController extends GetxController {
  RxInt selectIndex = RxInt(0);
  setindex(int index) {
    selectIndex.value = index;
    print(selectIndex);
  }
}
