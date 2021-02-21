import 'package:api_digest_iiitv/core/api_client.dart';
import 'package:api_digest_iiitv/modals/stack_remote_data_source.dart';
import 'package:api_digest_iiitv/modals/stack_result_model.dart';
import 'package:api_digest_iiitv/widgets/display_questions.dart';
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

  Future<void> didChangeDependencies() async {
    if (!_runDidDependencies) {
      setState(() {
        _isLoading = true;
      });
      final ApiClinet apiClinet = ApiClinet();
      final StackRemoteDataSource obj =
          StackRemoteDataSourceImpl(apiClinet: apiClinet);
      await obj.getQuestions();
      _runDidDependencies = true;
      setState(() {
        _isLoading = false;
      });
      super.didChangeDependencies();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StackResultModel>(
      create: (_) => StackResultModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'GMAIL',
          ),
        ),
        body: !_runDidDependencies
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  SearchByTitle(),
                  DisplayQuestions(),
                ],
              ),
      ),
    );
  }
}
