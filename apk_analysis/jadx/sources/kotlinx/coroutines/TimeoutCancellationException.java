package kotlinx.coroutines;

import defpackage.mb4;
import defpackage.xv8;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class TimeoutCancellationException extends CancellationException {
    public final transient mb4 b;

    public TimeoutCancellationException(String str, xv8 xv8Var) {
        super(str);
        this.b = xv8Var;
    }
}
