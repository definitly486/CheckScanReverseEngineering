package yads;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
public abstract class pa3 {
    public static wv a(en4 en4Var) {
        long j;
        boolean z;
        long j2;
        long j3;
        long j4;
        long j5;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map map = en4Var.c;
        if (map == null) {
            return null;
        }
        String str = (String) map.get("Date");
        long jA = str != null ? a(str) : 0L;
        String str2 = (String) map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(StringUtils.COMMA, 0);
            z = false;
            j2 = 0;
            j3 = 0;
            while (i < strArrSplit.length) {
                String strTrim = strArrSplit[i].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j2 = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j3 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    z = true;
                }
                i++;
            }
            j = 0;
            i = 1;
        } else {
            j = 0;
            z = false;
            j2 = 0;
            j3 = 0;
        }
        String str3 = (String) map.get("Expires");
        long jA2 = str3 != null ? a(str3) : j;
        String str4 = (String) map.get("Last-Modified");
        long jA3 = str4 != null ? a(str4) : j;
        String str5 = (String) map.get("ETag");
        if (i != 0) {
            j5 = (j2 * 1000) + jCurrentTimeMillis;
            j4 = z ? j5 : (j3 * 1000) + j5;
        } else {
            j4 = (jA <= j || jA2 < jA) ? j : (jA2 - jA) + jCurrentTimeMillis;
            j5 = j4;
        }
        wv wvVar = new wv();
        wvVar.a = en4Var.b;
        wvVar.b = str5;
        wvVar.f = j5;
        wvVar.e = j4;
        wvVar.c = jA;
        wvVar.d = jA3;
        wvVar.g = map;
        wvVar.h = en4Var.d;
        return wvVar;
    }

    public static long a(String str) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
            return simpleDateFormat.parse(str).getTime();
        } catch (ParseException unused) {
            if (!CommonUrlParts.Values.FALSE_INTEGER.equals(str) && !"-1".equals(str)) {
                boolean z = li6.a;
                return 0L;
            }
            boolean z2 = li6.a;
            return 0L;
        }
    }

    public static String a(Map map) {
        String str;
        if (map == null || (str = (String) map.get("Content-Type")) == null) {
            return "ISO-8859-1";
        }
        String[] strArrSplit = str.split(";", 0);
        for (int i = 1; i < strArrSplit.length; i++) {
            String[] strArrSplit2 = strArrSplit[i].trim().split("=", 0);
            if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                return strArrSplit2[1];
            }
        }
        return "ISO-8859-1";
    }
}
