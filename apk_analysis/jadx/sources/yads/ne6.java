package yads;

import android.os.Handler;
import android.os.SystemClock;
import defpackage.sh8;

/* JADX INFO: loaded from: classes6.dex */
public final class ne6 {
    public final Handler a;
    public final bq2 b;

    public ne6(Handler handler, bq2 bq2Var) {
        this.a = handler;
        this.b = bq2Var;
    }

    public final void a(final Object obj) {
        if (this.a != null) {
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.a.post(new Runnable() { // from class: g3a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(obj, jElapsedRealtime);
                }
            });
        }
    }

    public final void b(vz2 vz2Var, oi0 oi0Var) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        bq2Var.a.getClass();
        ((cj0) bq2Var.a.p).b(vz2Var, oi0Var);
    }

    public final void c(ji0 ji0Var) {
        synchronized (ji0Var) {
        }
        bq2 bq2Var = this.b;
        int i = u56.a;
        ((cj0) bq2Var.a.p).c(ji0Var);
        bq2Var.a.getClass();
        bq2Var.a.getClass();
    }

    public final void d(ji0 ji0Var) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        bq2Var.a.getClass();
        ((cj0) bq2Var.a.p).d(ji0Var);
    }

    public final void a(vz2 vz2Var, oi0 oi0Var) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new sh8(this, vz2Var, oi0Var, 1));
        }
    }

    public final void b(String str, long j, long j2) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        ((cj0) bq2Var.a.p).b(str, j, j2);
    }

    public final void a(final int i, final long j) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: f3a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b(i, j);
                }
            });
        }
    }

    public final void b(ji0 ji0Var) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new defpackage.h11(3, this, ji0Var));
        }
    }

    public final void a(long j, int i) {
        bq2 bq2Var = this.b;
        int i2 = u56.a;
        ((cj0) bq2Var.a.p).b(i, j);
    }

    public final void b(int i, long j) {
        bq2 bq2Var = this.b;
        int i2 = u56.a;
        ((cj0) bq2Var.a.p).a(i, j);
    }

    public final void a(ye6 ye6Var) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        bq2Var.a(ye6Var);
    }

    public final void c(final int i, final long j) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: h3a
                @Override // java.lang.Runnable
                public final void run() {
                    this.a(j, i);
                }
            });
        }
    }

    public final void a(final String str, final long j, final long j2) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: c3a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.b(str, j, j2);
                }
            });
        }
    }

    public final void b(final ye6 ye6Var) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: d3a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(ye6Var);
                }
            });
        }
    }

    public final void a(Object obj, long j) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        bq2Var.a(obj, j);
    }

    public final void b(String str) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        ((cj0) bq2Var.a.p).b(str);
    }

    public final void a(final String str) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: e3a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.b(str);
                }
            });
        }
    }

    public final void a(ji0 ji0Var) {
        synchronized (ji0Var) {
        }
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new defpackage.lt2(3, this, ji0Var));
        }
    }

    public final void b(Exception exc) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new defpackage.ot2(3, this, exc));
        }
    }

    public final void a(Exception exc) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        ((cj0) bq2Var.a.p).c(exc);
    }
}
