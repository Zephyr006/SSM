package cn.ssm.core.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/**
 * @author Zephyr
 * @date 2018/5/15.
 */
public class DateUtils {
    /**
     * 默认时间格式。 时间格式中，HH表示24小时制，hh表示12小时制
     */
    public static final String DEFAULT_FORMAT = "yyyy-MM-dd HH:mm:ss";
    /**
     * 用来在线程内缓存日期格式器
     */
    private static ThreadLocal<SimpleDateFormat> formatThreadLocal = new ThreadLocal();


    /**
     * @param date 指定需要转换的时间
     * @param pattern 用来指定时间格式，形如：yyyy-MM-dd HH:mm:ss
     * @return String
     */
    public static String format(Date date, String pattern ){
        if (date == null) {
            return null;
        }else {
            SimpleDateFormat dateFormat = formatThreadLocal.get();
            if (dateFormat == null) {
                dateFormat = new SimpleDateFormat(pattern, Locale.getDefault());
                dateFormat.setTimeZone(TimeZone.getDefault());
                formatThreadLocal.set(dateFormat);
            } else {
                dateFormat.applyLocalizedPattern(pattern);
                dateFormat.setTimeZone(TimeZone.getDefault());
            }
            return dateFormat.format(date);
        }
    }

    /**
     * 将java.util.Date格式转换为形如“2018-02-06 15:47:46”的时间格式
     * @param date 时间
     */
    public static String formatToDefaultPattern(Date date) {
        return format(date, DEFAULT_FORMAT);
    }

    /**
     * 将时间转成"yyyyMMdd HH:mm:ss"格式的字符串
     * @param date 时间
     */
    //public static String formatToYYYYMMdd_HHmmss(Date date) {
    //    return format(date, "yyyyMMdd HH:mm:ss");
    //}

    /**
     * 将时间转成"yyyy-MM-dd HH:mm"格式的字符串
     * @param date 时间
     */
    public static String formatToYYYYMMdd_HHmm(Date date) {
        return format(date, "yyyy-MM-dd HH:mm");
    }

    /**
     * 将时间转成"yyyyMMdd"格式的字符串
     * @param date 时间
     */
    //public static String formatToYYYYMMddStr(Date date) {
    //    return format(date, "yyyyMMdd");
    //}

    /**
     * 将时间转成"yyyy-MM-dd"格式的字符串
     */
    public static String formatToYYYYMMDD(Date date) {
        return format(date, "yyyy-MM-dd");
    }

    /**
     * 将时间转换成“HH:mm:ss”格式的字符串
     */
    public static String formatToHHmmss(Date date) {
        return format(date, "HH:mm:ss");
    }

    /**
     * 将时间转换成“HH:mm”格式的字符串
     */
    public static String formatToHHmm(Date date) {
        return format(date, "HH:mm");
    }

    /**
     * 将字符串转换为日期格式（yyyy-MM-dd）
     * @return java.sql.Date
     */
    public static java.sql.Date stringToDate(String strDate) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Date d = format.parse(strDate);
        return new java.sql.Date(d.getTime());
    }

    /**
     * 将字符串转换为指定的日期格式，如果转换失败则返回mull
     * @param strDateTime 需要转换的日期格式的字符串
     * @param pattern 用于指定返回结果的格式，形如：yyyy-MM-dd HH:mm
     * @return java.util.Date
     */
    public static Date stringToDateTime(String strDateTime,String pattern) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat(pattern);
        return format.parse(strDateTime);
    }

    /**
     * 两日期相差天数，用第二个参数时间减去第一个参数时间
     * @param startDate
     * @param endDate
     * @return int
     * @throws ParseException
     */
    public static int daysBetween(Date startDate,Date endDate) throws ParseException {
        SimpleDateFormat sdf  = new SimpleDateFormat("yyyy-MM-dd");
        startDate=sdf.parse(sdf.format(startDate));
        endDate=sdf.parse(sdf.format(endDate));
        Calendar cal = Calendar.getInstance();
        cal.setTime(startDate);
        long time1 = cal.getTimeInMillis();
        cal.setTime(endDate);
        long time2 = cal.getTimeInMillis();
        long between_days=(time2-time1)/(1000*3600*24);
        return Integer.parseInt(String.valueOf(between_days));
    }

    /**
     * 两日期相差分钟数，用第二个参数时间减去第一个参数时间
     * @param startDate
     * @param endDate
     * @return int
     */
    public static int minsBetween(Date startDate,Date endDate) throws ParseException {
        SimpleDateFormat sdf  =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        startDate=sdf.parse(sdf.format(startDate));
        endDate=sdf.parse(sdf.format(endDate));
        Calendar cal = Calendar.getInstance();
        cal.setTime(startDate);
        long time1 = cal.getTimeInMillis();
        cal.setTime(endDate);
        long time2 = cal.getTimeInMillis();
        long between_days=(time2-time1)/(1000*60);
        return Integer.parseInt(String.valueOf(between_days));
    }

    /**
     * 两日期相差月数，用第二个参数时间减去第一个参数时间
     * @param startDate
     * @param endDate
     * @return int 相差月数
     * @throws ParseException
     */
    public static int monthsBetween(Date startDate, Date endDate) throws ParseException {
        //long monthday;
        SimpleDateFormat sdf  =new SimpleDateFormat("yyyy-MM-dd");
        startDate=sdf.parse(sdf.format(startDate));
        endDate=sdf.parse(sdf.format(endDate));

        Calendar starCal = Calendar.getInstance();
        starCal.setTime(startDate);

        int sYear = starCal.get(Calendar.YEAR);
        int sMonth = starCal.get(Calendar.MONTH);
        int sDay = starCal.get(Calendar.DATE);

        Calendar endCal = Calendar.getInstance();
        endCal.setTime(endDate);
        int eYear = endCal.get(Calendar.YEAR);
        int eMonth = endCal.get(Calendar.MONTH);
        int eDay = endCal.get(Calendar.DATE);

        long monthDay = ((eYear - sYear) * 12 + (eMonth - sMonth));
        if (sDay < eDay) {
            monthDay = monthDay + 1;
        }
        return Integer.parseInt(String.valueOf(monthDay));
    }

    /**
     * 计算 nDay 天之后的日期
     * @param targetDate
     * @param nDay 日
     * @return Date
     */
    public static Date getSomeDaysLater(Date targetDate, Integer nDay) {
        Calendar cal = new GregorianCalendar();
        cal.setTime(targetDate);
        int newDay = cal.get(Calendar.DAY_OF_MONTH) + nDay;
        cal.set(Calendar.DAY_OF_MONTH, newDay);
        return new Date(cal.getTimeInMillis());
    }
    /**
     * 重载方法，计算nMonth月，nDay天之后的日期
     * @param targetDate
     * @param nMonth 月
     * @param nDay 日
     * @return Date
     */
    public static Date getSomeDaysLater(Date targetDate, Integer nDay, Integer nMonth) {
        Calendar cal = new GregorianCalendar();
        cal.setTime(targetDate);
        int oldMonth = cal.get(Calendar.MONTH);
        int oldDay = cal.get(Calendar.DAY_OF_MONTH);
        int newDay = oldDay + nDay;
        int newMonth = oldMonth + nMonth;
        cal.set(Calendar.MONTH, newMonth);
        cal.set(Calendar.DAY_OF_MONTH, newDay);
        return new Date(cal.getTimeInMillis());
    }
}
