import 'package:api_digest_iiitv/core/api_client.dart';
import 'package:api_digest_iiitv/modals/questions.dart';
import 'package:api_digest_iiitv/modals/stack_remote_data_source.dart';
import 'package:api_digest_iiitv/modals/stack_result_model.dart';
import 'package:api_digest_iiitv/widgets/appbar.dart';
import 'package:api_digest_iiitv/widgets/display_questions.dart';
import 'package:api_digest_iiitv/widgets/main_drawer.dart';
import 'package:api_digest_iiitv/widgets/search_by_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _runDidDependencies = false;
  bool _isLoading = false;

  void initState() {
    super.initState();
  }

  void didChangeDependencies() {
    if (!_runDidDependencies) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<Questions>(context).fetchAndShowQuestions().then((_) {
        _runDidDependencies = true;
        setState(() {
          _isLoading = false;
        });
      });
      super.didChangeDependencies();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      drawer: MainDrawer(),
      body: Column(
        children: [
          SearchByTitle(),
          if (_isLoading)
            Center(
              child: CircularProgressIndicator(),
            ),
          if (!_isLoading) DisplayQuestions(),
        ],
      ),
    );
  }
}
