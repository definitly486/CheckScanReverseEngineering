package kotlinx.coroutines.internal;

import defpackage.o22;

/* JADX INFO: loaded from: classes5.dex */
public final class DiagnosticCoroutineContextException extends RuntimeException {
    public final transient o22 b;

    public DiagnosticCoroutineContextException(o22 o22Var) {
        this.b = o22Var;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return String.valueOf(this.b);
    }
}
