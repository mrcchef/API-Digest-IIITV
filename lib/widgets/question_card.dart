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
        child: Card(
          color: Colors.green[50],
          shadowColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text("${stackEntity.title}"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(stackEntity.tags[index]),
                      ),
                      color: Colors.green[100],
                      shadowColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  },
                  itemCount: stackEntity.tags.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
