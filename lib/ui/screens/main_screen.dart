part of 'screens.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User"),
      ),
      body: ListView(
        children: [
          FutureBuilder<List<Reqres>>(
            future: Services.getListUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(data: snapshot.data![index])));
                        },
                        title: Text("${snapshot.data![index].firstName} ${snapshot.data![index].lastName}"),
                        subtitle: Text(snapshot.data![index].email ?? ""),
                      );
                    });
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
