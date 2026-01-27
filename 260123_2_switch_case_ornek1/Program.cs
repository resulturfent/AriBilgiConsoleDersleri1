namespace _260123_2_switch_case_ornek1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Kullanıcıdan alınan kaçıncı ayda olduğu bilgisine göre ayın adı ve hangi mevsimde olduğunu hesaplayan yapıyı kodlayınız
            despek:

            Console.WriteLine(  "Kaçıncı aydasınız?");
            byte ay = Convert.ToByte(Console.ReadLine());

            switch (ay)
            {
                case 12:
                case 1:
                case 2 :
                    Console.WriteLine("KIŞ mevsimindesiniz");
                    if (ay==12)
                    {
                        Console.WriteLine("Aralık ayındasınız");
                    }
                    else if(ay==1)
                    {
                        Console.WriteLine("Ocak ayındasınız");
                    }
                    else
                    {
                        Console.WriteLine("Şubat ayındasınız");
                    }

                    break;

                case 3:
                    Console.WriteLine("İLKBAHAR mevsimindesiniz!!");
                    Console.WriteLine("Mart ayındasınız");
                    break;

                case 4:
                    Console.WriteLine("İLKBAHAR mevsimindesiniz!!");
                    Console.WriteLine("Nisan ayındasınız");
                    break;
                case 5:
                    Console.WriteLine("İLKBAHAR mevsimindesiniz!!");
                    Console.WriteLine("Mayıs ayındasınız");
                    break;

                case 6:
                case 7:
                case 8:
                    Console.WriteLine("YAZ mevsimindesiniz");
                    switch (ay)
                    {
                        case 6:
                            Console.WriteLine("Haziran ayındasınız");
                            break;
                        case 7:
                            Console.WriteLine("Temmuz ayındasınız");
                            break;
                        case 8:
                            Console.WriteLine("Ağustos ayındasınız");
                            break;
                        default:
                            //bu çözümde default alanı okunmaz
                            Console.WriteLine("--bu alan okunmaz----");
                            break;
                    }
                    //if (ay == 6)
                    //{
                    //    Console.WriteLine("Haziran ayındasınız");
                    //}
                    //else if (ay == 7)
                    //{
                    //    Console.WriteLine("Temmuz ayındasınız");
                    //}
                    //else
                    //{
                    //    Console.WriteLine("Ağustos ayındasınız");
                    //}
                    break;
                default:
                    Console.WriteLine("Hatalı ay girişi yaptınız, kontrol ediniz");
                    break;
                case 9:
                case 10:
                case 11:
                    Console.WriteLine("SONBAHAR mevsimindesiniz");
                    if (ay == 9)
                    {
                        Console.WriteLine("Eylül ayındasınız");
                    }
                    else if (ay == 10)
                    {
                        Console.WriteLine("Ekim ayındasınız");
                    }
                    else
                    {
                        Console.WriteLine("Kasım ayındasınız");
                    }
                    break;
            }
            Console.WriteLine("--------------------------------");
            goto despek;

        }
    }
}
