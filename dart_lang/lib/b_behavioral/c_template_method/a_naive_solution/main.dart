import 'a_naive_solution.dart';

void main() {
  print("\n---------------------------------------\n");

  CvReportGeneration pdfCvReportGeneration = PdfCvReportGeneration();
  GeneratedReport pdfGeneratedReport =
      pdfCvReportGeneration.generatedCVReport('/tmp/cv-001.pdf');
  print(pdfGeneratedReport.isPassed);

  print("\n---------------------------------------\n");
  CvReportGeneration wordCvReportGeneration = WordCvReportGeneration();
  GeneratedReport wordGeneratedReport =
      wordCvReportGeneration.generatedCVReport('/tmp/cv-001.docx');
  print(wordGeneratedReport.isPassed);
  print("\n---------------------------------------\n");

  CvReportGeneration imageCvReportGeneration = ImageCvReportGeneration();
  GeneratedReport imageGeneratedReport =
      imageCvReportGeneration.generatedCVReport('/tmp/cv-001.jpeg');
  print(imageGeneratedReport.isPassed);
  print("\n---------------------------------------\n");
}
