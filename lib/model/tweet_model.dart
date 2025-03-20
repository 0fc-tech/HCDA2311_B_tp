class TweetModel {
  /*
 {
		"id" : 1,
		"profile": "https://avatar.iran.liara.run/public",
		"created_date" : 1730904962,
		"author" : "toto@gmail.com",
		"message" : "Mais Attila vous y attend, Sire! Attila! Le Fléau de Dieu! Mais…"
	},
  */
  int id;
  String profile;
  int createdDate;
  String author;
  String message;

  TweetModel({
    required this.id,
    required this.profile,
    required this.createdDate,
    required this.author,
    required this.message,
  });

  factory TweetModel.fromMap(Map<String, dynamic> map) {
    return TweetModel(
      id: map['id'] as int,
      profile: map['profile'] as String,
      createdDate: map['created_date'] as int,
      author: map['author'] as String,
      message: map['message'] as String,
    );
  }
}
