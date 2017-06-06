
import java.util.Scanner;


public class torreHanoi {

    public void resolver(int discos, String inicio, String auxiliar, String fin) {
        if (discos == 1) {
            System.out.println(inicio + "----" + fin);
        } else {
            resolver(discos - 1, inicio, fin, auxiliar);
            System.out.println(inicio + "----" + fin);
            resolver(discos - 1, auxiliar, inicio, fin);
        }
    }

    public static void main(String[] args) {
        torreHanoi th = new torreHanoi();
        System.out.print("Ingrese el  número de discos:");
        Scanner sc = new Scanner(System.in);
        int discos = sc.nextInt();
        th.resolver(discos, "A", "B", " C");
    }

}
