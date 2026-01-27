using System.Net.Http.Headers;

namespace _260127_1_Super_sayi_While
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //kendisi hariç bölünenlerin toplamı kendisini veren sayılara süper sayı denir. 1-100000 arasındaki süper sayıları listeleyiniz?


            long  sayi = 0;

            while (sayi<1000000)
            {
                long bolenSayi = 1;
                long toplam = 0;
                while (sayi > bolenSayi)
                {
                    if (sayi%bolenSayi==0)
                    {
                        toplam=toplam + bolenSayi;
                    }
                    bolenSayi++;
                }
                if (toplam == sayi)
                {
                    Console.WriteLine("Süper Sayı:"+sayi);
                }
                sayi++;

            }
            Console.ReadLine();
        }
    }
}
