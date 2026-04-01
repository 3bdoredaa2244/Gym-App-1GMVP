class ClassModel {
  final String id;
  final String gymName;
  final String sportType;
  final String instructor;
  final DateTime time;
  final int duration;
  final int capacity;
  final int bookedCount;
  final double price;

  ClassModel({
    required this.id,
    required this.gymName,
    required this.sportType,
    required this.instructor,
    required this.time,
    required this.duration,
    required this.capacity,
    required this.bookedCount,
    required this.price,
  });

  factory ClassModel.fromFirestore(Map<String, dynamic> data, String id) {
    return ClassModel(
      id: id,
      gymName: data['gymName'],
      sportType: data['sportType'],
      instructor: data['instructor'],
      time: (data['time']).toDate(),
      duration: data['duration'],
      capacity: data['capacity'],
      bookedCount: data['bookedCount'],
      price: data['price'].toDouble(),
    );
  }
}