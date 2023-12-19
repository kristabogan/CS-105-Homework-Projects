import java.util.Scanner;

/**
 * Prints out Pascal Triangle until the Nth number row & saves it as a string.
 *
 * @author Krista Bogan
 * @version 5/2/22
 */
public class pascalRow
{
    /**
     * Main method that takes in the number of desired rows
     * and prints out the Pascal's triangle up to the Nth row. Saves
     * the number row as string s.
     * 
     * @param  int n        number of rows
     * @return              prints out the row as string, "s"
     */
 
public static void main(int n) {
    for (int i = 0; i < n; i++) {
        String s;
            for (int j = 0; j <= i; j++) {
                s = value(i, j) + " ";
                System.out.print(s);
            }
            System.out.println();
    }
}

    /**
     * Gets individual values at Pascal Triangle row. Values are -1 to
     * ensure array does not go out of bounds.
     *
     * @param  int i  number of rows -1
     * @param  int j  position of value -1
     * @return    int value of i,j
     */
public static int value(int i, int j) {
        if (j == 0) {
            return 1;
        } else if (j == i) {
            return 1;
        } else {
            return value(i - 1, j - 1) + value(i - 1, j);
        }
    }
}
