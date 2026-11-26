package defpackage;

import kotlinx.coroutines.DispatchException;

/* JADX INFO: loaded from: classes5.dex */
public final class v22 {
    public static final void a(o22 o22Var, Throwable th) {
        if (th instanceof DispatchException) {
            th = ((DispatchException) th).b;
        }
        try {
            s22 s22Var = (s22) o22Var.get(s22.a.b);
            if (s22Var != null) {
                s22Var.handleException(o22Var, th);
            } else {
                u22.a(o22Var, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                sj0.c(runtimeException, th);
                th = runtimeException;
            }
            u22.a(o22Var, th);
        }
    }
}
