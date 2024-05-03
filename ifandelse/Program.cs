namespace Consoleifandelse
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("If ja else nesting");

            double y;

            y = 9;

            if (y < 20)
            {       
                if (y == 11)
                {
                    Console.WriteLine("Vastus on 11");
                }
                else
                {
                    Console.WriteLine("Vastus oli 0 kuni 10 ja 12 kuni 19");
                }
            }
            else if (y == 20.5)
            {
                Console.WriteLine("Vastus on 20.5. Teine tingimus vastab tõele");
            }
            else if (y == 30)
            {
                Console.WriteLine("Vastus on 30. Kolmas tingimus vastab tõele");
            }
            else
            {
                Console.WriteLine("Mitte ükski väärtus, mida on kirja pandud koodi");
            }


        }
