//single regularity principle violation
class Report {
  void gatherData() {
    print("Gathering data");
  }

  void generateReport() {
    print("Generating report");
  }

  void printReport() {
    print("Printing report");
  }
}

void main() {
  final report = Report();
  report.gatherData();
  report.generateReport();
  report.printReport();
}
