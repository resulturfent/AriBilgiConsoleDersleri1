namespace _260130_4_dizi_ornek3;

internal class Program
{
    static void Main(string[] args)
    {
        double[] dizi = new double[6];
        //6 elemanı ekleyip, eklenen elemanları ekranda gösteriniz?
        //dizi[0] = 45;
        //dizi[1] = 55;
        //dizi[2] = 65;
        //dizi[3] = 15;
        //dizi[4] = 85;
        //dizi[5] = 105;

        for (int i = 0; i < dizi.Length; i++)
        {
            Console.WriteLine(i+1+".eleman:");
            dizi[i] = Convert.ToDouble(Console.ReadLine());
        }

        for (int i = 0; i < dizi.Count(); i++)
        {
            Console.WriteLine(dizi[i]);
        }
    }
}
