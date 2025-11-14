import 'package:equatable/equatable.dart';

import 'pdf.dart';

class BookModel extends Equatable {
  final String? error;
  final String? title;
  final String? subtitle;
  final String? authors;
  final String? publisher;
  final String? language;
  final String? isbn10;
  final String? isbn13;
  final String? pages;
  final String? year;
  final String? rating;
  final String? desc;
  final String? price;
  final String? image;
  final String? url;
  final Pdf? pdf;

  const BookModel({
    this.error,
    this.title,
    this.subtitle,
    this.authors,
    this.publisher,
    this.language,
    this.isbn10,
    this.isbn13,
    this.pages,
    this.year,
    this.rating,
    this.desc,
    this.price,
    this.image,
    this.url,
    this.pdf,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
    error: json['error'] as String?,
    title: json['title'] as String?,
    subtitle: json['subtitle'] as String?,
    authors: json['authors'] as String?,
    publisher: json['publisher'] as String?,
    language: json['language'] as String?,
    isbn10: json['isbn10'] as String?,
    isbn13: json['isbn13'] as String?,
    pages: json['pages'] as String?,
    year: json['year'] as String?,
    rating: json['rating'] as String?,
    desc: json['desc'] as String?,
    price: json['price'] as String?,
    image: json['image'] as String?,
    url: json['url'] as String?,
    pdf:
        json['pdf'] == null
            ? null
            : Pdf.fromJson(json['pdf'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'error': error,
    'title': title,
    'subtitle': subtitle,
    'authors': authors,
    'publisher': publisher,
    'language': language,
    'isbn10': isbn10,
    'isbn13': isbn13,
    'pages': pages,
    'year': year,
    'rating': rating,
    'desc': desc,
    'price': price,
    'image': image,
    'url': url,
    'pdf': pdf?.toJson(),
  };

  @override
  List<Object?> get props {
    return [
      error,
      title,
      subtitle,
      authors,
      publisher,
      language,
      isbn10,
      isbn13,
      pages,
      year,
      rating,
      desc,
      price,
      image,
      url,
      pdf,
    ];
  }
}
