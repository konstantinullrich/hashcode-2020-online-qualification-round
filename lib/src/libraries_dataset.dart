import 'package:hashcode_books/hashcode_books.dart';

class LibrariesDataset {
  final int maxDays;
  final List<Library> libraries;
  final List<Book> books;

  LibrariesDataset(this.maxDays, this.libraries, this.books);

  int get maxScore {
    var result = 0;
    for (var book in books) {
      result += book.score;
    }
    return result;
  }

}