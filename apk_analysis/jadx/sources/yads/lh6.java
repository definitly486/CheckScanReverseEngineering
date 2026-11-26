package yads;

import android.os.SystemClock;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class lh6 implements nb6, pb6 {
    public final ja6 a;
    public final ec6 b;
    public final jf6 c;
    public final ya6 d;
    public final qf6 e;
    public Long f;
    public boolean g;

    public lh6(ja6 ja6Var, of6 of6Var, ec6 ec6Var, jf6 jf6Var, ya6 ya6Var) {
        qf6 qf6Var = new qf6(of6Var);
        this.a = ja6Var;
        this.b = ec6Var;
        this.c = jf6Var;
        this.d = ya6Var;
        this.e = qf6Var;
    }

    @Override // yads.nb6
    public final void a(long j, long j2) {
        if (this.g) {
            return;
        }
        j59 j59Var = null;
        if (!this.e.a() || this.b.a() != cc6.PLAYING) {
            this.f = null;
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Long l = this.f;
        if (l != null) {
            if (jElapsedRealtime - l.longValue() >= 2000) {
                this.g = true;
                this.d.i(this.a);
                this.c.n();
            }
            j59Var = j59.a;
        }
        if (j59Var == null) {
            this.f = Long.valueOf(jElapsedRealtime);
            this.d.a(this.a);
        }
    }

    @Override // yads.pb6
    public final void b() {
        this.f = null;
    }

    @Override // yads.pb6
    public final void a() {
        this.f = null;
    }
}
