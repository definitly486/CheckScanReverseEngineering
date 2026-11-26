package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;
import kotlinx.coroutines.DispatchException;

/* JADX INFO: loaded from: classes5.dex */
public final class go2 implements rxa {
    public static final bh8 b = new bh8("UNDEFINED");
    public static final bh8 c = new bh8("REUSABLE_CLAIMED");
    public static final /* synthetic */ go2 d = new go2();

    public static boolean a(String str, String str2) {
        char c2;
        int length = str.length();
        if (str == str2) {
            return true;
        }
        if (length == str2.length()) {
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                char cCharAt2 = str2.charAt(i);
                if (cCharAt == cCharAt2 || ((c2 = (char) ((cCharAt | ' ') - 97)) < 26 && c2 == ((char) ((cCharAt2 | ' ') - 97)))) {
                }
            }
            return true;
        }
        return false;
    }

    public static mc1 b(Composer composer) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-823658713, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-colors> (CheckscanTheme.kt:28)");
        }
        mc1 mc1Var = (mc1) composer.consume(oc1.b);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mc1Var;
    }

    public static ed1 c(Composer composer) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(556697670, 0, -1, "com.warefly.checkscan.design.compose.theme.CheckscanTheme.<get-typography> (CheckscanTheme.kt:32)");
        }
        ed1 ed1Var = (ed1) composer.consume(gd1.c);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return ed1Var;
    }

    public static boolean d(char c2) {
        return c2 >= 'a' && c2 <= 'z';
    }

    public static boolean e(char c2) {
        return c2 >= 'A' && c2 <= 'Z';
    }

    public static final void f(e02 e02Var, Object obj) {
        if (!(e02Var instanceof fo2)) {
            e02Var.resumeWith(obj);
            return;
        }
        fo2 fo2Var = (fo2) e02Var;
        r22 r22Var = fo2Var.e;
        e02<T> e02Var2 = fo2Var.f;
        Throwable thA = k57.a(obj);
        Object yq1Var = thA == null ? obj : new yq1(thA, false);
        if (h(r22Var, e02Var2.getContext())) {
            fo2Var.g = yq1Var;
            fo2Var.d = 1;
            g(r22Var, e02Var2.getContext(), fo2Var);
            return;
        }
        b13 b13VarA = pt8.a();
        if (b13VarA.c >= 4294967296L) {
            fo2Var.g = yq1Var;
            fo2Var.d = 1;
            b13VarA.n0(fo2Var);
            return;
        }
        b13VarA.q0(true);
        try {
            mb4 mb4Var = (mb4) e02Var2.getContext().get(mb4.a.b);
            if (mb4Var == null || mb4Var.isActive()) {
                Object obj2 = fo2Var.h;
                o22 context = e02Var2.getContext();
                Object objC = lt8.c(context, obj2);
                h59<?> h59VarC = objC != lt8.a ? q22.c(e02Var2, context, objC) : null;
                try {
                    e02Var2.resumeWith(obj);
                    j59 j59Var = j59.a;
                    if (h59VarC == null || h59VarC.o0()) {
                        lt8.a(context, objC);
                    }
                } catch (Throwable th) {
                    if (h59VarC == null || h59VarC.o0()) {
                        lt8.a(context, objC);
                    }
                    throw th;
                }
            } else {
                fo2Var.resumeWith(r57.a(mb4Var.y()));
            }
            while (b13VarA.u0()) {
            }
        } catch (Throwable th2) {
            try {
                fo2Var.g(th2);
            } finally {
                b13VarA.k0(true);
            }
        }
    }

    public static final void g(r22 r22Var, o22 o22Var, Runnable runnable) {
        try {
            r22Var.dispatch(o22Var, runnable);
        } catch (Throwable th) {
            throw new DispatchException(th, r22Var, o22Var);
        }
    }

    public static final boolean h(r22 r22Var, o22 o22Var) throws DispatchException {
        try {
            return r22Var.isDispatchNeeded(o22Var);
        } catch (Throwable th) {
            throw new DispatchException(th, r22Var, o22Var);
        }
    }

    public static String i(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (e(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c2 = charArray[i];
                    if (e(c2)) {
                        charArray[i] = (char) (c2 ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    public static String j(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (d(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c2 = charArray[i];
                    if (d(c2)) {
                        charArray[i] = (char) (c2 ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzags.zzj());
    }
}
