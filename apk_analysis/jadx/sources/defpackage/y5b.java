package defpackage;

import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
public final class y5b extends TimeoutException {
    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
