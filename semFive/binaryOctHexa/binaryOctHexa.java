public class DataConversion{
  public static void main(String[] args) {
  System.out.println("Data types conversion example!");
  int in = 50;
  System.out.println("Integer: " + in);
  String by = Integer.toBinaryString(in);
  System.out.println("Byte: " + by);
  String hex = Integer.toHexString(in);
  System.out.println("Hexa decimal: " + hex);
  String oct = Integer.toOctalString(in);
  System.out.println("Octal: " + oct);
  }
}
