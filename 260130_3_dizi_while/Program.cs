namespace _260130_3_dizi_while;

internal class Program
{
    static void Main(string[] args)
    {
        //kullanıcıdan alınan 7 sayıyı aldıktan sonra ekranda gösterip toplamlarını hesaplayınız??
        int[] sayilar = new int[7];
        int elemanSayisi = sayilar.Count();
        int toplam = 0;
        int sayac = 0;

        while (sayac<elemanSayisi)
        {
            Console.WriteLine(sayac + 1 + ".sayıyı giriniz");
            sayilar[sayac] = Convert.ToInt32(Console.ReadLine());
            toplam += sayilar[sayac];
            sayac++;
        }
        int i = 0;
        Console.WriteLine("Girilen sayılar");
        do
        {
            Console.WriteLine(i+i+".eleman:"+sayilar[i]);
            i++;

        } while (i<elemanSayisi);
        Console.WriteLine("Girilen sayıların toplamı:"+toplam);
    }
}
