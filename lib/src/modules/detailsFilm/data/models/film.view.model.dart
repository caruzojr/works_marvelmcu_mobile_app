import 'package:marvel_mcu_app/src/modules/detailsFilm/data/models/genres.model.dart';

class FilmViewModel {
  String releaseDate;
  String title;
  List<GenresModel> genres;
  int runtime;
  String classification;
  String originalTitle;
  String originalLanguage;
  String overview;
  String director;
  String status;
  int budget;
  int revenue;
  dynamic voteAverage;

  FilmViewModel(
      {this.releaseDate,
      this.title,
      this.genres,
      this.runtime,
      this.classification,
      this.originalTitle,
      this.originalLanguage,
      this.overview,
      this.director,
      this.status,
      this.budget,
      this.revenue,
      this.voteAverage});

  FilmViewModel copyWith({
    String releaseDate,
    String title,
    List<GenresModel> genres,
    int runtime,
    String classification,
    String originalTitle,
    String originalLanguage,
    String overview,
    String director,
    String status,
    int budget,
    int revenue,
    dynamic voteAverage,
  }) =>
      FilmViewModel(
        releaseDate: releaseDate ?? this.releaseDate,
        title: title ?? this.title,
        genres: genres ?? this.genres,
        runtime: runtime ?? this.runtime,
        classification: classification ?? this.classification,
        originalTitle: originalTitle ?? this.originalTitle,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        overview: overview ?? this.overview,
        director: director ?? this.director,
        status: status ?? this.status,
        budget: budget ?? this.budget,
        revenue: revenue ?? this.revenue,
        voteAverage: voteAverage ?? this.voteAverage,
      );

  FilmViewModel.fromJson(Map<String, dynamic> json) {
    releaseDate = json['releaseDate'];
    title = json['title'];
    if (json['genres'] != null) {
      genres = new List<GenresModel>();
      json['genres'].forEach((v) {
        genres.add(new GenresModel.fromJson(v));
      });
    }
    runtime = json['runtime'];
    classification = json['classifications'];
    originalTitle = json['originalTitle'];
    originalLanguage = json['originalLanguage'];
    overview = json['overview'];
    director = json['director'];
    status = json['status'];
    budget = json['budget'];
    revenue = json['revenue'];
    voteAverage = json['voteAverage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['releaseDate'] = this.releaseDate;
    data['title'] = this.title;
    if (this.genres != null) {
      data['genres'] = this.genres.map((v) => v.toJson()).toList();
    }
    data['runtime'] = this.runtime;
    data['classification'] = this.classification;
    data['originalTitle'] = this.originalTitle;
    data['originalLanguage'] = this.originalLanguage;
    data['overview'] = this.overview;
    data['director'] = this.director;
    data['status'] = this.status;
    data['budget'] = this.budget;
    data['revenue'] = this.revenue;
    data['voteAverage'] = this.voteAverage;
    return data;
  }
}
