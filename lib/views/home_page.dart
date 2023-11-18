import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_svg/svg.dart';

// import views
import 'main_page.dart';
import 'book_flight_page.dart';
import 'my_trips_page.dart';
import 'buddy_express_page.dart';
import 'more_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _selectedIndex = 0; // Declare the selectedIndex variable

// List of page names
List<Widget> pages = [MainPage(), BookFlightPage(), MyTripsPage(), BuddyExpressPage(), MorePage()];

// Callback function to handle navigation
void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
    // Perform navigation based on the selected index
    // String selectedPage = pages[_selectedIndex];
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Appbar')),
            backgroundColor: Theme.of(context).highlightColor,

        ),
        body: Center(
      child: pages[_selectedIndex],
        ),

        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).highlightColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'icons/icon-home-active.svg',
            ),
            icon: SvgPicture.asset(
              'icons/icon-home-inactive.svg',
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'icons/icon-bookFlight-active.svg',
            ),
            icon: SvgPicture.asset(
              'icons/icon-bookFlight-inactive.svg',
            ),
            label: 'Book Flight',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'icons/icon-myTrips-active.svg',
            ),
            icon: SvgPicture.asset(
              'icons/icon-myTrips-inactive.svg',
            ),
            label: 'My Trips',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'icons/icon-buddyExpress-active.svg',
            ),
            icon: SvgPicture.asset(
              'icons/icon-buddyExpress-inactive.svg',
            ),
            label: 'Buddy Express',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'icons/icon-more-active.svg',
            ),
            icon: SvgPicture.asset(
              'icons/icon-more-inactive.svg',
            ),
            label: 'More',
          ),
        ],
        // selectedItemColor: Theme.of(context).primaryColorLight,
        // unselectedItemColor: Theme.of(context).primaryColor,
  currentIndex: _selectedIndex,
  onTap: _onItemTapped,
    ));
  }
}


/*class _HomePageState extends State<HomePage> {
// text fields' controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  final CollectionReference _products =
      FirebaseFirestore.instance.collection('products');

  int _selectedIndex = 0; // Declare the selectedIndex variable

// Define the list of page names
List<String> pageNames = ['home', 'search', 'profile'];

// Define the callback function to handle navigation
void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
    // Perform navigation based on the selected index
    String selectedPage = pageNames[_selectedIndex];
    // Implement the navigation logic here...
    // For example, you can use a navigation package like `flutter_bloc` or `flutter_riverpod` to handle navigation to different pages.
  });
}


  Future<void> _create([DocumentSnapshot? documentSnapshot]) async {
    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: _priceController,
                  decoration: const InputDecoration(
                    labelText: 'Price',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Create'),
                  onPressed: () async {
                    final String name = _nameController.text;
                    final double? price =
                        double.tryParse(_priceController.text);
                    if (price != null) {
                      await _products.add({"name": name, "price": price});

                      _nameController.text = '';
                      _priceController.text = '';
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {
      _nameController.text = documentSnapshot['name'];
      _priceController.text = documentSnapshot['price'].toString();
    }

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: _priceController,
                  decoration: const InputDecoration(
                    labelText: 'Price',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Update'),
                  onPressed: () async {
                    final String name = _nameController.text;
                    final double? price =
                        double.tryParse(_priceController.text);
                    if (price != null) {
                      await _products
                          .doc(documentSnapshot!.id)
                          .update({"name": name, "price": price});
                      _nameController.text = '';
                      _priceController.text = '';
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  Future<void> _delete(String productId) async {
    await _products.doc(productId).delete();

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('You have successfully deleted a product')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Firebase Firestore')),
        ),
        body: StreamBuilder(
          stream: _products.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(documentSnapshot['name']),
                      subtitle: Text(documentSnapshot['price'].toString()),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () => _update(documentSnapshot)),
                            IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () => _delete(documentSnapshot.id)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).highlightColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Theme.of(context).primaryColorLight,
        unselectedItemColor: Theme.of(context).primaryColor,
  currentIndex: _selectedIndex,
  onTap: _onItemTapped,
      ),
// Add new product
        floatingActionButton: FloatingActionButton(
          onPressed: () => _create(),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}*/