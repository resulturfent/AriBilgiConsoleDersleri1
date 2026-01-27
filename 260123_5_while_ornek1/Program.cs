namespace _260123_5_while_ornek1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //5-135 arasındaki sayıları ekrana yazınız?
            int sayi = 5;
            //bu sayıların toplamını hesaplayalım?
            int toplam = 0;
            while (sayi<=135)
            {
                //toplam = toplam + sayi;
                toplam += sayi;
                Console.Write(sayi+",");
                sayi++;
            }
            Console.WriteLine("5-135 arasındaki sayıların toplamı:"+toplam);

        }
    }
}
