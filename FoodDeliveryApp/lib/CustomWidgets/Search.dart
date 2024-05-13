import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/foodsModel.dart';
import 'package:fooddeliveryapp/screens/SubScreens/DetailsScreen.dart';

class Search extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.cancel_rounded),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return GestureDetector(
      onTap: () {
        close(context, null);
      },
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Image.asset(
          'assets/icons/back-icon.png',
        ),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemCount: searchModel.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailsScreen(foodModel: searchModel[index]),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: SizedBox(
                height: 60,
                child: Card(
                  color: const Color.fromARGB(255, 206, 204, 204),
                  child: Row(
                    children: [
                      Image.asset(searchModel[index].image),
                      const SizedBox(width: 10),
                      Text(
                        searchModel[index].name,
                        style: const TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
    } else {
      List<FoodModel> filterModel = searchModel
          .where((element) =>
              element.name.toLowerCase().startsWith(query.toLowerCase()))
          .toList();
      return GestureDetector(
        onTap: () {
          showResults(context);
        },
        child: ListView.builder(
          itemCount: filterModel.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(foodModel: filterModel[index]),
                  ),
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: SizedBox(
                  height: 60,
                  child: Card(
                    color: const Color.fromARGB(255, 206, 204, 204),
                    child: Row(
                      children: [
                        Image.asset(filterModel[index].image),
                        const SizedBox(width: 10),
                        Text(
                          filterModel[index].name,
                          style: const TextStyle(
                            fontFamily: 'Ubuntu',
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }
}
