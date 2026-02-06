namespace _260206_2_deger_dondurmeyen_void_method;

internal class Program
{
    static void Main(string[] args)
    {
        //Değer döndürmeyen void method, method adından önce void ifadesi içeriyorsa değer döndürmeyen method olur
        Cizgi();
        AdSoyadBuyukHarf("Resül", "Türfent");
        Cizgi();
        Console.WriteLine("Adınız:");
        string ad = Console.ReadLine();

        Console.WriteLine("Soyadınız:");
        string soyad = Console.ReadLine();
        AdSoyadBuyukHarf(ad, soyad);
    }

    /// <summary>
    /// Tire ile çizgi çeker
    /// </summary>
    static void Cizgi()
    {
        Console.WriteLine("-------------------------------");
    }

    /// <summary>
    /// ad ve soyadın büyük harf yapar
    /// </summary>
    /// <param name="ad"></param>
    /// <param name="soyad"></param>
    static void AdSoyadBuyukHarf(string ad,string soyad)
    {
        Console.WriteLine("Ad:{0} ve Soyad:{1}",ad.ToUpper(),soyad.ToUpper());
    }
}
