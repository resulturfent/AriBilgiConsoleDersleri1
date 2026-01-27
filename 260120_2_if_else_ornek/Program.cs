namespace _260120_2_if_else_ornek
{
    internal class Program
    {
        static void Main(string[] args)
        {
            bool sonuc = 10 > 5 || "Ali" == "Veli";

            //if (sonuc==true)
            if (10 > 5 || "Ali" == "Veli")
            {
                Console.WriteLine("İşlem doğru");
            }
            else
            {
                Console.WriteLine("İşlem yanlış");
            }

            //kullanıcıdan alınan bir sayının 2 basamaklı bir sayı olup olmadığını kontrol ediniz ve ekranda gösteriniz
            //10 ile 99 arasında ise 2 basamaklı
            BASLA:
            Console.WriteLine("Sayı giriniz?");
            int sayi=Convert.ToInt32(Console.ReadLine());

            if (sayi>=10 && sayi<=99)
            {
                Console.WriteLine("Sayı 2 basamaklıdır:"+sayi);
            }
            else
            {
                Console.WriteLine("Sayı 2 basamaklı değildir!!!:" + sayi);
            }

            Console.WriteLine("---------------------");
            goto BASLA;
        }
    }
}
