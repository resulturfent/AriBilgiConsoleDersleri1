namespace _260129_2_for_ornek1;

internal class Program
{
    static void Main(string[] args)
    {

        //tek for ile 50-5000 arasındaki 11 ve 13 ün katları sayısı ve katları toplamlarını ayrı ayrı gösteriniz

        int adet11 = 0, adet13 = 0,toplam11 = 0, toplam13 = 0;

        for (int i = 50; i <= 5000; i++)
        {
            if (i%11==0)
            {
                adet11++;
                toplam11 += i;
            }

            if (i%13==0)
            {
                adet13++;
                toplam13 += i;
            }
        }

        Console.WriteLine("11'in katları sayısı:{0} ve toplamı:{1} ",adet11,toplam11);
        Console.WriteLine("13'ün katları sayısı:{0} ve toplamı:{1} ",adet13,toplam13);

    }
}
