// This function returns all the files in a directory as an array of Strings  

void levantarNombresArchivos(String dir) {
  ArrayList<File> allFiles = listFilesRecursive(dir);

  for (File f : allFiles) {
    if (f.isFile()) { 
      println("Name: " + f.getName());
      println("Full path: " + f.getAbsolutePath());
      clips.add (new Clip(f.getAbsolutePath(), f.getName() ));
    }
  }
}

// This function returns all the files in a directory as an array of File objects
// This is useful if you want more info about the file
File[] listFiles(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    File[] files = file.listFiles();
    return files;
  } else {
    // If it's not a directory
    return null;
  }
}

// Function to get a list of all files in a directory and all subdirectories
ArrayList<File> listFilesRecursive(String dir) {
  ArrayList<File> fileList = new ArrayList<File>(); 
  recurseDir(fileList, dir);
  return fileList;
}

// Recursive function to traverse subdirectories
void recurseDir(ArrayList<File> a, String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    // If you want to include directories in the list
    a.add(file);  
    File[] subfiles = file.listFiles();
    for (int i = 0; i < subfiles.length; i++) {
      // Call this function on all files in this directory
      recurseDir(a, subfiles[i].getAbsolutePath());
    }
  } else {
    a.add(file);
  }
}


//void levantarNombresArchivos(String dir) {
//  println("entre al levantador");
//  File file = new File(dir);
//  if (file.isDirectory()) {
//    String names[] = file.list();
//    String path= file.getAbsolutePath();




//    for (int i=0; i<names.length; i++) {
//          println (file.getAbsolutePath());

//      clips.add (new Clip(path, names[i], i ));
//    }
//    // return names;
//  } else {
//    // If it's not a directory
//    //return null;
//  }
//}
