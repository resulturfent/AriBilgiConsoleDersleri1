namespace _260115_2_Karsilastirma_Operatorleri
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             2)Karşılaştırma operatörleri: 
            == eşit mi, 
            != eşit değil mi, 
            > büyük mü, 
            < küçük mü, 
            >= büyük eşit mi, 
            <= küçük eşit mi
            */
            int sayi1 = 45;
            int sayi2 = 30;
            string metin1 = "yazılım";
            DateTime tarih = DateTime.Now;

            bool sonuc = sayi1 == 10;//false
            Console.WriteLine("45==10 =>"+sonuc);

            sonuc = sayi1 != sayi2;//true
            Console.WriteLine("45!=30 =>"+sonuc);

            Console.WriteLine("10>=5 =>"+(10>=5));
            Console.WriteLine("10>5 =>"+(10>5));
            sonuc = metin1 == "software";//false
            Console.WriteLine("yazılım==software =>"+sonuc);
            Console.WriteLine("01.01.2026 01:20:00"+tarih+" =>"+ (Convert.ToDateTime("01.01.2026 01:20:00")==tarih));
            //ctrl+F5 ile test işlemlerini sık sık yapalım
            //test

        }
    }
}
