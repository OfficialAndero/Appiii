namespace ConsoleApp2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("For loop");

            int loop = 2;

            for (int i = 0; i < loop; i++)
            {
                Console.WriteLine("Loop " + i);
                Console.Beep();
            }
        }
    }
}