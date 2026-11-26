package yads;

import android.os.Looper;
import android.os.SystemClock;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes6.dex */
public final class uw4 {
    public final tw4 a;
    public final sw4 b;
    public final du5 c;
    public int d;
    public Object e;
    public final Looper f;
    public boolean g;
    public boolean h;
    public boolean i;

    public uw4(sw4 sw4Var, tw4 tw4Var, kx5 kx5Var, int i, du5 du5Var, Looper looper) {
        this.b = sw4Var;
        this.a = tw4Var;
        this.f = looper;
        this.c = du5Var;
    }

    public final synchronized void a(long j) {
        boolean z;
        if (!this.g) {
            throw new IllegalStateException();
        }
        if (this.f.getThread() == Thread.currentThread()) {
            throw new IllegalStateException();
        }
        this.c.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j;
        while (true) {
            z = this.i;
            if (z || j <= 0) {
                break;
            }
            this.c.getClass();
            wait(j);
            this.c.getClass();
            j = jElapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (!z) {
            throw new TimeoutException("Message delivery timed out.");
        }
    }

    public final synchronized void a(boolean z) {
        this.h = z | this.h;
        this.i = true;
        notifyAll();
    }

    public final uw4 a() {
        if (!this.g) {
            this.g = true;
            mq2 mq2Var = (mq2) this.b;
            synchronized (mq2Var) {
                if (!mq2Var.z && mq2Var.j.isAlive()) {
                    mq2Var.i.a(14, this).b();
                    return this;
                }
                sv3.d("ExoPlayerImplInternal", "Ignoring messages sent after release.");
                a(false);
                return this;
            }
        }
        defpackage.ud.g();
        return null;
    }
}
