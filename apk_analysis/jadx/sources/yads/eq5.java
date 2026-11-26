package yads;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes6.dex */
public final class eq5 implements my3 {
    public final du5 b;
    public boolean c;
    public long d;
    public long e;
    public dw4 f = dw4.e;

    public eq5(du5 du5Var) {
        this.b = du5Var;
    }

    @Override // yads.my3
    public final long a() {
        long j = this.d;
        if (!this.c) {
            return j;
        }
        this.b.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.e;
        dw4 dw4Var = this.f;
        return (dw4Var.b == 1.0f ? u56.a(jElapsedRealtime) : jElapsedRealtime * ((long) dw4Var.d)) + j;
    }

    @Override // yads.my3
    public final dw4 getPlaybackParameters() {
        return this.f;
    }

    public final void a(long j) {
        this.d = j;
        if (this.c) {
            this.b.getClass();
            this.e = SystemClock.elapsedRealtime();
        }
    }

    @Override // yads.my3
    public final void a(dw4 dw4Var) {
        if (this.c) {
            a(a());
        }
        this.f = dw4Var;
    }
}
