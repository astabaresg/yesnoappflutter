import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  late String answer;
  late bool forced;
  late String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessageEntity() => Message(
      text: answer == 'maybe'
          ? 'Quizás'
          : answer == 'yes'
              ? 'Si'
              : 'No',
      fromWho: FromWho.hers,
      imageUrl: image);
}
