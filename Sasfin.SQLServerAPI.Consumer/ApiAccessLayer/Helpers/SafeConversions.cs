using System;
using System.Globalization;

namespace ApiAccessLayer.Helpers
{ /// <summary>
  /// SafeConversions
  /// </summary>
    public static class SafeConversions
    {
        /// <summary>
        /// To the safe decimal.
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns></returns>
        public static decimal ToSafeDecimal(this string value)
        {
            decimal returnValue = default(decimal);

            decimal.TryParse(value, out returnValue);

            return returnValue;
        }

        public static decimal ToSafeDecimal(this decimal? value)
        {
            decimal returnValue = default(decimal);

            if (value == null) return returnValue;

            decimal.TryParse(value.ToString(), out returnValue);

            return returnValue;
        }

        public static double ToSafeDouble(this decimal? value)
        {
            double returnValue = default(double);

            if (value == null) return returnValue;

            double.TryParse(value.ToString(), out returnValue);

            return returnValue;
        }

        /// <summary>
        /// To the safe bool.
        /// </summary>
        /// <param name="value">The value.</param>
        /// <returns></returns>
        public static bool ToSafeBool(this string value)
        {
            bool returnValue = false;

            bool.TryParse(value, out returnValue);

            return returnValue;
        }

        public static int ToSafeInt(this int? value)
        {
            int returnValue = default(int);

            if (value == null) return returnValue;

            Int32.TryParse(value.ToString(), out returnValue);

            return returnValue;
        }

        public static int ToSafeInt(this string value)
        {
            int returnValue = default(int);

            if (value == null) return returnValue;

            Int32.TryParse(value.ToString(), out returnValue);

            return returnValue;
        }

        public static Guid ToSafeGuid(this object value)
        {
            Guid returnValue = default(Guid);

            if (value == null) return returnValue;

            //returnValue = Guid.ParseExact(value.ToString(), "D");

            Guid.TryParseExact(value.ToString(), "D", out returnValue);

            return returnValue;
        }

        public static DateTime? ToSafeDateTime(this string value)
        {
            DateTime? returnValue = null;

            if (string.IsNullOrEmpty(value)) return returnValue;

            DateTime dt = new DateTime();
            var result = DateTime.TryParse(value, CultureInfo.InvariantCulture, DateTimeStyles.None, out dt);

            return (DateTime?)dt;
        }

        public static DateTime ToSafeDateTime(this DateTime? value)
        {
            DateTime returnValue = DateTime.Now;

            if (value == null) return returnValue;

            DateTime dt = new DateTime();
            var result = DateTime.TryParse(value.ToString(), CultureInfo.InvariantCulture, DateTimeStyles.None, out dt);

            return dt;
        }

        public static DateTime ToSafeDateTimefromString(this string value)
        {
            DateTime returnValue = DateTime.Now;

            if (string.IsNullOrEmpty(value)) return returnValue;

            DateTime dt = new DateTime();
            var result = DateTime.TryParse(value, CultureInfo.InvariantCulture, DateTimeStyles.None, out dt);

            return dt;
        }
    }
}