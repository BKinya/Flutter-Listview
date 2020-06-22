class Engineer {
  final String name;
  final String title;
  final String abbreviation;

  Engineer(
    this.name,
    this.title,
    this.abbreviation,
  );
}

List<Engineer> getEngineers() {
  return [
    Engineer('Sitati Kituyi', 'CTO', 'SK'),
    Engineer('Roy Rutto', 'Senior Engineer', 'RR'),
    Engineer('Rose Wanjiru', 'Tech Apprentice', 'RW'),
    Engineer('Peter Muchina', 'Senior Engineer', 'PM'),
    Engineer('Peter Kihara', 'Product Manager', 'PK'),
    Engineer('Eston Mwaura', 'Software Engineer', 'EM'),
    Engineer('Elizabeth Thinwa', 'Product Manager', 'EM'),
    Engineer('Benson Kimani', 'QA', 'BK'),
    Engineer('Beatrice Kinya', 'Tech Apprentice', 'BK'),
  ];
}

List<bool> getVisibility() {
  List<bool> aBool = [];
  getEngineers().forEach((element) {
    aBool.add(false);
  });

  return aBool;
}
