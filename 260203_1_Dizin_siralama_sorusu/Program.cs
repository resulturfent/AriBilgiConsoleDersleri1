namespace _260203_1_Dizin_siralama_sorusu;

internal class Program
{
    static void Main(string[] args)
    {
        int elemanSayisi = 5;
        int[] dizi = new int[elemanSayisi];
        //int[] dizi = { 11, 3, 9, 5, 2 };

        for (int i = 0; i < dizi.Length; i++)
        {
            Console.WriteLine(i + 1 + ". sayıyı giriniz:");
            dizi[i] = Convert.ToInt32(Console.ReadLine());
        }
        //Dizi=>11,3,9,5,2
        for (int i = 0; i < dizi.Count(); i++)
        {
            //dizi[i]=>11

            for (int k = 0; k < dizi.Count(); k++)
            {
                int gecici;
                if (dizi[k] > dizi[i])
                {
                    gecici = dizi[k];
                    dizi[k] = dizi[i];
                    dizi[i] = gecici;
                }

            }
        }


        for (int i = 0; i < dizi.Length; i++)
        {
            Console.Write(dizi[i]+"-");
        }
    }
}
