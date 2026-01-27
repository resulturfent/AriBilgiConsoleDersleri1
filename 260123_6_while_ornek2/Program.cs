namespace _260123_6_while_ornek2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             1) 1-100 arasındaki sayıları ekrana yazın ve toplamlarını hesaplayınız
            2) 55-255 arasındaki 5 in katları ekrana yazın ve toplamlarını hesaplayınız
            3) 500 den 0 a doğru 13 katlarını ekranda yazınız(tersten sayımm olacak)
            4)1-10000 arasında asal sayıların toplamını hesaplayınız?(zorr soru)
             */

            int sayi = 2;
            int toplam = 0;

            while (sayi < 100)
            {
                Console.WriteLine(sayi);
                toplam += sayi;
                sayi++;
            }
            //int sayi1 = 2;
            //while (sayi1 < 100)
            //{
            //    sayi1++;
            //}
            Console.WriteLine("1-100 arasındaki sayıların toplamı:" + toplam);

            Console.WriteLine("Asal Sayıları sorusu:");
            //1,2,3,...,10000
            //1 asal değil??
            //2 asaldır
            //3=>2 yok=> 3
            //4=>2,3 var=>4 değil
            //5=>2,3,4 yok=>asaldır
            //6=>2,3,4,5 var=>asal değil
            //sayi2=11=>2,3,4,5,6,7,8,9,10

            int sayi2 = 2;
            //Bir sayı 1 ve kendisinden başka bölüneni yoksa asaldır
            int toplamAsalSayilar = 0;
            while (sayi2 < 1000)
            {
                int bolenSayi = 2;
                bool asalMi = true;

                while (sayi2 > bolenSayi)
                {
                    if (sayi2 % bolenSayi == 0)//eğer sayi2 bolenSayi ya tam bölünüyorsa bu sayi2 nin asal olmadığını ispatlar
                    {
                        asalMi = false;
                        break;//içinde bulunduğu döngüyü sonlandırır.sayi2>bolenSayi koşullu döngüyü sonlandırır, diğer döngüye devam eder.
                    }

                    bolenSayi++;
                }
                if (asalMi)
                {
                    toplamAsalSayilar = toplamAsalSayilar + sayi2;
                    Console.Write(sayi2 + ",");
                }
                sayi2++;
            }

            Console.WriteLine();
            Console.WriteLine("Toplam Asal Sayılar:" + toplamAsalSayilar);
            
        }
    }
}
