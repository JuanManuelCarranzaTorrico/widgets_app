import 'package:go_router/go_router.dart';
// import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtosnScreen.name,
      builder: (context, state) => const ButtosnScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(path: '/progress',
    name:ProgressScreen.name,
    builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(path: '/snackbar',
    name:SnackbarScreen.name,
    builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(path: '/animated',
    name:AnimatedScreen.name,
    builder: (context, state) => const AnimatedScreen(),
    ),
    
    
  ],
);