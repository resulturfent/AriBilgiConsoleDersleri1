namespace _260108_2_Tam_Sayi_Degiskenler
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //değişken nedir?
            byte yas = 35;//0-255 arası değer alır
            short yil = 2026;//short -32.768 ile 32.767 arası değer alır
            int mesafeHakkari = 75000;//10 basamaklı
            long tcNo = 12345678901;//11 basamaklı tc için long kullanılır. long 19 basamaklı bir max sayı alır

            sbyte negatifByte = -89;
            ushort pozitifShort = 65535;//0-65535 arası değer alır
            uint pozitifInt = 4294967295;//10 basamaklı değer alır.min 0 alır
            ulong pozitifLong = 18446744073709551615;//20 basamaklı bir değer alır.min 0 alır
            //başlarındaki u=> usigned demek pozitif değer alır
            //DEĞİŞKEN NEDİR??
            //proje içinde data,değer,... taşımak için kullanılan kod yapılarıdır.

            Console.WriteLine(negatifByte);
            Console.WriteLine(mesafeHakkari);
            //değişken yazma kuralları
            //1) başında sayı olamaz
            int sayi1 = 900;
            //2)boşluk ve özel karakter kullanılamaz. Özel karakterlerden alt tire kullanılabilir sadece
            //int sayi 2 = 800;//kullanılamaz
            //int sayi*2 = 800;//kullanılamaz
            int sayi_2 = 800;
            //3) türkçe karakter kullanılamaz
            int sayi3 = 899;//hata vermez ama kullanılamaz
            //ş,İ,ü,ğ,ç,ö,ı gibi karakterler kullanılmaz
            //s,I,u,g,c,o,i gibi karakterler kullanılabilir

        }
    }
}
