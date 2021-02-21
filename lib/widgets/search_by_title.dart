import 'package:api_digest_iiitv/usecase/get_questions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchByTitle extends StatefulWidget {
  @override
  _SearchByTitleState createState() => _SearchByTitleState();
}

class _SearchByTitleState extends State<SearchByTitle> {
  final Key _form = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final tagsController = TextEditingController();

  String title = "";
  String tags = "";

  @override
  void initState() {
    super.initState();
  }

  void submit() {
    title = titleController.text;
    tags = tagsController.text;
    print(title);
    print(tags);
    final questionMdl =
        Provider.of<QuestionDataProvider>(context, listen: false);
    questionMdl.getQuestionDataSearch(context, tags, title);
  }

  @override
  Widget build(BuildContext context) {
    final questionMdl = Provider.of<QuestionDataProvider>(context);
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
                  controller: titleController,
                  decoration: InputDecoration(labelText: 'Your Question'),
                  textInputAction: TextInputAction.next,
                  // onSaved: (newQuestion) {
                  //   setState(() {
                  //     title = newQuestion;
                  //   });
                  // },
                ),
                TextFormField(
                  controller: tagsController,
                  decoration: InputDecoration(
                      labelText: 'Tags',
                      hintText: 'Add tags seperated by semicolons'),
                  textInputAction: TextInputAction.done,
                  // onSaved: (newTag) {
                  //   setState(() {
                  //     tags = newTag;
                  //   });
                  // },
                ),
                SizedBox(
                  height: 5,
                ),
                FlatButton.icon(
                  onPressed: submit,
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
