namespace _260129_4_for_ters_gosterme;

internal class Program
{
    static void Main(string[] args)
    {
        //0-50 arasında her ekrana yazılacak sayı için büyükten küçüğe doğru 0 'a kadar ekranda sayıları gösteriniz
        /*
         0-50 arası
            0-0
            1-1,0
            2-2,1,0
            3-3,2,1,0
            4-4,3,2,1,0
            5-5,4,3,2,1,0
            .
            .
            14
            15-15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0
            .
            .
            50-50,49,48,47,46,45,44,43,...,5,4,3,2,1,0
         */

        for (int i = 0; i <= 25; i++)
        {
            Console.Write(i+"=>");

            for (int k = i; k >= 0; k--)
            {
                Console.Write(k + ",");
            }

            Console.WriteLine("");
        }





    }
}
