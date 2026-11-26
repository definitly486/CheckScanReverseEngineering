package yads;

import defpackage.fh8;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class zi0 {
    public final long a;
    public final TimeUnit b;
    public final defpackage.cl4 c = new fh8(new defpackage.rr1(this, 7));

    public zi0(long j, TimeUnit timeUnit) {
        this.a = j;
        this.b = timeUnit;
    }

    public static final long a(zi0 zi0Var) {
        return zi0Var.b.toMillis(zi0Var.a);
    }
}
