public class Main {
  public static void main(String[] args) {
    for (String arg : args) {
      switch (arg) {
        case "--lines":
          break;
        case "--help":
          System.out.println("Two");
          break;
        case "-h":
          break;
        default:
          break;
      }
    }   
  }
}
