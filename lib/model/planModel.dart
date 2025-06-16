
class PlanModel {
  final String planName;
  PlanModel({
    required this.planName,
  });

 
  PlanModel copyWith({
    String? planName,
  }) {
    return PlanModel(
      planName: planName ?? this.planName,
    );
  }
}
