
import java.util.Scanner;

public class nReinas {

    int[] tablero;

    public nReinas(int reinas) {
        tablero = new int[reinas];
    }

    public boolean confirmarReina(int r, int c) {  //Verifica si se puede colocar la reina 

        for (int i = 0; i < r; i++) {
            if (tablero[i] == c || (i - r) == (tablero[i] - c) || (i - r) == (c - tablero[i])) {
                return false;
            }
        }
        return true;
    }

    public void imprimirTablero(int[] x) {          //Imprime el tablero final con las reinas
        int N = x.length;
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                if (x[i] == j) {
                    System.out.print("|R|");
                } else {
                    System.out.print("|°|");
                }
            }
            System.out.println();
        }
        System.out.println();
    }

    public void colocarReina(int r, int n) {
        /*
        Si c es menor al numero de reinas confirma que se pueda poner la reina en esa pocision ubica 
        la reina , comprueba con la siguiente hasta completar el tablero , de lo contrario suma 1 a la posicion
        de la reina y repite el metodo 
         */
        for (int c = 0; c < n; c++) {
            if (confirmarReina(r, c)) {
                tablero[r] = c;
                if (r == n - 1) {
                    System.out.println("Solucion");
                    imprimirTablero(tablero);
                } else {
                    colocarReina(r + 1, n);
                }
            }
        }
    }

    public static void main(String[] args) {
        System.out.print("Ingrese el numero de Reinas " + "(Minimo 4) :");
        Scanner sc = new Scanner(System.in);
        int reinas = sc.nextInt();
        nReinas nR = new nReinas(reinas);
        nR.colocarReina(0, reinas);
    }
}
