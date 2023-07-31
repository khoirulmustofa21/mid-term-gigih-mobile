import 'package:get/get.dart';

class PlayViewController extends GetxController {
  RxInt selectIndex = RxInt(0);
  setindex(int index) {
    selectIndex.value = index;
    print(selectIndex);
  }
}

// Container(
//                         margin: const EdgeInsets.only(right: 25),
//                         height: 100,
//                         child: Text(
//                           category[
//                               index], // Ganti dengan teks kategori yang sesuai
//                           style: TextStyle(
//                             color: c.selectIndex.value == index
//                                 ? const Color(0xffFF8F71)
//                                 : Colors.white.withOpacity(0.7),
//                             fontSize: 20,
//                             fontWeight: FontWeight.w400,
//                             letterSpacing: 0.5,
//                           ),
//                         ),
                      // ),