namespace _260130_6_dizi_random;

internal class Program
{
    static void Main(string[] args)
    {
        //Random=> rastgele sayı üretmek için kullanılan bir class yapısıdır
        Random rastgele = new Random();
        Console.WriteLine(rastgele.Next(200));

        for (int i = 0; i < 150; i++)
        {
            int sayi = rastgele.Next(200);
            Console.Write(sayi+",");
        }

        /*
        1)rastgele üretilen 200 sayı arasında tek olanları ve çift olanları ayrı ayrı diziler içinde dizi eleman sayısı az/çok olmayacak şekilde oluşturan yapıyı kodlayınız(2 döngü ile işlem yapılıyor)
        2)Kullanıcıdan alınan 5 sayıyı dizi-döngü kullanarak küçükten büyüğe doğru sıralayınız?
        3)Kullanıcıdan bir fabrikadan çalışan sayısı alındıktan sonra çalışanların isimlerini bir bir isteyip(1. personel Ahmet) girilen isimleri aldıktan sonra her bir personelin aldığı maaşı(Ahmet ne kadar maaş alıyor-49000) şeklinde istedikten sonra son olarak her bir isim karşısında isim için girilen maaşı listeleyen(Ahmet-49000) şeklinde veren yapıyı kodlayınız         
         */

    }
}
