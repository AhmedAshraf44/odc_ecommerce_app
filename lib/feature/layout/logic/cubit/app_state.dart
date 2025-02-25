part of 'app_cubit.dart';

@immutable
sealed class AppLayoutstate {}

final class AppInitial extends AppLayoutstate {}

final class AppChangeBottomNavState extends AppLayoutstate {}
