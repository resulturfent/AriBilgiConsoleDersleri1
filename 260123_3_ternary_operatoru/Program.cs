using System.Diagnostics;
using System.Threading.Channels;

namespace _260123_3_ternary_operatoru
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //ternary operatörü=> if else yerine kullanılan ?: operatörleridir
            //kullanıcıdan alınan bir sayı pozitif mi , negatif mi hesabını ternary ile yapalım
            
            BASLA:
            Console.WriteLine("sayı giriniz");
            int sayi = int.Parse(Console.ReadLine());
            
            
            // sayi > 0 ? "Pozitif" : "Negatif"
            //koşul? True:False;//ternary operatörü kullanımı
            // koşul    ? Koşul doğru(True) ise yazılcak kod alanı : koşul hatalı(false) ise yazılacak kod alanı

            if (sayi>0)
            {
                Console.WriteLine("Pozitif:"+sayi);
            }
            else
            {
                Console.WriteLine("Negatif:"+sayi);
            }
            Console.WriteLine("-----Ternary ile --------");
            string sonuc;
            //Console.WriteLine(sayi > 0 ? "Pozitif:"+sayi : "Negatif:"+sayi);
            sonuc = sayi > 0 ? "Pozitif" : "Negatif";

            Console.WriteLine(sonuc+":"+sayi);
            Console.WriteLine("--------");
            goto BASLA;

        }
    }
}
