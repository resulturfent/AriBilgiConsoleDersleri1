namespace _260206_3_deger_donduren_return_method;

internal class Program
{
    static void Main(string[] args)//Main=> ana=> Burası ana method. Ana method içinde yardımcı methodlar çağrılır
    {
        //method=> Metot
        //function=> Fonksiyon
        //parametre=> dışarıdan girilen değer
        //**********************************
        //Değer döndüren return method=>
        //1)Method adından önce var dışında bir değişken adı (byte,sbyte,short,ushort,int, uint,long, ulong, float, double,decimal,DateTime, bool, object) varsa bu değer döndüren bir method'tur.
        //2)Değer döndüren method kod içinde , kodun bittiğini gösteren return anahtar kelimesini yazmak zorundayız
        int s1 = 98, s2 = 2;
        Console.WriteLine(Cizgi());
        Cizgi();
        int deger1 = 90;

        int islem = Topla(s1, s2);//Toplam() işlem sonucunda int tipinde değer verecektir
        /*
         ---------------ÖNEMLİ!!!----------------------------------------
         Değer döndüren method işlem sonucunda method adından önce yazılan veri tipinde değer getirir,bu özellik kod içinde return methodları değişken gibi kullanma kolaylığı sağlar
         */

        //int islem1 = ToplaVoid(s1, s2);//void method olduğu için bir değşkene eşitlenemez hata verir 
    }


    static string Cizgi()
    {
        return "----------------------------";
    }

    static int Topla(int sayi1, int sayi2)//isimden önce int var, değer döndüren
    {
        int toplam = sayi1 + sayi2;
        Console.WriteLine("2 sayının toplamı:" + toplam);
        return toplam;//int ile belirtilen method return ile min int(daha küçük değer aralığına sahip veri tipleri de yazılabilir) değer alan değişken,sayı verilmelidir. return ile beraber method sonlanır, bundan dolayı return un yazıldığı yer çook önemlidir
    }
    static void ToplaVoid(int sayi1, int sayi2)//Değer döndürmez çünkü void içeriyor
    {
        int toplam = sayi1 + sayi2;
        Console.WriteLine("2 sayının toplamı:" + toplam);
    }
}
