class QuestionModel {
  String? question;
  Map<String, bool>? answer;

  QuestionModel(this.question, this.answer);
}

List<QuestionModel> questions = [
  QuestionModel(
    'Flutter is Made up of which Programming Language ?',
    {
      'Java': false,
      'Python': false,
      'Dart': true,
      'Kotlin': false,
    },
  ),
  QuestionModel(
      'Which Flutter feature allows developers to view the immediate impact of code changes without restarting the entire application? ?',
      {
        'Hot Reload': true,
        'Hot Restart': false,
        'Instant Run': false,
        'Flutter Run': false,
      }),
  QuestionModel('What is the primary purpose of Flutter Hot Reload feature ?', {
    'Improve application security': false,
    'Enhance user interface animations': false,
    'Accelerate development by instantly reflecting code changes': true,
    'Optimize memory management': false,
  }),
  QuestionModel(
      'What advantage does Flutter offer for developing applications on multiple platforms?',
      {
        'Native scripting': false,
        'Cross-platform compatibility': true,
        'Cloud integration': false,
        'Machine learning support': false,
      }),
  QuestionModel(
      'What does the Flutter framework provide for building user interfaces?', {
    'Code Snippets': false,
    'Modules': false,
    'Widgets': true,
    'Macros': false,
  }),
  QuestionModel(
      ' Which Flutter feature allows developers to access native device functionality seamlessly?',
      {
        'PluginSync': false,
        'DeviceConnect': false,
        'PlatformIntegration': false,
        'Platform Channels': true,
      }),
  QuestionModel('What is the Meaning of Context ?', {
    'Connectivity between two Widgets': false,
    'Connectivity between two Screens': true,
    'Connectivity between two Icons': false,
    'Connectivity between two Buttons': false,
  }),
  QuestionModel(
      'What is the primary purpose of Flutter’s "Widget" in the context of UI development?',
      {
        'Visual scripting': false,
        'Layout management': true,
        'Code execution': false,
        ' Database management': false,
      }),
  QuestionModel(
      'Which aspect of Flutter contributes to creating a consistent and beautiful user interface across different devices and screen sizes?',
      {
        'Adaptive Components': false,
        'Custom Styling': false,
        'Device Scaling': false,
        'Custom Rendering Engine': true,
      }),
  QuestionModel(' What does Flutter "Hot Restart" feature do?', {
    'Rebuilds the entire app from scratch': true,
    'Reloads only the changed code files': false,
    'Clears the app cache': false,
    'Updates the Flutter framework': false,
  }),
  QuestionModel('What is the primary role of "BuildContext" in Flutter?', {
    'Data management': false,
    ' Layout design': false,
    'Navigation and routing': true,
    'Animation control': false,
  }),
  QuestionModel(
      'What advantage does Flutter offer for debugging and fixing issues in the development process?',
      {
        'Automated bug fixing': false,
        'Detailed error messages': false,
        ' Visual bug tracking': false,
        ' Hot Reload': true,
      }),
  QuestionModel(
      'What is the primary advantage of using Dart as the programming language for Flutter development?',
      {
        'Seamless integration with native code': false,
        'Support for multiple paradigms': false,
        'Just-In-Time (JIT) compilation': false,
        'Native execution speed': true,
      }),
  QuestionModel(
      'Which aspect of Flutter contributes to the easy creation of complex animations and transitions?',
      {
        'Animation Framework ': true,
        'Motion Library': false,
        'Animator Components': false,
        'Tweening Engine': false,
      }),
  QuestionModel(
      ' What Flutter feature allows developers to conditionally rebuild parts of the user interface during runtime?',
      {
        'DynamicRendering': false,
        'ConditionalUI': false,
        'WidgetRebuilder': false,
        'AnimatedBuilder': true,
      }),
  QuestionModel(
      'What is the primary role of the "pubspec.yaml" file in a Flutter project?',
      {
        'Define project dependencies and metadata': true,
        'Manage project layout and structure': false,
        'Store user interface assets': false,
        'Configure build settings': false,
      }),
  QuestionModel(
      'What Flutter feature allows developers to handle user gestures and interactions?',
      {
        'GestureRecognizer': true,
        'InteractionHandler': false,
        'TouchResponder': false,
        'UserInputProcessor': false,
      }),
  QuestionModel(
      ' Which command is used to run a Flutter application in debug mode from the terminal?',
      {
        'flutter launch': false,
        'flutter start': false,
        'flutter run': true,
        'flutter debug': false,
      }),
  QuestionModel(
      'Which Flutter feature allows developers to apply a theme to an entire app or a specific widget subtree?',
      {
        'StyleEngine': false,
        'ThemeData': true,
        'ThemeOverlay': false,
        'StylePaltte': false,
      }),
  QuestionModel(
      'Which method is commonly used to open a database using the "sqflite" package in Flutter?',
      {
        'openDatabase()': true,
        'initDB()': false,
        'startDB()': false,
        'connectDatabase()': false,
      }),
  QuestionModel(
      'Which HTTP method is typically used to retrieve data from a server in a Flutter app?',
      {
        'GET': true,
        'POST': false,
        'UPDATE': false,
        'DELETE': false,
      }),
  QuestionModel(
      'What is the purpose of an "API key" when making requests to certain web APIs?',
      {
        'To identify the user making the request': false,
        'To authenticate and authorize access to the API': true,
        'To encrypt the data being sent to the server': false,
        'To specify the desired response format': false,
      }),
  QuestionModel(
      'Which Flutter package is commonly used for making HTTP requests and handling responses?',
      {
        'Dio': true,
        'Retrofit': false,
        'Chopper': false,
        'HTTParty': false,
      }),
  QuestionModel(
      'What is the purpose of the "Future" class in Dart, often used in asynchronous operations like API calls?',
      {
        'To represent a value or error that might be available in the future':
            true,
        'To define a synchronous computation': false,
        'To create an immutable list of elements': false,
        'To handle exceptions during asynchronous operations': false,
      }),
  QuestionModel(
      ' What does Flutter provide for easy integration with various backend technologies?',
      {
        'RESTful API client': true,
        'Custom scripting language': false,
        ' BackendSync library': false,
        'Backend plugins': false,
      }),
];
