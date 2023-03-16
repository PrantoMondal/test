import 'package:equatable/equatable.dart';

abstract class CubitState extends Equatable{

  const CubitState();
}
class InitState extends CubitState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class UpdateState extends CubitState{
  int count;
  UpdateState({required this.count});
  @override
  List<Object?> get props => [count];


}