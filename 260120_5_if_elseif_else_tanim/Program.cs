namespace _260120_5_if_elseif_else_tanim
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
            if (true)
            {

            }
            else if (false)
            {

            }
            else if (true)
            {

            }
            else
            {

            }*/
            START:
            Console.WriteLine("Sayı giriniz");
            int sayi=Convert.ToInt32(Console.ReadLine());
            if (sayi>=0 &&sayi<=9)
            {
                Console.WriteLine("tek basamaklı");
            }
            else if (sayi>=10 && sayi<=99)
            {
                Console.WriteLine("Çift basamaklı");
            }
            else if (sayi>=100 && sayi<=999)
            {
                Console.WriteLine("Sayı 3 basamaklı");
            }
            else if (sayi >= 1000 && sayi <= 9999)
            {
                Console.WriteLine("Sayı 4 basamaklı");
            }
            else if (sayi >= 10000 && sayi <= 99999)
            {
                Console.WriteLine("Sayı 5 basamaklı");
            }
            else if (sayi >= 100000 && sayi <= 999999)
            {
                Console.WriteLine("Sayı 6 basamaklı");
            }
            else
            {
                Console.WriteLine("artık yeter :))))");
            }

            goto START;

            /*
            1) Kullanıcıdan alınan haftanın kaçıncı günündesiniz yapısına  göre günün adını veren (1=> pazartesi,2=> Salı,...) şekilde kodlamayı yapınız
            2) Kullanıcıdan alınan ay numarasına göre ayın adını ve kaç gün olduğunu ekranda gösteriniz? (1=> ocak=>31 gün, 2=> şubat=>28 gün,...)
            3) Kullanıcıdan alınan bir sayının pozitif,negatif veya 0 olduğunu ekranda gösteriniz
            
             */
        }
    }
}
