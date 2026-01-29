namespace _260129_7_ters_dik_ucgen_for;

internal class Program
{
    static void Main(string[] args)
    {
        //for ile * karakteri kullanarak ters dik üçgen yapınız?
        /*
                *
               **
              ***
             **** 
            *****
           ******
          *******
         ********
        *********
         */
        string yildiz = "*";
        for (int i = 0; i <= 15; i++)
        {
            for (int k = 15; k >i; k--)
            {
                Console.Write(" ");
            }
            Console.WriteLine(yildiz);
            yildiz += "*";
        }

    }
}
