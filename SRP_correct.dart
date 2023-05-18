//single regularity principle 

class DataGatherer {
  void gatherData() {
    print("Gathering data");
  }
}

class ReportGenerator {
  void generateReport() {
    print("Generating report");
  }
}

class ReportPrinter {
  void printReport() {
    print("Printing report");
  }
}

void main() {
  final dataGatherer = DataGatherer();
  dataGatherer.gatherData();

  final reportGenerator = ReportGenerator();
  reportGenerator.generateReport();

  final reportPrinter = ReportPrinter();
  reportPrinter.printReport();
}
