class Project {
  final String? title, description,link;

  Project({this.title, this.description,this.link});
}

List<Project> demo_projects = [
   Project(
    title: "Location Tracker App",
    description:
        '''This is an example of Location Tracker app made with google maps sdk and Firebase.Every User has different collection in Firebase as they signin with google account.This application tracks live location of user and shows it on google map.I have integrated all maps mode like traffic,terrain,hybrid,sattelite in this app,user can select any of them.More features will be added soon.'''
    ,link: 'https://github.com/naimishborad/Location-Tracker-GoogleMap'
     ),
      Project(
    title: "Flutter Chat App",
    description:
        '''This is basic chat app made with flutter and firebase. Every user can chat with all users available on the app.All the data stored on firebase. More details and Photos available on github Click to read more...'''
    ,link: 'https://github.com/naimishborad/FlutterChatApp'
     ),
  Project(
    title: "Space Exploration App",
    description:
        '''This is basically a UI based app containing two pages ,Developed using material widgets, card, itemBuilder, swiper, HERO animation,
Navigation. This app also includes all data like Numbers, details,
images of planets. All data coming from data model class created in
app.
''',
link: 'https://github.com/naimishborad/SpaceExploration'
  ),
  Project(
    title: "Shopping App",
    description:
        '''
This is a demo shopping app which consists of shopping page,
product details page and cart page, By clicking cart button product
shows up in cart page and sum up the price of all products available
there.

''',
link: 'https://github.com/naimishborad/ShoppingCartApp-Firebase-Firestore'
  ),
  Project(
    title: "News API App",
    description:
        '''This app is an demo app for api fetching. App contains itembuilder
which is responsible for creating cards containing articles coming
from network. The data is coming from an dummy api containing
Title, Date of publish, Description etc…''',
link: 'https://github.com/naimishborad/NewsApicodex'
  ),
  Project(
    title: "Todo App with Firebase",
    description:
        '''This is a Todo app which contains List of tasks,You can add task by clicking an button and it popups a dialog with
textfield.ListTile contains a button with the help of it user can modify status of task ,if task is done than button changes to done icon and 
All changes are being done in app as well as back in firebase.
''',
link: 'https://github.com/naimishborad/TodoAppFlutter'
  ),
  Project(
    title: "Portfolio Web App",
    description:
        '''This is my portfolio web app example that contains dart code.
It is hosted on Firebase.To visit follow >> naimishpo.web.app . This project contains pakages like url_launcher(for make my social active),animated_text_kit,flutter_svg.This web App is fully responsive.
It can adapt all the envirnoments either it is mobile or desktop.
All parameters for Responsive design saved in a file called Responsive.dart in the projects''',
        link: 'https://github.com/naimishborad/PortfolioCode'
  ),
 
];