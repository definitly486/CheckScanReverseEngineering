package defpackage;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzail;
import com.google.android.gms.measurement.internal.zzfy;
import java.text.ParseException;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class pl2 implements rxa {
    public static final /* synthetic */ pl2 c = new pl2(2);
    public static final /* synthetic */ pl2 d = new pl2(3);
    public final /* synthetic */ int b;

    public /* synthetic */ pl2(int i) {
        this.b = i;
    }

    public static void a(List list) {
        for (int i = 0; i < list.size(); i++) {
            if (!(list.get(i) instanceof Map)) {
                throw new ClassCastException(String.format(Locale.US, "value %s for idx %d in %s is not object", list.get(i), Integer.valueOf(i), list));
            }
        }
    }

    public static final float b(Context context, float f) {
        return (context.getResources().getDisplayMetrics().densityDpi / 160.0f) * f;
    }

    public static Boolean c(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not Boolean", obj, str, map));
    }

    public static final float d(float f) {
        return (f * Resources.getSystem().getDisplayMetrics().density) + 0.5f;
    }

    public static final int e(int i) {
        return (int) ((i * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static List f(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof List) {
            return (List) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not List", obj, str, map));
    }

    public static List g(String str, Map map) {
        List listF = f(str, map);
        if (listF == null) {
            return null;
        }
        for (int i = 0; i < listF.size(); i++) {
            if (!(listF.get(i) instanceof String)) {
                throw new ClassCastException(String.format(Locale.US, "value '%s' for idx %d in '%s' is not string", listF.get(i), Integer.valueOf(i), listF));
            }
        }
        return listF;
    }

    public static Double h(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (!(obj instanceof String)) {
            nz0.d("value '%s' for key '%s' in '%s' is not a number", new Object[]{obj, str, map});
            return null;
        }
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            nz0.d("value '%s' for key '%s' is not a double", new Object[]{obj, str});
            return null;
        }
    }

    public static Integer i(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (!(obj instanceof Double)) {
            if (!(obj instanceof String)) {
                nz0.d("value '%s' for key '%s' is not an integer", new Object[]{obj, str});
                return null;
            }
            try {
                return Integer.valueOf(Integer.parseInt((String) obj));
            } catch (NumberFormatException unused) {
                nz0.d("value '%s' for key '%s' is not an integer", new Object[]{obj, str});
                return null;
            }
        }
        Double d2 = (Double) obj;
        int iIntValue = d2.intValue();
        if (iIntValue == d2.doubleValue()) {
            return Integer.valueOf(iIntValue);
        }
        throw new ClassCastException("Number expected to be integer: " + d2);
    }

    public static Map j(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof Map) {
            return (Map) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not object", obj, str, map));
    }

    public static String k(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        Object obj = map.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        throw new ClassCastException(String.format("value '%s' for key '%s' in '%s' is not String", obj, str, map));
    }

    public static Long l(String str, Map map) {
        String strK = k(str, map);
        if (strK == null) {
            return null;
        }
        try {
            return Long.valueOf(n(strK));
        } catch (ParseException e) {
            ti0.f(e);
            return null;
        }
    }

    public static long m(int i, long j) {
        if (i <= -1000000000 || i >= 1000000000) {
            j = Math.addExact(j, i / 1000000000);
            i %= 1000000000;
        }
        if (j > 0 && i < 0) {
            i += 1000000000;
            j--;
        }
        if (j < 0 && i > 0) {
            i -= 1000000000;
            j++;
        }
        if (j >= -315576000000L && j <= 315576000000L && i >= -999999999 && i < 1000000000 && ((j >= 0 && i >= 0) || (j <= 0 && i <= 0))) {
            long nanos = TimeUnit.SECONDS.toNanos(j);
            long j2 = i;
            long j3 = nanos + j2;
            return (((j2 ^ nanos) > 0L ? 1 : ((j2 ^ nanos) == 0L ? 0 : -1)) < 0) | ((nanos ^ j3) >= 0) ? j3 : ((j3 >>> 63) ^ 1) + Long.MAX_VALUE;
        }
        throw new IllegalArgumentException("Duration is not valid. See proto definition for valid values. Seconds (" + j + ") must be in range [-315,576,000,000, +315,576,000,000]. Nanos (" + i + ") must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds");
    }

    public static long n(String str) throws ParseException {
        boolean z;
        String strSubstring;
        int iCharAt;
        if (str.isEmpty() || str.charAt(str.length() - 1) != 's') {
            throw new ParseException("Invalid duration string: ".concat(str), 0);
        }
        if (str.charAt(0) == '-') {
            str = str.substring(1);
            z = true;
        } else {
            z = false;
        }
        String strF = rg.f(1, 0, str);
        int iIndexOf = strF.indexOf(46);
        if (iIndexOf != -1) {
            strSubstring = strF.substring(iIndexOf + 1);
            strF = strF.substring(0, iIndexOf);
        } else {
            strSubstring = "";
        }
        long j = Long.parseLong(strF);
        if (strSubstring.isEmpty()) {
            iCharAt = 0;
        } else {
            iCharAt = 0;
            for (int i = 0; i < 9; i++) {
                iCharAt *= 10;
                if (i < strSubstring.length()) {
                    if (strSubstring.charAt(i) < '0' || strSubstring.charAt(i) > '9') {
                        throw new ParseException("Invalid nanoseconds.", 0);
                    }
                    iCharAt = (strSubstring.charAt(i) - '0') + iCharAt;
                }
            }
        }
        if (j < 0) {
            throw new ParseException("Invalid duration string: ".concat(str), 0);
        }
        if (z) {
            j = -j;
            iCharAt = -iCharAt;
        }
        try {
            return m(iCharAt, j);
        } catch (IllegalArgumentException unused) {
            throw new ParseException("Duration value is out of range.", 0);
        }
    }

    public static final int o(int i) {
        return (int) (i * Resources.getSystem().getDisplayMetrics().density);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 2:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzi());
            default:
                List list2 = zzfy.a;
                return Boolean.valueOf(zzail.zza());
        }
    }
}
