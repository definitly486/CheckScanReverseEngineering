package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class ga1 implements rxa {
    public static final /* synthetic */ ga1 c = new ga1(2);
    public static final /* synthetic */ ga1 d = new ga1(3);
    public final /* synthetic */ int b;

    public /* synthetic */ ga1(int i) {
        this.b = i;
    }

    public static final yp1 a(Object obj) {
        yp1 yp1Var = new yp1();
        yp1Var.T(obj);
        return yp1Var;
    }

    public static void b(int i) {
        if (2 > i || i >= 37) {
            hm.f(new y74(2, 36, 1), n7.c(i, "radix ", " was not in valid range "));
        }
    }

    public static int c(char c2) {
        int iDigit = Character.digit((int) c2, 10);
        if (iDigit >= 0) {
            return iDigit;
        }
        throw new IllegalArgumentException("Char " + c2 + " is not a decimal digit");
    }

    public static final boolean d(char c2, char c3, boolean z) {
        if (c2 == c3) {
            return true;
        }
        if (!z) {
            return false;
        }
        char upperCase = Character.toUpperCase(c2);
        char upperCase2 = Character.toUpperCase(c3);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static boolean e(char c2) {
        return Character.isWhitespace(c2) || Character.isSpaceChar(c2);
    }

    public static String f(char c2, Locale locale) {
        locale.getClass();
        String strValueOf = String.valueOf(c2);
        strValueOf.getClass();
        String upperCase = strValueOf.toUpperCase(locale);
        upperCase.getClass();
        if (upperCase.length() <= 1) {
            String strValueOf2 = String.valueOf(c2);
            strValueOf2.getClass();
            String upperCase2 = strValueOf2.toUpperCase(Locale.ROOT);
            upperCase2.getClass();
            if (upperCase.equals(upperCase2)) {
                return String.valueOf(Character.toTitleCase(c2));
            }
        } else if (c2 != 329) {
            char cCharAt = upperCase.charAt(0);
            String lowerCase = upperCase.substring(1).toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return cCharAt + lowerCase;
        }
        return upperCase;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 2:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzb());
            default:
                List list2 = zzfy.a;
                return zzags.zzac();
        }
    }
}
