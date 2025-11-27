class Country {
  final String nom;
  final String capitale;
  final int population;
  final int superficie;
  final String langue;
  final String drapeau;
  final String? imageDetail;

  Country({
    required this.nom,
    required this.capitale,
    required this.population,
    required this.superficie,
    required this.langue,
    required this.drapeau,
    this.imageDetail,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      nom: json['nom'],
      capitale: json['capitale'],
      population: json['population'],
      superficie: json['superficie'],
      langue: json['langue'],
      drapeau: json['drapeau'],
      imageDetail: json['imageDetail'],
    );
  }

  String get populationFormat {
    return '${(population / 1000000).toStringAsFixed(1)} millions';
  }

  String get superficieFormat {
    return '${superficie.toString().replaceAllMapped(
      RegExp(r'(d{1,3})(?=(d{3})+(?!d))'),
      (Match m) => '${m[1]} '
    )} km²';
  }
}