import "b_enhanced_solution.dart";

abstract class CvReportGeneration {
  GeneratedReport generatedCVReport(String cvFilePath) {
    String? file = _readFile(cvFilePath);
    String? extractedData = extractData(file);
    String? analyzedData = _analyzeData(extractedData);
    return _generatedReportOf(analyzedData);
  }

  GeneratedReport _generatedReportOf(String? analyzedData) {
    print("Generating report from : $analyzedData");
    return GeneratedReport(false);
  }

  String? _readFile(String? filePath) {
    print("Reading file from : $filePath");
    return null;
  }

  String? extractData(String? file);

  String? _analyzeData(String? data) {
    print("Analyzing data from : $data");
    return null;
  }
}
