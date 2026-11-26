package defpackage;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class w37 {
    public final ScheduledExecutorService a;
    public final ch8 b;
    public final ez4.j c;
    public final a98 d;
    public long e;
    public boolean f;
    public ScheduledFuture<?> g;

    public final class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            w37 w37Var = w37.this;
            if (!w37Var.f) {
                w37Var.g = null;
                return;
            }
            long jA = w37Var.e - w37Var.d.a();
            if (jA > 0) {
                w37Var.g = w37Var.a.schedule(w37Var.new b(), jA, TimeUnit.NANOSECONDS);
                return;
            }
            w37Var.f = false;
            w37Var.g = null;
            w37Var.c.run();
        }
    }

    public final class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            w37 w37Var = w37.this;
            w37Var.b.execute(w37Var.new a());
        }
    }

    public w37(ez4.j jVar, ch8 ch8Var, ScheduledExecutorService scheduledExecutorService, a98 a98Var) {
        this.c = jVar;
        this.b = ch8Var;
        this.a = scheduledExecutorService;
        this.d = a98Var;
        a98Var.b();
    }
}
