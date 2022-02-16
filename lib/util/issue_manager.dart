class IssueManager {
  IssueManager._internal();
  static IssueManager _instance = IssueManager._internal();
  static get instance => _instance;
  List<String> _issues = [];

  add(String issue) {
    _issues.add(issue);
  }

  remove(String issue) {
    _issues.remove(issue);
  }

  List<String> issues() {
    return _issues;
  }
}
