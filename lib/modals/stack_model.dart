import 'package:api_digest_iiitv/modals/stack_entity.dart';

class StackModel extends StackEntity {
  final List<String> tags;
  final int questionScore;
  final bool isAccepted;
  final bool hasAcceptedAnswer;
  final int answerCount;
  final bool isAnswered;
  final int questionId;
  final String itemType;
  final int score;
  final int lastActivityDate;
  final int creationDate;
  final String body;
  final String excerpt;
  final String title;
  final int answerId;

  StackModel(
      {this.tags,
      this.questionScore,
      this.isAccepted,
      this.hasAcceptedAnswer,
      this.answerCount,
      this.isAnswered,
      this.questionId,
      this.itemType,
      this.score,
      this.lastActivityDate,
      this.creationDate,
      this.body,
      this.excerpt,
      this.title,
      this.answerId})
      : super(tags: tags, body: body, title: title, questionId: questionId);

  factory StackModel.fromJson(Map<String, dynamic> json) {
    return StackModel(
        tags: json['tags'].cast<String>(),
        questionScore: json['question_score'],
        isAccepted: json['is_accepted'],
        hasAcceptedAnswer: json['has_accepted_answer'],
        answerCount: json['answer_count'],
        isAnswered: json['is_answered'],
        questionId: json['question_id'],
        itemType: json['item_type'],
        score: json['score'],
        lastActivityDate: json['last_activity_date'],
        creationDate: json['creation_date'],
        body: json['body'],
        excerpt: json['excerpt'],
        title: json['title'],
        answerId: json['answer_id']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tags'] = this.tags;
    data['question_score'] = this.questionScore;
    data['is_accepted'] = this.isAccepted;
    data['has_accepted_answer'] = this.hasAcceptedAnswer;
    data['answer_count'] = this.answerCount;
    data['is_answered'] = this.isAnswered;
    data['question_id'] = this.questionId;
    data['item_type'] = this.itemType;
    data['score'] = this.score;
    data['last_activity_date'] = this.lastActivityDate;
    data['creation_date'] = this.creationDate;
    data['body'] = this.body;
    data['excerpt'] = this.excerpt;
    data['title'] = this.title;
    data['answer_id'] = this.answerId;
    return data;
  }
}
