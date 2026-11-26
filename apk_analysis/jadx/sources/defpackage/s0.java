package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.warefly.checkscan.component.logger.CrashlyticsException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class s0 implements rxa {
    public static final /* synthetic */ s0 b = new s0();

    public static final wy0 a(bm3 bm3Var) {
        return new wy0(bm3Var, gx2.b, -2, cu0.SUSPEND);
    }

    public static final byte b(char c) {
        if (c < '~') {
            return x91.b[c];
        }
        return (byte) 0;
    }

    public static final void c(String str) {
        try {
            FirebaseCrashlytics.getInstance().log(str);
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }

    public static final void d(CrashlyticsException crashlyticsException) {
        try {
            FirebaseCrashlytics firebaseCrashlytics = FirebaseCrashlytics.getInstance();
            firebaseCrashlytics.log(crashlyticsException.b);
            firebaseCrashlytics.recordException(crashlyticsException);
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }

    public static final String e(byte b2) {
        if (b2 == 1) {
            return "quotation mark '\"'";
        }
        if (b2 == 2) {
            return "string escape sequence '\\'";
        }
        if (b2 == 4) {
            return "comma ','";
        }
        if (b2 == 5) {
            return "colon ':'";
        }
        if (b2 == 6) {
            return "start of the object '{'";
        }
        if (b2 == 7) {
            return "end of the object '}'";
        }
        if (b2 == 8) {
            return "start of the array '['";
        }
        if (b2 == 9) {
            return "end of the array ']'";
        }
        if (b2 == 10) {
            return "end of the input";
        }
        return b2 == 127 ? "invalid token" : "valid token";
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Integer.valueOf((int) zzags.zzam());
    }
}
