package defpackage;

import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class o8 implements SuccessContinuation, rxa {
    public static final /* synthetic */ o8 b = new o8();
    public static final /* synthetic */ o8 c = new o8();

    public static String a(int i, int i2, String str) {
        if (i < 0) {
            return ma8.a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return ma8.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        fg.c(jh.b(i2, "negative size: "));
        return null;
    }

    public static void b(int i, String str, boolean z) {
        if (z) {
            return;
        }
        fg.c(ma8.a(str, Integer.valueOf(i)));
    }

    public static void c(long j, boolean z, String str) {
        if (z) {
            return;
        }
        fg.c(ma8.a(str, Long.valueOf(j)));
    }

    public static void d(String str, int i, int i2, boolean z) {
        if (z) {
            return;
        }
        fg.c(ma8.a(str, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    public static void e(boolean z) {
        if (z) {
            return;
        }
        mi2.b();
    }

    public static void f(boolean z, Object obj) {
        if (z) {
            return;
        }
        bj.f(obj);
    }

    public static void g(boolean z, String str, long j, long j2) {
        if (z) {
            return;
        }
        fg.c(ma8.a(str, Long.valueOf(j), Long.valueOf(j2)));
    }

    public static void h(boolean z, String str, Object obj) {
        if (z) {
            return;
        }
        fg.c(ma8.a(str, obj));
    }

    public static void i(boolean z, String str, Object obj, Object obj2) {
        if (z) {
            return;
        }
        fg.c(ma8.a(str, obj, obj2));
    }

    public static void j(int i, int i2) {
        String strA;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                strA = ma8.a("%s (%s) must not be negative", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    fg.c(jh.b(i2, "negative size: "));
                    return;
                }
                strA = ma8.a("%s (%s) must be less than size (%s)", FirebaseAnalytics.Param.INDEX, Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }

    public static void k(Object obj) {
        obj.getClass();
    }

    public static void l(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException(String.valueOf(obj2));
        }
    }

    public static void m(Object obj, String str, Object obj2) {
        if (obj != null) {
            return;
        }
        o2.d(ma8.a(str, obj2));
    }

    public static void n(int i, int i2) {
        if (i < 0 || i > i2) {
            yq.d(a(i, i2, FirebaseAnalytics.Param.INDEX));
        }
    }

    public static void o(int i, int i2, int i3) {
        String strA;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strA = a(i, i3, "start index");
            } else {
                strA = (i2 < 0 || i2 > i3) ? a(i2, i3, "end index") : ma8.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(strA);
        }
    }

    public static void p(int i, String str, boolean z) {
        if (z) {
            return;
        }
        ah.f(ma8.a(str, Integer.valueOf(i)));
    }

    public static void q(String str, boolean z, Object obj) {
        if (z) {
            return;
        }
        ah.f(ma8.a(str, obj));
    }

    public static void r(boolean z) {
        if (z) {
            return;
        }
        ud.g();
    }

    public static void s(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0077 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x0078 A[RETURN] */
    public static int t(int i, CharSequence charSequence) {
        char cCharAt;
        if (i >= charSequence.length()) {
            return -1;
        }
        if (charSequence.charAt(i) == '<') {
            while (true) {
                i++;
                if (i >= charSequence.length() || (cCharAt = charSequence.charAt(i)) == '\n' || cCharAt == '<') {
                    break;
                }
                if (cCharAt == '>') {
                    return i + 1;
                }
                if (cCharAt == '\\') {
                    int i2 = i + 1;
                    if (tz.a(i2, charSequence)) {
                        i = i2;
                    }
                }
            }
            return -1;
        }
        int i3 = 0;
        int i4 = i;
        while (i4 < charSequence.length()) {
            char cCharAt2 = charSequence.charAt(i4);
            if (cCharAt2 == 0 || cCharAt2 == ' ') {
                if (i4 != i) {
                    return i4;
                }
                return -1;
            }
            if (cCharAt2 == '\\') {
                int i5 = i4 + 1;
                if (tz.a(i5, charSequence)) {
                    i4 = i5;
                }
            } else if (cCharAt2 == '(') {
                i3++;
                if (i3 > 32) {
                    return -1;
                }
            } else if (cCharAt2 != ')') {
                if (Character.isISOControl(cCharAt2)) {
                    if (i4 != i) {
                        return i4;
                    }
                    return -1;
                }
            } else {
                if (i3 == 0) {
                    return i4;
                }
                i3--;
            }
            i4++;
        }
        return charSequence.length();
    }

    public static int u(int i, CharSequence charSequence) {
        while (i < charSequence.length()) {
            switch (charSequence.charAt(i)) {
                case '[':
                    return -1;
                case '\\':
                    int i2 = i + 1;
                    if (tz.a(i2, charSequence)) {
                        i = i2;
                    }
                    break;
                case ']':
                    return i;
            }
            i++;
        }
        return charSequence.length();
    }

    public static int v(int i, CharSequence charSequence) {
        if (i >= charSequence.length()) {
            return -1;
        }
        char cCharAt = charSequence.charAt(i);
        char c2 = '\"';
        if (cCharAt != '\"') {
            c2 = '\'';
            if (cCharAt != '\'') {
                if (cCharAt != '(') {
                    return -1;
                }
                c2 = ')';
            }
        }
        int iW = w(charSequence, i + 1, c2);
        if (iW != -1 && iW < charSequence.length() && charSequence.charAt(iW) == c2) {
            return iW + 1;
        }
        return -1;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001b  */
    /* JADX WARN: Code duplicated, block: B:21:0x001a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0018 A[DONT_INVERT] */
    public static int w(CharSequence charSequence, int i, char c2) {
        while (i < charSequence.length()) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt == '\\') {
                int i2 = i + 1;
                if (tz.a(i2, charSequence)) {
                    i = i2;
                } else {
                    if (cCharAt == c2) {
                        return i;
                    }
                    if (c2 == ')' && cCharAt == '(') {
                        return -1;
                    }
                }
            } else {
                if (cCharAt == c2) {
                    return i;
                }
                if (c2 == ')') {
                    continue;
                }
            }
            i++;
        }
        return charSequence.length();
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public /* synthetic */ Task then(Object obj) {
        int i = GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        return Tasks.forResult(null);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Integer.valueOf((int) zzags.zzak());
    }
}
