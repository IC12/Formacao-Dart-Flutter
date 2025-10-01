import 'dart:io';

void main() {
  List<String> notes = <String>[];
  header();
  menu(notes);
}

String getCommand() {
  String options = "1 - Add Notes, 2 - List Notes, 3 - Close";
  print("Enter a command: $options");
  List<String> commands = <String>["1", "2", "3"];
  String? input = "";

  input = stdin.readLineSync();

  if (input == null || !commands.contains(input)) {
    print("Invalid command!");
    return getCommand();
  }

  return input;
}

List<String> addNote(List<String> notes) {
  print("Write a note:");
  String? note = "";

  note = stdin.readLineSync();

  if (note == null || note.isEmpty) {
    print("Unable to add an empty note!");
    return addNote(notes);
  }

  notes.add(note);
  return notes;
}

void listNotes(List<String> notes) {
  if (notes.isEmpty) {
    print("No notes yet.");
    return;
  }
  for (var i = 0; i < notes.length; i++) {
    print(notes[i]);
  }
}

void menu(List<String> notes) {
  print("");
  String command = getCommand();
  print("");

  switch (command) {
    case "1":
      addNote(notes);
      menu(notes);
      break;

    case "2":
      listNotes(notes);
      menu(notes);
      break;

    case "3":
      print("See you soon!");
      break;
  }
}

void header() {
  print("");
  print("███╗   ██╗ ██████╗ ████████╗███████╗███████╗");
  print("████╗  ██║██╔═══██╗╚══██╔══╝██╔════╝██╔════╝");
  print("██╔██╗ ██║██║   ██║   ██║   █████╗  ███████╗");
  print("██║╚██╗██║██║   ██║   ██║   ██╔══╝  ╚════██║");
  print("██║ ╚████║╚██████╔╝   ██║   ███████╗███████║");
  print("╚═╝  ╚═══╝ ╚═════╝    ╚═╝   ╚══════╝╚══════╝");
  print("                                            ");
}
