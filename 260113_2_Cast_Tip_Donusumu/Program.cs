namespace _260113_2_Cast_Tip_Donusumu
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             Convert=> bütün tipler arası dönüşümü
            Parse=> string olanı diğer tiplere dönüştürür
            Cast=> sayısal tipler arası dönüşümü sağlar             
             */

            int sayi1 = 950;
            int sayi2 = 150;

            int toplam = sayi1 + sayi2;
            Console.WriteLine("2 sayının toplamı:"+toplam);
            int bolme1 = sayi1 / sayi2;
             
            double bolme2 = sayi1 / sayi2;
            double bolme3 =(double) sayi1 / sayi2;
            double bolme4 =Convert.ToDouble( sayi1 )/ sayi2;//6,333
           
            Console.WriteLine("1.sayıya 2.sayıyı böldüğümüzde:"+bolme1);
            Console.WriteLine("1.sayıya 2.sayıyı böldüğümüzde:"+bolme2);
            Console.WriteLine("1.sayıya 2.sayıyı böldüğümüzde Cast:" + bolme3);
            Console.WriteLine("1.sayıya 2.sayıyı böldüğümüzde Convert:"+bolme4);
            int sayiBolmeTam = (int)bolme4;
            Console.WriteLine("bölme sonucu tam sayı Cast:"+sayiBolmeTam);

        }
    }
}
