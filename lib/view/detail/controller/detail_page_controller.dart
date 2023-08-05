import 'package:get/get.dart';

class DetailPageController extends GetxController {
  final RxInt maxLines = 5.obs;
  RxBool isExpanded = false.obs;
  RxString text =
      "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn"
          .obs;
  void setExpanded() {
    isExpanded.value = !isExpanded.value;
  }
}
