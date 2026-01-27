namespace _260116_2_Odevler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Kullanıcıdan alınan 5 sayi için aşağıdaki işlemleri yapı ve sonuçları ekranda gözteriniz
            /*
            1) 5 sayıdan 2 nin katı olanlar için true, olmayan için false verecek şeklinde bir işlme düşünüp kodlayınız
            2)1. sayıdan 5. sayıya kadar olan sayıların toplamını bulunuz
            3)1. sayıya 5 ekleyin,2. sayıdan -10 çıkartın, 3. sayıyı da 5 ile çarparak işlemlerin sonucunu ekranda gösteriniz? NOT: yeni bir değişken tanımlamadan bu soru yapılacak
            4)5 sayının toplam sonıucu 9,11,13 e ayrı ayrı bölündüğünü true, false şeklinde hesaplayınız
            5)1.,2.,3. sayıların toplamı,4. sayıdan 5. sayı çıkartılınca kalan sonuca bölerek  sonucu ekranda gösteriniz 
            
             
             */
            Console.WriteLine("1.sayı:");
            int s1=Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("2.sayı:");
            int s2 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("3.sayı:");
            int s3 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("4.sayı:");
            int s4 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("5.sayı:");
            int s5 = Convert.ToInt32(Console.ReadLine());

            double cevap5 = (double)(s1 + s2 + s3) / (s3 - s5);

            //3.Soru
            s1 += 5;
            s2 -= 10;
            s3 *= 5;
            Console.WriteLine("sayı 1 için yenideğer:"+s1);
            //Console.WriteLine("sayı 1 için yenideğer:"+(s1+5));
            Console.WriteLine("sayı 2 için yenideğer:"+s2);
            Console.WriteLine("sayı 3 için yenideğer:"+s3);
            //5 Soru
            Console.WriteLine("5.soru cevabı:"+cevap5);


        }
    }
}
