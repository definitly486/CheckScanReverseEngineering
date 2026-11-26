package androidx.compose.ui.input.pointer;

import defpackage.bg;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerEventTimeoutCancellationException extends CancellationException {
    public static final int $stable = 8;

    public PointerEventTimeoutCancellationException(long j) {
        super(bg.d(j, "Timed out waiting for ", " ms"));
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(SuspendingPointerInputFilter_jvmAndAndroidKt.EmptyStackTraceElements);
        return this;
    }
}
