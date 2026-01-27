namespace _260109_1_Tarih_Veri_Tipi
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Tarih veri tipi 
            int sayi = 90;
            string metin= "Merhaba";
            //09.01.2026
            DateTime tarih = DateTime.Now;//Şimdinin tarihini verir

            DateTime xTarih = new DateTime();//nesne?? Sonra nesne konusu işlenecek

            Console.WriteLine("Şuanın bütün ayrıntısını verecek şekilde tarih bilgisi:"+tarih);
            Console.WriteLine("Yıl:"+tarih.Year);
            Console.WriteLine("Ay:"+tarih.Month);
            Console.WriteLine("Gün:"+tarih.Day);
            Console.WriteLine("Saat:"+tarih.Hour);
            Console.WriteLine("Dakika:"+tarih.Minute);
            Console.WriteLine("Saniye:"+tarih.Second);
            Console.WriteLine("Yılın Günü:"+tarih.DayOfYear);
            Console.WriteLine("Haftanın Günü:"+tarih.DayOfWeek);
            //Ay-Gün-Yıl=> İngiliz
            //Gün-Ay-Yıl=>Türkiye

        }
    }
}
