package yads;

import android.os.Handler;
import defpackage.ds9;
import defpackage.ht8;
import defpackage.w89;
import defpackage.z1a;

/* JADX INFO: loaded from: classes6.dex */
public final class nm {
    public final Handler a;
    public final bq2 b;

    public nm(Handler handler, bq2 bq2Var) {
        this.a = handler;
        this.b = bq2Var;
    }

    public final void a(String str, long j, long j2) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new z1a(this, str, 1, j, j2));
        }
    }

    public final void b(vz2 vz2Var, oi0 oi0Var) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        bq2Var.a.getClass();
        ((cj0) bq2Var.a.p).a(vz2Var, oi0Var);
    }

    public final void c(ji0 ji0Var) {
        synchronized (ji0Var) {
        }
        bq2 bq2Var = this.b;
        int i = u56.a;
        ((cj0) bq2Var.a.p).a(ji0Var);
        bq2Var.a.getClass();
        bq2Var.a.getClass();
    }

    public final void d(ji0 ji0Var) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        bq2Var.a.getClass();
        ((cj0) bq2Var.a.p).b(ji0Var);
    }

    public final void a(vz2 vz2Var, oi0 oi0Var) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new ds9(this, vz2Var, oi0Var, 1));
        }
    }

    public final void b(String str, long j, long j2) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        ((cj0) bq2Var.a.p).a(str, j, j2);
    }

    public final void d(Exception exc) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        ((cj0) bq2Var.a.p).b(exc);
    }

    public final void a(long j) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        ((cj0) bq2Var.a.p).a(j);
    }

    public final void b(ji0 ji0Var) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new w89(2, this, ji0Var));
        }
    }

    public final void a(int i, long j, long j2) {
        bq2 bq2Var = this.b;
        int i2 = u56.a;
        ((cj0) bq2Var.a.p).a(i, j, j2);
    }

    public final void b(final long j) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: o3a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(j);
                }
            });
        }
    }

    public final void a(String str) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new ht8(3, this, str));
        }
    }

    public final void b(final int i, final long j, final long j2) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: p3a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(i, j, j2);
                }
            });
        }
    }

    public final void c(Exception exc) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        ((cj0) bq2Var.a.p).a(exc);
    }

    public final void a(ji0 ji0Var) {
        synchronized (ji0Var) {
        }
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new defpackage.ro1(3, this, ji0Var));
        }
    }

    public final void b(String str) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        ((cj0) bq2Var.a.p).a(str);
    }

    public final void b(boolean z) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new defpackage.ru(1, this, z));
        }
    }

    public final void a(boolean z) {
        bq2 bq2Var = this.b;
        int i = u56.a;
        bq2Var.a(z);
    }

    public final void a(Exception exc) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new defpackage.kb(3, this, exc));
        }
    }

    public final void b(Exception exc) {
        Handler handler = this.a;
        if (handler != null) {
            handler.post(new defpackage.uu(2, this, exc));
        }
    }
}
