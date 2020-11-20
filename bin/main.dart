import 'dart:io';

import 'package:hashcode_books/hashcode_books.dart';

void main(List<String> args) {
  var arguments = getArgParser().parse(args);

  if (arguments['help']) {
    print('HashCode Books Help\n\$ hashcode <inputfile-path>\n\nOptions:');
    print(getArgParser().usage);
    exit(1);
  }

  if (arguments.rest.isEmpty) {
    print('You need to specify a input file');
    exit(1);
  }

  var inputFile = File(arguments.rest[0]);
  var outputFile = File(inputFile.path.replaceAll('.in', '.out'));

  if (arguments['output-file'] != null) {
    outputFile = File(arguments['output-file']);
  }

  var librariesDataset = getInputParser(inputFile.readAsStringSync());
  var liberator = Liberator(librariesDataset, progress: arguments['progress']);

  // var result = liberator.slice(sliceDataset.indexRange);
  print('Max Score: ${librariesDataset.maxScore}');
  // print('Score: ${liberator.sliceCalc(result)}');
  // outputFile.createSync();
  // outputFile.writeAsString(getOutputParser(result));
}
