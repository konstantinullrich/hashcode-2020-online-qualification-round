import 'package:hashcode_books/hashcode_books.dart';

class Library {
  final int id;
  final int daysForSignUp;
  final int booksPerDay;
  final List<Book> books;

  Library(this.id, this.daysForSignUp, this.booksPerDay, this.books);

  int get booksInLibrary => books.length;

  int get maxScore {
    var result = 0;
    for (var book in books) {
      result += book.score;
    }
    return result;
  }

  List<Book> get sortedBooks {
    var result = books;
    result.sort((var a, var b) => a.score.compareTo(b.score));
    return result;
  }

  List<int> get bookIds {
    var result = <int>[];
    for (var book in books) {
      result.add(book.id);
    }
    return result;
  }

  @override
  String toString() => '$id ${books.length}\n${bookIds.join(' ')}';
}