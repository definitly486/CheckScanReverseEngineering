package androidx.compose.foundation.gestures;

import defpackage.jh2;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class GestureCancellationException extends CancellationException {
    public static final int $stable = 8;

    public /* synthetic */ GestureCancellationException(String str, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : str);
    }

    public GestureCancellationException(String str) {
        super(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GestureCancellationException() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
