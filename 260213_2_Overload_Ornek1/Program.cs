namespace _260213_2_Overload_Ornek1;

internal class Program
{
    static void Main(string[] args)
    {
        //Kullanıcıdan alınan 2 sayı için DortIslem() adında method ile kodlayarak alınız
        /*
         1-Bu 2 sayının toplamını DortIslem() adında method ile hesaplayınız?
         2-Bu 2 sayının çarpımını DortIslem() adında method ile hesaplayınız?
         3-Bu 2 sayının farkını DortIslem() adında method ile hesaplayınız?
         4-Büyük sayının küçük sayıya bölümünde kalanı veren DortIslem() adında method ile kodlayınız?
         5-Büyük sayının küçük sayıya bölümünden bölümü veren DortIslem() adında method ile kodlayınız?
         
         */
        short sayi1 = DortIslem();
        short sayi2 = DortIslem();

    }
    /// <summary>
    /// Kullanıcının girdiği sayıyı short tipinde verir
    /// </summary>
    /// <returns></returns>
    static short DortIslem()
    {
        DortIslem("Sayı giriniz?");
        return Convert.ToInt16(Console.ReadLine());
    }

    /// <summary>
    /// Ekrana girilen metni verir
    /// </summary>
    /// <param name="metin"></param>
    static void DortIslem(string metin)
    {
        Console.WriteLine(metin);
    }
}
