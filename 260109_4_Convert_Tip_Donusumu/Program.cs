namespace _260109_4_Convert_Tip_Donusumu
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //bilgisayar dili string yani text(metin) tir

            Console.WriteLine("Ekrana yazıyor");

            Console.WriteLine("Ekrana adınızı yazınız?");
            string isim = Console.ReadLine();//Read=> okuma, Line=> satır, çizgi, hat

            Console.WriteLine("ekrana yazılan isim:" + isim);
            Console.WriteLine("Sayı giriniz");
            string ekranaYazilanSayi = Console.ReadLine();
            Console.WriteLine("Sayı:" + ekranaYazilanSayi);//bu işlem için ekranaYazilanSayi sayısal değere dönüştürülmesi gereklidir
            //Tip Dönüşümü ile tipler kendi aralarında birbirlerine dönüştürülür
            /*
             * Tip Dönüşümleri 4 başlık ile işlenecek
            1-Convert
            2-Parse
            3-Casting
            4-ToString()
             */

            Console.WriteLine("Bir sayı giriniz");
            int sayi1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Bir sayı giriniz");
            int sayi2 = Convert.ToInt32(Console.ReadLine());

            int toplam = sayi1 + sayi2;
            Console.WriteLine("Girilen 2 sayının toplamı:" + toplam);

            byte s1 = Convert.ToByte(Console.ReadLine());
            sbyte s2 = Convert.ToSByte(Console.ReadLine());
            short s3 = Convert.ToInt16(Console.ReadLine());
            ushort s4 = Convert.ToUInt16(Console.ReadLine());
            int s5 = Convert.ToInt32(Console.ReadLine());
            uint s6 = Convert.ToUInt32(Console.ReadLine());
            long s7 = Convert.ToInt64(Console.ReadLine());
            ulong s8 = Convert.ToUInt64(Console.ReadLine());
            //ondalık
            float s9 = Convert.ToSingle(Console.ReadLine());
            double s10 = Convert.ToDouble(Console.ReadLine());
            decimal s11 = Convert.ToDecimal(Console.ReadLine());
            //Tarih
            DateTime tarih = Convert.ToDateTime(Console.ReadLine());
            //
            bool mantiksal = Convert.ToBoolean(Console.ReadLine());
            //metinsel
            string metin1 = Convert.ToString(12);
            char metin2 = Convert.ToChar(Console.ReadLine());
        }
    }
}
