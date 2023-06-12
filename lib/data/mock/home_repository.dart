import 'package:starter/data/repositories/home_data_repository.dart';
import 'package:starter/service/service.dart';

class HomeDataRepositoryMock implements HomeDataRepository {
  @override
  Future<List<HomeDataResponse>> getHomeData() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      HomeDataResponse.items(
        title: "جديد",
        items: [
          HomeDataProduct(
            id: 1,
            name: "منتج 1",
            description: "وصف المنتج 1",
            image: "https://picsum.photos/200/300",
            price: 100,
            rating: 4.5,
          ),
          HomeDataProduct(
            id: 2,
            name: "منتج 2",
            description: "وصف المنتج 2",
            image: "https://picsum.photos/200/300",
            price: 200,
            rating: 4.5,
          ),
          HomeDataProduct(
            id: 3,
            name: "منتج 3",
            description: "وصف المنتج 3",
            image: "https://picsum.photos/200/300",
            price: 300,
            rating: 4.5,
          ),
          HomeDataProduct(
            id: 4,
            name: "منتج 4",
            description: "وصف المنتج 4",
            image: "https://picsum.photos/200/300",
            price: 400,
            rating: 3.2,
          ),
          HomeDataProduct(
            id: 5,
            name: "منتج 5",
            description: "وصف المنتج 5",
            image: "https://picsum.photos/200/300",
            price: 500,
            rating: 4.5,
          ),
        ],
      ),
    ];
  }
}
