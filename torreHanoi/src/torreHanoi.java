
import java.util.Scanner;


public class torreHanoi {

    public void resolver(int discos, String A, String B, String C) {
        if (discos == 1) {                                     //Si solo hay un disco lo envia a la torre 3
            System.out.println("Torre  " + A + " a " + C);
        } else {
            resolver(discos - 1, A, C, B);                      //Resta un disco y lo mueve a la torre C
            System.out.println("Torre  " + A + " a "  + C);     //Cambia la enumeracion de los discos y vuelve a ejecutar 
            resolver(discos - 1, B, A, C);
        }
    }

    public static void main(String[] args) {
        torreHanoi th = new torreHanoi();
        System.out.print("Ingrese el  número de discos:");
        Scanner sc = new Scanner(System.in);
        int discos = sc.nextInt();
        System.out.println("Solucion:");
        th.resolver(discos, "1", "2", "3");
    }

}
