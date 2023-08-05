import 'package:flutter/material.dart';
import 'package:mobile/view/detail/controller/detail_page_controller.dart';

Widget detailTextDetail() {
  const String text =
      "Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn ..";
  DetailPageController controller = DetailPageController();

  return Padding(
    padding: const EdgeInsets.only(right: 20, left: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          maxLines:
              controller.isExpanded.value ? null : controller.maxLines.value,
          overflow: controller.isExpanded.value
              ? TextOverflow.visible
              : TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              wordSpacing: 1,
              letterSpacing: 0.6),
        ),
        InkWell(
          onTap: () {
            controller.setExpanded();
            print(controller.isExpanded.value);
          },
        ),
      ],
    ),
  );
}
