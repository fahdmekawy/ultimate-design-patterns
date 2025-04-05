import 'a_naive_solution.dart';

abstract class CvReportGeneration {
  GeneratedReport generatedCVReport(String cvFilePath);

  String? readFile(String filePath);

  String? extractData(String file);

  String? analyzeData(String data);
}
