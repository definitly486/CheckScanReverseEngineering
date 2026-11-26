package yads;

import android.util.Base64;
import com.google.firebase.perf.FirebasePerformance;
import defpackage.ra8;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class x75 {
    public static final z94 a;

    static {
        z94 z94Var;
        z94 z94Var2 = z94.b;
        if (z94Var2 == null) {
            synchronized (z94.c) {
                z94Var = z94.b;
                if (z94Var == null) {
                    z94Var = new z94();
                    z94.b = z94Var;
                }
            }
            z94Var2 = z94Var;
        }
        a = z94Var2;
    }

    public static final void a(long j, r75 r75Var, en4 en4Var) {
        String strT;
        String str;
        String str2;
        byte[] bArrB = r75Var.b();
        String strT2 = null;
        if (bArrB != null) {
            try {
                strT = ra8.t(bArrB);
            } catch (Exception unused) {
                strT = "UNKNOWN_CONTENT";
            }
            str = strT;
        } else {
            str = null;
        }
        byte[] bArr = en4Var.b;
        if (bArr != null) {
            if (r75Var instanceof id3) {
                strT2 = "IMAGE_CONTENT";
            } else {
                try {
                    strT2 = ra8.t(Base64.decode(bArr, 0));
                } catch (IllegalArgumentException unused2) {
                    strT2 = ra8.t(bArr);
                } catch (Exception unused3) {
                    strT2 = "UNKNOWN_CONTENT";
                }
            }
        }
        z94 z94Var = a;
        int i = r75Var.c;
        if (i == 0) {
            str2 = "GET";
        } else if (i == 1) {
            str2 = "POST";
        } else if (i == 2) {
            str2 = FirebasePerformance.HttpMethod.PUT;
        } else if (i == 3) {
            str2 = FirebasePerformance.HttpMethod.DELETE;
        } else if (i == 4) {
            str2 = FirebasePerformance.HttpMethod.HEAD;
        } else if (i == 5) {
            str2 = FirebasePerformance.HttpMethod.OPTIONS;
        } else if (i == 6) {
            str2 = FirebasePerformance.HttpMethod.TRACE;
        } else {
            str2 = i == 7 ? FirebasePerformance.HttpMethod.PATCH : "UNKNOWN";
        }
        String str3 = str2;
        String strG = r75Var.g();
        Map mapD = r75Var.d();
        Integer numValueOf = Integer.valueOf(en4Var.a);
        Map map = en4Var.c;
        z94Var.getClass();
        if (u94.a.a()) {
            x94 x94Var = new x94(new ca4(j, str3, strG, mapD, str), new fa4(System.currentTimeMillis(), numValueOf, map, strT2));
            synchronized (z94.c) {
                try {
                    if (z94Var.a.size() > 100) {
                        z94Var.a.remove(0);
                    }
                    z94Var.a.addLast(x94Var);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
