package defpackage;

import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes3.dex */
public final class cn1 {
    public static void a(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        }
        if (obj2 != null) {
            return;
        }
        o2.d(ch.c(obj, "null value in entry: ", "=null"));
    }

    public static void b(int i, String str) {
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i);
    }

    public static void c(boolean z) {
        o8.s(z, "no calls to next() since the last call to remove()");
    }

    public static final Object d(af7 af7Var, boolean z, Object obj, bm3 bm3Var) {
        Object yq1Var;
        Object objW;
        try {
            if (bm3Var instanceof cd0) {
                v39.c(2, bm3Var);
                yq1Var = bm3Var.invoke(obj, af7Var);
            } else {
                yq1Var = zya.c(bm3Var, obj, af7Var);
            }
        } catch (DispatchException e) {
            Throwable th = e.b;
            af7Var.T(new yq1(th, false));
            throw th;
        } catch (Throwable th2) {
            yq1Var = new yq1(th2, false);
        }
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (yq1Var == a32Var || (objW = af7Var.W(yq1Var)) == vp2.d) {
            return a32Var;
        }
        af7Var.n0();
        if (!(objW instanceof yq1)) {
            return vp2.f(objW);
        }
        if (!z) {
            Throwable th3 = ((yq1) objW).a;
            if ((th3 instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th3).b == af7Var) {
                if (yq1Var instanceof yq1) {
                    throw ((yq1) yq1Var).a;
                }
                return yq1Var;
            }
        }
        throw ((yq1) objW).a;
    }
}
