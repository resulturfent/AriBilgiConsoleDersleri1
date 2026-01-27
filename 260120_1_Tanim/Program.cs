namespace _260120_1_Tanim
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //karar yapıları ve koşul yapıları
            //if else, switch case, ternary operatör
            /*
             1-if else=> eşitlik, karşılaştırma, oran,...
               if else
               if -else if -...-else
            2-switch case => eşitlik durumu
            3-ternary operatör=> if else kısaltılmış hali             
             */
            if (true)//if içinde true yerine koşul yazılır(sayi==1, sayi>0,sayi<-10 vb). Eğer bbu koşul doğru ise if bloğundaki kodlar okunur
            {
                //if blok kodları
            }
            else//else değilse anlamına gelir bu da if için false(Hayır-koşul false sonucunu verdi ) demektir.false olması durumunda else bloğundaki kodlar okunur
            {
                //else blok kodları
            }

            Console.WriteLine("Sayı giriniz?");
            int sayi1 = Convert.ToInt32(Console.ReadLine());


            if (sayi1 > 0) //evet, hayır karar yeri
                           //buraya kod yazılmaz
            {
                //evet ise bu alan okunacaktır
                Console.WriteLine("Sayı 0 dan büyüktür");
            }
            //buraya kod yazılmaz
            else//buraya kod yazılmaz, işaret koyulmaz
            //buraya kod yazılmaz
            {
                //hayır ise bu alan okunacaktır
                Console.WriteLine("Sayı 0 dan küçüktür");
            }

        }
    }
}
