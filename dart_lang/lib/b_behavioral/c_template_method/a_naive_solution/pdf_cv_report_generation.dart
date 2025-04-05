import 'a_naive_solution.dart';

class PdfCvReportGeneration implements CvReportGeneration {
  @override
  GeneratedReport generatedCVReport(String cvFilePath) {
    String? file = readFile(cvFilePath);
    String? extractedData = extractData(file);
    String? analyzedData = analyzeData(extractedData);
    return _generatedReportOf(analyzedData);
  }

  GeneratedReport _generatedReportOf(String? analyzedData) {
    print("Generating report from : $analyzedData");
    return GeneratedReport(true);
  }

  @override
  String? readFile(String? filePath) {
    print("Reading file from : $filePath");
    return null;
  }

  @override
  String? extractData(String? file) {
    print("Extracting data from PDF");
    return null;
  }

  @override
  String? analyzeData(String? data) {
    print("Analyzing data from : $data");
    return null;
  }
}
