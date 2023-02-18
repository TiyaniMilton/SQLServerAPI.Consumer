using System;

namespace ApiAccessLayer.Helpers
{
    public static class Validations
    {
        public static bool CheckIfMarketOpened()
        {
            bool isTimeToProcess = true;
            if (DateTime.Now.Hour < 9 || DateTime.Now.Hour > 18)
            {
                isTimeToProcess = false;
            }
            else if (DateTime.Now.Hour == 9 && DateTime.Now.Minute < 15)
            {
                isTimeToProcess = false;
            }
            else if (DateTime.Now.Hour == 17 && DateTime.Now.Minute > 15)
            {
                isTimeToProcess = false;
            }
            return isTimeToProcess;
        }
    }
}