import 'package:equatable/equatable.dart';

class Pdf extends Equatable {
  final String? chapter2;
  final String? chapter5;

  const Pdf({this.chapter2, this.chapter5});

  factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
    chapter2: json['Chapter 2'] as String?,
    chapter5: json['Chapter 5'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'Chapter 2': chapter2,
    'Chapter 5': chapter5,
  };

  @override
  List<Object?> get props => [chapter2, chapter5];
}
