import 'package:api_digest_iiitv/modals/stack_entity.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final StackEntity stackEntity;
  QuestionCard(this.stackEntity);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            ListTile(
              title: Text("${stackEntity.title}"),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
