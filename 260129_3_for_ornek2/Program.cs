namespace _260129_3_for_ornek2;

internal class Program
{
    static void Main(string[] args)
    {
        //1-15000 arasındaki sayıların 5'in katı olup, 2 in katı olmayan sayıların sayısı ve toplamlarını hesaplayınız?
        //Algoritma=> 5 in katı, 2 nin katı olamayacak=> 10,20,30,40,50,60,.....
        //bug=> böcek

        int adet = 0, toplam = 0;

        for (int i = 0; i < 15000; i++)
        {
            //if (i % 5 == 0 && i % 2 != 0)
            //{
            //    adet++;
            //    toplam += i;
            //}
            if (i % 5 == 0)
            {
                if (i % 2 != 0)
                {
                    adet++;
                    toplam += i;
                }
            }
        }

        Console.WriteLine("1-15000 arasındaki 5'in katı olup 2'nin katı olmayan sayı adeti:{0} ve toplamları:{1}",adet,toplam);


    }
}
