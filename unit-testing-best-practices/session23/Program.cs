using System;
using UnitTestingBestPractices;
namespace session23
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(StringCalculator.GetEnvironmentVariable("my-fancy-variable"));
        }
    }
}
