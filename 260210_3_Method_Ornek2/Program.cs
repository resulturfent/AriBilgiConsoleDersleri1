namespace _260210_3_Method_Ornek2;

internal class Program
{
    static void Main(string[] args)
    {
        //Kullanıcıdan alınan 3 sayıyı küçükten büyüğe doğru sıralamasını yapan işlemi kodlayınız

        int s1 = SayiAl();
        int s2 = SayiAl();
        int s3 = SayiAl();
        //s1 en büyük ise x=s1
        Siralama(s1, s2, s3);
        //s2 en büyük ise x=s2
        Siralama(s2, s1, s3);
        //s3 en büyük ise x=s3
        Siralama(s3, s1, s2);//
        //2 tane method sorusu paylaşılacak
        #region My Code but not short
        /*
        * if (s1>s2 && s1>s3)//s1 en büyük
        {
            if (s2>s3)
            {
                Console.WriteLine(s1+">"+s2+">"+s3);
            }
            else if (s3>s2)
            {
                Console.WriteLine(s1 + ">" + s3 + ">" + s2);
            }
            else
            {
                Console.WriteLine(s1 + ">" + s3 + "=" + s2);

            }
        }
        else if (s2 > s1 && s2 > s3)//s2 en büyük
        {
            if (s1 > s3)
            {
                Console.WriteLine(s2 + ">" + s1 + ">" + s3);
            }
            else if (s3 > s1)
            {
                Console.WriteLine(s2 + ">" + s3 + ">" + s1);
            }
            else
            {
                Console.WriteLine(s2+ ">" + s3 + "=" + s1);

            }
        }//...
       */
        #endregion


    }

    /// <summary>
    /// int sayıyı kullanıcıdan alır
    /// </summary>
    /// <returns></returns>
    static int SayiAl()
    {
        Console.WriteLine("Sayı giriniz?");
        return Convert.ToInt32(Console.ReadLine());
    }

    /// <summary>
    /// 3 sayı arasında sıralama yapar
    /// </summary>
    /// <param name="x"></param>
    /// <param name="y"></param>
    /// <param name="z"></param>
    static void Siralama(int x, int y, int z)
    {
        if (x > y && x > z)//x en büyük
        {
            if (y > z)
            {
                Console.WriteLine(x + ">" + y + ">" + z);
            }
            else if (z > y)
            {
                Console.WriteLine(x + ">" + z + ">" + y);
            }
            else
            {
                Console.WriteLine(x + ">" + z + "=" + y);
            }
        }       
    }
}
