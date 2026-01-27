
namespace _260113_4_Ornek
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Kullanıcıdan alınan 3 adet sayı için
            //1)1. ve 2. sayıların toplamı
            //2)1. ve 3. sayıların toplamı
            //3)2. ve 3. sayıların toplamı
            //yukardaki 3 soruyu hesaplayan kodu ayrı ayrı kodlayınız ve sonuçlarını ekranda gösteriniz?
            //+=>Toplam
            //-=> farkı
            //*=>çarp
            //   / => Bölme
            //*********************************************************************
            //4)1. sayının 2. sayıya bölümü
            //5)1.sayının 3. sayıdan çıkartılması
            //6)2. ve 3. sayıların toplamının, 1. sayıya bölünmesi sonucunu
            //7)1. ve 2. sayıların çarpımını sonucu, 3. sayıya bölünmesinin hesaplayıp ekranda gösteriniz?
            //*********************************************************************

            Console.WriteLine("1.sayıyı giriniz?");
            int sayi1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("2.sayıyı giriniz?");
            int sayi2 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("3.sayıyı giriniz?");
            int sayi3 = Convert.ToInt32(Console.ReadLine());

            int toplam1 = sayi1 + sayi2;
            Console.WriteLine("1. ve 2. sayının toplami:" + toplam1);

            int toplam2 = sayi1 + sayi3;
            Console.WriteLine("1. ve 3. sayının toplami:" + toplam2);

            int toplam3 = sayi2 + sayi3;
            Console.WriteLine("2. ve 3. sayının toplami:" + toplam3);
        }
    }
}
