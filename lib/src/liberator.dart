import 'package:hashcode_books/hashcode_books.dart';

class Liberator {
  final LibrariesDataset librariesDataset;
  final bool progress;

  Liberator(this.librariesDataset, {this.progress = false});

  List<Library> solve() {
    var result = <Library>[];
    var libraries = librariesDataset.libraries;
    libraries.sort((var a, var b) => a.maxScore.compareTo(b.maxScore));
    
    while (libraries.isNotEmpty) {

    }

    return result;
  }
}