package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes5.dex */
public final class cq4 extends r22 implements wk2 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater i = AtomicIntegerFieldUpdater.newUpdater(cq4.class, "runningWorkers$volatile");
    public static final /* synthetic */ long j = pz0.a.objectFieldOffset(cq4.class.getDeclaredField("runningWorkers$volatile"));
    public final /* synthetic */ wk2 c;
    public final r22 d;
    public final int e;
    public final String f;
    public final qu4<Runnable> g;
    public final Object h;
    private volatile /* synthetic */ int runningWorkers$volatile;

    public final class a implements Runnable {
        public Runnable b;

        public a(Runnable runnable) {
            this.b = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = 0;
            while (true) {
                try {
                    this.b.run();
                } catch (Throwable th) {
                    v22.a(gx2.b, th);
                }
                try {
                    Runnable runnableK0 = cq4.this.k0();
                    if (runnableK0 == null) {
                        return;
                    }
                    this.b = runnableK0;
                    i++;
                    if (i >= 16) {
                        cq4 cq4Var = cq4.this;
                        if (go2.h(cq4Var.d, cq4Var)) {
                            cq4 cq4Var2 = cq4.this;
                            go2.g(cq4Var2.d, cq4Var2, this);
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    cq4 cq4Var3 = cq4.this;
                    synchronized (cq4Var3.h) {
                        cq4.i.decrementAndGet(cq4Var3);
                        throw th2;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public cq4(r22 r22Var, int i2, String str) {
        wk2 wk2Var = r22Var instanceof wk2 ? (wk2) r22Var : null;
        this.c = wk2Var == null ? lh2.a : wk2Var;
        this.d = r22Var;
        this.e = i2;
        this.f = str;
        this.g = new qu4<>();
        this.h = new Object();
    }

    @Override // defpackage.wk2
    public final hp2 X(long j2, Runnable runnable, o22 o22Var) {
        return this.c.X(j2, runnable, o22Var);
    }

    @Override // defpackage.wk2
    public final void b(long j2, c31 c31Var) {
        this.c.b(j2, c31Var);
    }

    @Override // defpackage.r22
    public final void dispatch(o22 o22Var, Runnable runnable) {
        Runnable runnableK0;
        this.g.a(runnable);
        if (pz0.a.getIntVolatile(this, j) >= this.e || !n0() || (runnableK0 = k0()) == null) {
            return;
        }
        try {
            go2.g(this.d, this, new a(runnableK0));
        } catch (Throwable th) {
            i.decrementAndGet(this);
            throw th;
        }
    }

    @Override // defpackage.r22
    public final void dispatchYield(o22 o22Var, Runnable runnable) {
        Runnable runnableK0;
        this.g.a(runnable);
        if (pz0.a.getIntVolatile(this, j) >= this.e || !n0() || (runnableK0 = k0()) == null) {
            return;
        }
        try {
            this.d.dispatchYield(this, new a(runnableK0));
        } catch (Throwable th) {
            i.decrementAndGet(this);
            throw th;
        }
    }

    public final Runnable k0() {
        while (true) {
            Runnable runnableD = this.g.d();
            if (runnableD != null) {
                return runnableD;
            }
            synchronized (this.h) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = i;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.g.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }

    @Override // defpackage.r22
    public final r22 limitedParallelism(int i2, String str) {
        zd3.b(i2);
        if (i2 >= this.e) {
            return str != null ? new wh5(this, str) : this;
        }
        return super.limitedParallelism(i2, str);
    }

    public final boolean n0() {
        synchronized (this.h) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = i;
            if (pz0.a.getIntVolatile(this, j) >= this.e) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    @Override // defpackage.r22
    public final String toString() {
        String str = this.f;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.d);
        sb.append(".limitedParallelism(");
        return rg.h(sb, this.e, ')');
    }
}
