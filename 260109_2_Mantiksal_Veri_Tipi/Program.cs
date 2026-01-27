namespace _260109_2_Mantiksal_Veri_Tipi
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //doğru=> True,yanlış=> False

            bool mantik1 = true;
            bool mantik2 = false;
            Console.WriteLine(mantik1);
            //< küçüktür,> büyüktür

            bool durum1 = 10 > 9;//true
            bool durum2 = 10 < 9;//false
            Console.WriteLine("10>9 Sonuç:"+durum1);
            Console.WriteLine("10<9 Sonuç:"+durum2);


        }
    }
}
