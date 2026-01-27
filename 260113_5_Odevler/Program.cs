namespace _260113_5_Odevler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             Kullanıcıdan alınan 4 sayı için aşağıdaki işlemlerin sonuçlarını hesaplayıp ekranda gösteriniz
            1-4 sayının toplamı
            2-1.,2. sayılarının çarpım sonucuna 4. sayıyı bölmek
            3-1.,2. sayıların toplam sonucu, 3. sayıdan 4. sayının çıkartılması sonucuna bölüm sonucu
            4-4. sayıya diğer 3 sayının toplamına bölünmesi
            5-1.,2.,3. sayıların çarpımının sonucunun 4 sayıya bölünmesi
             */

            Console.WriteLine("1.sayıyı giriniz?");
            int s1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("2.sayıyı giriniz?");
            int s2 = int.Parse(Console.ReadLine());

            Console.WriteLine("3.sayıyı giriniz?");
            int s3 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("4.sayıyı giriniz?");
            int s4 = int.Parse(Console.ReadLine());
            //1.Soru
            // Console.WriteLine("4 sayının toplamı"+(s1+s2+s3+s4));
            int cevap1 = s1 + s2 + s3 + s4;
            Console.WriteLine("4 sayının toplamı:" + cevap1);
            //2.soru
            Console.WriteLine("1.,2. sayılarının çarpım sonucuna 4. sayıyı bölmek:"+(s1*s2)/(double)s4);
            //3.soru
            int toplam12 = s1 + s2;
            int fark34 = s3 - s4;
            double cevap3= toplam12 /(double) fark34;

            Console.WriteLine("1.,2. sayıların toplam sonucu, 3. sayıdan 4. sayının çıkartılması sonucuna bölüm sonucu:"+cevap3);
            //4.Soru
            int topl123 = s1 + s2 + s3;
            double cevap4 = s4 / (double)topl123;
            Console.WriteLine("4. sayıya diğer 3 sayının toplamına bölünmesi:"+cevap4);
            //5.Soru
            int carp123 = s1 * s2 * s3;
            double cevap5 = carp123 / (double)s4;
            Console.WriteLine("1.,2.,3. sayıların çarpımının sonucunun 4 sayıya bölünmesi:"+cevap5);


        }

    }
}
