package yads;

import android.content.Context;
import android.os.Looper;
import defpackage.uga;
import yads.wp2;

/* JADX INFO: loaded from: classes6.dex */
public final class wp2 {
    public final Context a;
    public final du5 b;
    public ut5 c;
    public final ut5 d;
    public final ut5 e;
    public ut5 f;
    public final ut5 g;
    public final v13 h;
    public final Looper i;
    public final am j;
    public final int k;
    public final boolean l;
    public final th5 m;
    public final jl0 n;
    public final long o;
    public final long p;
    public final boolean q;
    public boolean r;

    public wp2(final Context context, ut5 ut5Var, ut5 ut5Var2) {
        ut5 ut5Var3 = new ut5() { // from class: tga
            @Override // yads.ut5
            public final Object get() {
                return wp2.c(context);
            }
        };
        uga ugaVar = new uga();
        ut5 ut5Var4 = new ut5() { // from class: vga
            @Override // yads.ut5
            public final Object get() {
                return wp2.d(context);
            }
        };
        defpackage.dq dqVar = new defpackage.dq(6);
        this.a = context;
        this.c = ut5Var;
        this.d = ut5Var2;
        this.e = ut5Var3;
        this.f = ugaVar;
        this.g = ut5Var4;
        this.h = dqVar;
        int i = u56.a;
        Looper looperMyLooper = Looper.myLooper();
        this.i = looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper;
        this.j = am.h;
        this.k = 1;
        this.l = true;
        this.m = th5.c;
        this.n = new jl0(u56.a(20L), u56.a(500L));
        this.b = x00.a;
        this.o = 500L;
        this.p = 2000L;
        this.q = true;
    }

    public static /* synthetic */ zl0 a(Context context) {
        return new zl0(context);
    }

    public static g14 b(Context context) {
        return new pl0(new kk0(context), new zk0());
    }

    public static vn d(Context context) {
        zj0 zj0Var;
        synchronized (zj0.class) {
            zj0Var = zj0.t;
            if (zj0Var == null) {
                yj0 yj0Var = new yj0(context);
                zj0 zj0Var2 = new zj0(yj0Var.a, yj0Var.b, yj0Var.c, yj0Var.d, yj0Var.e);
                zj0.t = zj0Var2;
                zj0Var = zj0Var2;
            }
        }
        return zj0Var;
    }

    public final wp2 c(final zl0 zl0Var) {
        if (this.r) {
            defpackage.ud.g();
            return null;
        }
        this.c = new ut5() { // from class: pga
            @Override // yads.ut5
            public final Object get() {
                return wp2.b(zl0Var);
            }
        };
        return this;
    }

    public static /* synthetic */ kl0 a(kl0 kl0Var) {
        return kl0Var;
    }

    public static /* synthetic */ zl0 b(zl0 zl0Var) {
        return zl0Var;
    }

    public static /* synthetic */ p06 c(Context context) {
        return new um0(context);
    }

    public final void b(final kl0 kl0Var) {
        if (!this.r) {
            this.f = new ut5() { // from class: qga
                @Override // yads.ut5
                public final Object get() {
                    return wp2.a(kl0Var);
                }
            };
        } else {
            defpackage.ud.g();
        }
    }

    public wp2(final Context context) {
        this(context, new ut5() { // from class: rga
            @Override // yads.ut5
            public final Object get() {
                return wp2.a(context);
            }
        }, new ut5() { // from class: sga
            @Override // yads.ut5
            public final Object get() {
                return wp2.b(context);
            }
        });
    }
}
