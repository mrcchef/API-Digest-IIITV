import 'package:api_digest_iiitv/modals/stack_entity.dart';
import 'package:api_digest_iiitv/widgets/appbar.dart';
import 'package:api_digest_iiitv/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  static const routeName = '/answer';
  @override
  Widget build(BuildContext context) {
    final stackEntity =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: Appbar(),
      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              color: Colors.green[50],
              shadowColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Q. ${stackEntity["question"].title}',
                  style: TextStyle(
                    // fontFamily: 'QuickSand',
                    color: Colors.black,
                    fontFamily: 'QuickSand',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        stackEntity["question"].tags[index],
                        style: TextStyle(
                          // fontFamily: 'QuickSand',
                          //color: Colors.black,
                          fontFamily: 'QuickSand',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    color: Colors.green[100],
                    shadowColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  );
                },
                itemCount: stackEntity["question"].tags.length,
              ),
            ),
            Card(
              color: Colors.green[50],
              shadowColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${stackEntity["question"].body}',
                  style: TextStyle(
                    // fontFamily: 'QuickSand',
                    //color: Colors.grey[600],
                    fontFamily: 'QuickSand',
                    //fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
