class Career {
  final String id;
  final String title;
  final String description;
  final String salaryRange;
  final List<String> subjects;
  final String localImagePath;
  final String category;
  final String studyPeriod;
  final String weight;
  final Map<String, String>? subjectWeights;
  final String approximateTuition;
  final List<String>? institutions;

  // Detailed course data per institution
  final Map<String, Map<String, dynamic>>? coursesByInstitution;

  Career({
    required this.id,
    required this.title,
    required this.description,
    required this.salaryRange,
    required this.subjects,
    required this.localImagePath,
    required this.category,
    required this.studyPeriod,
    required this.weight,
    this.subjectWeights,
    required this.approximateTuition,
    this.institutions,
    this.coursesByInstitution,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'salaryRange': salaryRange,
      'subjects': subjects,
      'localImagePath': localImagePath,
      'category': category,
      'studyPeriod': studyPeriod,
      'weight': weight,
      'subjectWeights': subjectWeights,
      'approximateTuition': approximateTuition,
      'institutions': institutions,
      'coursesByInstitution': coursesByInstitution,
    };
  }

  static Career fromMap(Map<String, dynamic> map) {
    return Career(
      id: map['id'] as String? ?? '',
      title: map['title'] as String? ?? '',
      description: map['description'] as String? ?? '',
      salaryRange: map['salaryRange'] as String? ?? '',
      subjects: (map['subjects'] as List?)?.cast<String>() ?? [],
      localImagePath: map['localImagePath'] as String? ?? '',
      category: map['category'] as String? ?? '',
      studyPeriod: map['studyPeriod'] as String? ?? '',
      weight: map['weight'] as String? ?? '',
      subjectWeights: (map['subjectWeights'] as Map?)?.cast<String, String>(),
      approximateTuition: map['approximateTuition'] as String? ?? '',
      institutions: (map['institutions'] as List?)?.cast<String>(),
      coursesByInstitution: map['coursesByInstitution'] != null
          ? Map<String, Map<String, dynamic>>.from(
              (map['coursesByInstitution'] as Map).map((k, v) => MapEntry(
                    k as String,
                    Map<String, dynamic>.from(v as Map),
                  )))
          : null,
    );
  }
}
