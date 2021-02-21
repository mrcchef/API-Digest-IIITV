import 'package:flutter/material.dart';

class SearchByTitle extends StatelessWidget {
  final Key _form = GlobalKey<FormState>();
  String question;
  String tags;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Form(
          key: _form,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Your Question'),
                  textInputAction: TextInputAction.next,
                  onSaved: (newQuestion) {
                    question = newQuestion;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Tags',
                      hintText: 'Add tags seperated by semicolons'),
                  textInputAction: TextInputAction.done,
                  onSaved: (newTag) {
                    tags = newTag;
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  label: Text('Search'),
                  color: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
