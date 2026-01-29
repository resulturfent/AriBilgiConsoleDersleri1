namespace _260129_6_for_dik_ucgen_ters_say;

internal class Program
{
    static void Main(string[] args)
    {
        //dik üçgenin karakter sayısı max alınacak şekiilde max değerden 0 doğru aynı satırda yazdırınız
        string yildiz = "*";
        
        for (int i = 1; i < 15; i++)
        {
            Console.Write(yildiz+"-->");
            //int adet = yildiz.Length;

            for (int k = i; k >=0; k--)
            {
                Console.Write(k+",");
            }
            Console.WriteLine();

            yildiz += "*";
        }
    }
}
