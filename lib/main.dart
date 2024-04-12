import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurantour/pages/home_page.dart';
import 'package:restaurantour/providers/data_provider.dart';
import 'package:restaurantour/repositories/yelp_repository.dart';

void main() {
  runApp(const Restaurantour());
}

class Restaurantour extends StatelessWidget {
  // This widget is the root of your application.
  const Restaurantour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DataProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RestauranTour',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => DataProvider()),
//       ],
//       child: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text('Restaurantour'),
//               ElevatedButton(
//                 child: const Text('Fetch Restaurants'),
//                 onPressed: () async {
//                   final yelpRepo = YelpRepository();

//                   try {
//                     final result = await yelpRepo.getRestaurants();
//                     if (result != null) {
//                       print(
//                           'Fetched ${result.restaurants!.length} restaurants');
//                     } else {
//                       print('No restaurants fetched');
//                     }
//                   } catch (e) {
//                     print('Failed to fetch restaurants: $e');
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
