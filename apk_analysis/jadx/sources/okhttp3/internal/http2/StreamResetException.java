package okhttp3.internal.http2;

import defpackage.p03;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class StreamResetException extends IOException {
    public final p03 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamResetException(p03 p03Var) {
        super("stream was reset: " + p03Var);
        p03Var.getClass();
        this.b = p03Var;
    }
}
