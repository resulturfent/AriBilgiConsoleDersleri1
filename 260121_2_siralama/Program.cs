namespace _260121_2_siralama
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
             2 - Kullanıcıdan alınan 3 sayı için, sayıları küçükten büyüğe doğru sıralayan yapıyı kodlayınız?
            */
            REVESTE:

            int s1, s2, s3;
            Console.WriteLine("1.sayıyı giriniz");
            s1 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("2.sayıyı giriniz");
            s2 = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("3.sayıyı giriniz");
            s3 = Convert.ToInt32(Console.ReadLine());

            //s1>s2,s3
            if (s1 > s2 && s1 > s3)
            {
                if (s2 > s3)
                {
                    Console.WriteLine("{0}>{1}>{2}", s1, s2, s3);
                }
                else if (s3 > s2)
                {
                    //   Console.WriteLine("S1>S3>S2");
                    Console.WriteLine("{0}>{1}>{2}", s1, s3, s2);
                }
                else if (s2 == s3)
                {
                    //Console.WriteLine("S1>S2=S3");
                    Console.WriteLine("{0}>{1}={2}", s1, s3, s2);
                }
            }
            //s2>s3,s1
            else if (s2 > s1 && s2 > s3)
            {
                if (s3 > s1)
                {
                    Console.WriteLine("{0}>{1}>{2}", s2, s3, s1);
                }
                else if (s1 > s3)
                {
                    Console.WriteLine("{0}>{1}>{2}", s2, s1, s3);
                }
                else if (s1 == s3)
                {
                    Console.WriteLine("{0}>{1}={2}", s2, s1, s3);
                }
            }
            //s3>s1>s2,s3>s1=s2,s3>S2>s1
            else if (s3 > s1 && s3 > s2)
            {
                if (s2 > s1)
                {
                    Console.WriteLine("{0}>{1}>{2}", s3, s2, s1);
                }
                else if (s1 > s2)
                {
                    Console.WriteLine("{0}>{1}>{2}", s3, s1, s2);
                }
                else if (s1 == s2)
                {
                    Console.WriteLine("{0}>{1}={2}", s3, s2, s1);
                }

            }
            else
            {
                Console.WriteLine("Bütün sayılar eşittir {0}={1}={2}",s1,s2,s3);
            }

            goto REVESTE;

        }
    }
}
