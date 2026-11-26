package kotlinx.coroutines;

import defpackage.o22;
import defpackage.r22;

/* JADX INFO: loaded from: classes5.dex */
public final class DispatchException extends Exception {
    public final Throwable b;

    public DispatchException(Throwable th, r22 r22Var, o22 o22Var) {
        super("Coroutine dispatcher " + r22Var + " threw an exception, context = " + o22Var, th);
        this.b = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.b;
    }
}
