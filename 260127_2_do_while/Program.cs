namespace _260127_2_do_while
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //while döngüsü ilkin koşula ele alır, koşul doğru ise döngü içinde kodlar işleme alınır
            //do while 1 defa koşula bakmadan işlem yapar, sonra koşula bakar, koşul doğru ise döngü içinde kodlar tekrar işleme alınır
            /*
                while (true)//1.Adım döngü içinde koşul ele alınır
                {
                    //2.Adım kodlar işleme alınır
                }


                do//do=> yap
                    //buraya kod yazılmaz
                {
                    //do while için kod alanı
                    //1.Adım=> döngü kodlarının yazıldığı bu alan 1 kez işleme alınır. 1 kez işleme alındıktan sonra aşağıdaki do yapısının döngü koşuluna bakılır
                //kod alanı bittiğini aşağıdaki while yapısı ile anlaşılır
                } while (true);//2.Adım koşul doğru ise tekrar kod alanına dönülür ve kodlar işleme alınır

                */
            int sayi = 1;

            //while (sayi>0)//0>0=> false
            //{
            //    Console.WriteLine("Sayı 0 dan büyüktür");
            //}
            //Console.WriteLine("-----While SON-------");
            //***********************************************************
            //do while
            Console.WriteLine("-******do while*****-");
            do
            {
                Console.WriteLine("Sayı 0 dan büyüktür:");
            } while (sayi>0);


            Console.ReadLine();
        }
    }
}
