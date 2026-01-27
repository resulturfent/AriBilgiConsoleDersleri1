namespace _260109_3_Diger_Data_Tipleri
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //object=> Nesne
            //var => variable=> değişken
            //object bütün veri tiplerin atasıdır
            object deger1 = 5;//sayı
            object deger2 = "Merhaba";//metin
            object deger3 = 4.5;//ondalıklı sayı
            object deger4 = true;
            object deger5=DateTime.Now;
            object deger6 = 'A';

            Console.WriteLine(deger1);
            Console.WriteLine(deger1.GetType());//int
            Console.WriteLine(deger3.GetType());//double
            Console.WriteLine(deger5.GetType());//DateTime

            int sayi1 = (int)deger1*9;
            double sayi2 = (double)deger3;
            Console.WriteLine("object olan data int olarak kullanıldı:"+sayi1);
            //object tanımlarken eğer tip olarak görülen değere eşitlenirse rol verme(cast) olarak adlandırılan işlem yapılması gereklidir(sayi1,sayi2 için yapılan işlem)
            //-----------------------------------
            //var=> 2 programlama dili ya da bir programlama dili ile veritabanı arasında gibi büyük data alışverişlerini sağlamak için kullanılan data tipidir
            var v1 = 10;//int
            var v2 = "Merhaba";//string
            var v3 = 456.78m;//decimal
            var v4 = false;//bool
            var v5 = '4';//char

            Console.WriteLine("var için sonuç:"+v1*9);//object gibi rol verme(cast) işlemine gerek yoktur

        }
    }
}
