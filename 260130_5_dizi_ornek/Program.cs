namespace _260130_5_dizi_ornek;

internal class Program
{
    static void Main(string[] args)
    {
        //kullanıcıdan 11 sayı alınız, girilen 11 sayıyı listelerken çift oln sayıların sağında ÇİFT, tek olan sayıların solunda TEK yazısı yazdırın

        int[] sayilar = new int[11];
        int elemanSayisi = sayilar.Length;

        for (int i = 0; i < sayilar.Length; i++)
        {
            Console.WriteLine(i+1+".sayı:");
           // sayilar[i] = Convert.ToInt32(Console.ReadLine());//uzun yapısı aşağıdaki gibi            
            int sayi = Convert.ToInt32(Console.ReadLine());            
            sayilar[i] = sayi;
        }

        for (int i = 0; i < elemanSayisi; i++)
        {
            //if (sayilar[i]%2==0)
            //{
            //    Console.WriteLine(sayilar[i]+"-ÇİFT");
            //}
            //else
            //{
            //    Console.WriteLine(sayilar[i]+"-TEK");
            //}
            string yaz = sayilar[i] % 2 == 0 ? "-ÇİFT" : "-TEK";
            Console.WriteLine(sayilar[i]+yaz);
        }


    }
}
