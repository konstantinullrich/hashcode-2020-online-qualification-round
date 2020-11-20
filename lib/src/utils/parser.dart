import 'package:hashcode_books/hashcode_books.dart';

LibrariesDataset getInputParser(String inputString) {
  var input = inputString.split('\n');
  var maxDays = int.parse(input[0].split(' ')[2]);
  var booksRaw = input[1].split(' ');

  var books = <Book>[];
  var currentId = 0;
  for (var book in booksRaw) {
    books.add(Book(currentId, int.parse(book)));
    currentId++;
  }

  var libraries = <Library>[];
  var librariesRaw = input.sublist(2);
  var librariesIndex = 0;
  while (librariesIndex < librariesRaw.length) {
    var libMeta = librariesRaw[librariesIndex].split(' ');
    var libBooksRaw = librariesRaw[librariesIndex + 1].split(' ');
    var libBooks = <Book>[];
    for (var book in libBooksRaw) {
      libBooks.add(books[int.parse(book)]);
    }
    libraries.add(Library(librariesIndex, int.parse(libMeta[0]), int.parse(libMeta[1]), books));
    librariesIndex += 2;
  }

  var librariesDataset = LibrariesDataset(maxDays, libraries, books);

  return librariesDataset;
}

String getOutputParser(List<Library> libraries) {
  var result = '${libraries.length.toString()}\n';
  for (var lib in libraries) {
   result += lib.toString();
  }
  return result;
}
