class Cat {
    final String length;
    final String origin;
    final String imageLink;
    final double? intelligence;
    final double minWeight;
    final double maxWeight;
    final String name;

    Cat({
        required this.length,
        required this.origin,
        required this.imageLink,
        this.intelligence,
        required this.minWeight,
        required this.maxWeight,
        required this.name,
    });

    factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        length: json["length"],
        origin: json["origin"],
        imageLink: json["image_link"],
        minWeight: json["min_weight"]?.toDouble(),
        maxWeight: json["max_weight"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "length": length,
        "origin": origin,
        "image_link": imageLink,
        "min_weight": minWeight,
        "max_weight": maxWeight,
        "name": name,
    };
}
