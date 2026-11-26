package defpackage;

import android.os.Handler;
import androidx.media3.common.C;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class wt8 {
    public final az4 a;
    public final qb6 b;
    public long c;
    public final long d;
    public final AtomicBoolean e;
    public final AtomicBoolean f;

    public wt8(az4 az4Var, qb6 qb6Var) {
        qb6Var.getClass();
        this.a = az4Var;
        this.b = qb6Var;
        this.d = C.NANOS_PER_SECOND;
        this.e = new AtomicBoolean(false);
        this.f = new AtomicBoolean(false);
    }

    public final void a(ed0 ed0Var) {
        AtomicBoolean atomicBoolean = this.e;
        try {
            this.c = this.b.nanoTime();
            ed0Var.run();
        } finally {
            atomicBoolean.set(false);
        }
    }

    public final void b(ed0 ed0Var) {
        long jNanoTime = this.b.nanoTime() - this.c;
        long j = this.d;
        AtomicBoolean atomicBoolean = this.e;
        if (jNanoTime >= j) {
            if (atomicBoolean.getAndSet(true)) {
                return;
            }
            a(ed0Var);
        } else if (atomicBoolean.getAndSet(true)) {
            this.f.set(true);
        } else {
            ((Handler) this.a.c).postDelayed(new sc6(1, this, ed0Var), (j - jNanoTime) / 1000000);
        }
    }
}
