import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class StackEntity extends Equatable with ChangeNotifier {
  final List<String> tags;
  final String title;
  final String body;
  final int questionId;

  StackEntity({
    this.tags,
    this.title,
    this.body,
    this.questionId,
  });

  @override
  List<Object> get props => [questionId, title];

  @override
  bool get stringify => true;
}
