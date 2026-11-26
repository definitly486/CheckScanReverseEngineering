package defpackage;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class if4 {
    public final ScheduledExecutorService a;
    public final a98 b;
    public final c c;
    public d d;
    public ScheduledFuture<?> e;
    public ScheduledFuture<?> f;
    public final vu4 g;
    public final vu4 h;
    public final long i;
    public final long j;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            if4 if4Var;
            boolean z;
            synchronized (if4.this) {
                try {
                    if4Var = if4.this;
                    d dVar = if4Var.d;
                    d dVar2 = d.DISCONNECTED;
                    if (dVar != dVar2) {
                        if4Var.d = dVar2;
                        z = true;
                    } else {
                        z = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                if4Var.c.a.p(h88.m.h("Keepalive failed. The connection is likely gone"));
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            boolean z2;
            long jNextLong;
            synchronized (if4.this) {
                try {
                    if4 if4Var = if4.this;
                    if4Var.f = null;
                    d dVar = if4Var.d;
                    d dVar2 = d.PING_SCHEDULED;
                    z = true;
                    if (dVar == dVar2) {
                        if4Var.d = d.PING_SENT;
                        if4Var.e = if4Var.a.schedule(if4Var.g, if4Var.j, TimeUnit.NANOSECONDS);
                        z2 = true;
                    } else {
                        if (dVar == d.PING_DELAYED) {
                            if4Var.f = if4Var.a.schedule(if4Var.h, if4Var.i - if4Var.b.a(), TimeUnit.NANOSECONDS);
                            if4.this.d = dVar2;
                        }
                        z2 = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z2) {
                c cVar = if4.this.c;
                lv5 lv5Var = cVar.a;
                jf4 jf4Var = new jf4(cVar);
                jn2 jn2Var = jn2.INSTANCE;
                synchronized (lv5Var.m) {
                    try {
                        o8.r(lv5Var.k != null);
                        if (lv5Var.A) {
                            h88 h88VarJ = lv5Var.j();
                            Logger logger = ty3.g;
                            try {
                                jn2Var.execute(new sy3(jf4Var, h88VarJ));
                            } catch (Throwable th2) {
                                ty3.g.log(Level.SEVERE, "Failed to execute PingCallback", th2);
                            }
                            return;
                        }
                        ty3 ty3Var = lv5Var.z;
                        if (ty3Var != null) {
                            jNextLong = 0;
                            z = false;
                        } else {
                            jNextLong = lv5Var.f.nextLong();
                            a98 a98Var = lv5Var.g.get2();
                            a98Var.b();
                            ty3 ty3Var2 = new ty3(jNextLong, a98Var);
                            lv5Var.z = ty3Var2;
                            lv5Var.P.getClass();
                            ty3Var = ty3Var2;
                        }
                        if (z) {
                            lv5Var.k.m0((int) (jNextLong >>> 32), (int) jNextLong, false);
                        }
                        synchronized (ty3Var) {
                            try {
                                if (!ty3Var.d) {
                                    ty3Var.c.put(jf4Var, jn2Var);
                                    return;
                                }
                                h88 h88Var = ty3Var.e;
                                Runnable sy3Var = h88Var != null ? new sy3(jf4Var, h88Var) : new ry3(jf4Var, ty3Var.f);
                                try {
                                    jn2Var.execute(sy3Var);
                                } catch (Throwable th3) {
                                    ty3.g.log(Level.SEVERE, "Failed to execute PingCallback", th3);
                                }
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                }
            }
        }
    }

    public static final class c {
        public final lv5 a;

        public c(lv5 lv5Var) {
            this.a = lv5Var;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class d {
        private static final /* synthetic */ d[] $VALUES;
        public static final d DISCONNECTED;
        public static final d IDLE;
        public static final d IDLE_AND_PING_SENT;
        public static final d PING_DELAYED;
        public static final d PING_SCHEDULED;
        public static final d PING_SENT;

        static {
            d dVar = new d("IDLE", 0);
            IDLE = dVar;
            d dVar2 = new d("PING_SCHEDULED", 1);
            PING_SCHEDULED = dVar2;
            d dVar3 = new d("PING_DELAYED", 2);
            PING_DELAYED = dVar3;
            d dVar4 = new d("PING_SENT", 3);
            PING_SENT = dVar4;
            d dVar5 = new d("IDLE_AND_PING_SENT", 4);
            IDLE_AND_PING_SENT = dVar5;
            d dVar6 = new d("DISCONNECTED", 5);
            DISCONNECTED = dVar6;
            $VALUES = new d[]{dVar, dVar2, dVar3, dVar4, dVar5, dVar6};
        }

        public d() {
            throw null;
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) $VALUES.clone();
        }
    }

    public if4(c cVar, ScheduledExecutorService scheduledExecutorService, long j, long j2) {
        a98 a98Var = new a98();
        this.d = d.IDLE;
        this.g = new vu4(new a());
        this.h = new vu4(new b());
        this.c = cVar;
        o8.l(scheduledExecutorService, "scheduler");
        this.a = scheduledExecutorService;
        this.b = a98Var;
        this.i = j;
        this.j = j2;
        a98Var.b = false;
        a98Var.b();
    }

    public final synchronized void a() {
        try {
            a98 a98Var = this.b;
            a98Var.b = false;
            a98Var.b();
            d dVar = this.d;
            d dVar2 = d.PING_SCHEDULED;
            if (dVar == dVar2) {
                this.d = d.PING_DELAYED;
            } else if (dVar == d.PING_SENT || dVar == d.IDLE_AND_PING_SENT) {
                ScheduledFuture<?> scheduledFuture = this.e;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
                if (this.d == d.IDLE_AND_PING_SENT) {
                    this.d = d.IDLE;
                } else {
                    this.d = dVar2;
                    o8.s(this.f == null, "There should be no outstanding pingFuture");
                    this.f = this.a.schedule(this.h, this.i, TimeUnit.NANOSECONDS);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        try {
            d dVar = this.d;
            if (dVar == d.IDLE) {
                this.d = d.PING_SCHEDULED;
                if (this.f == null) {
                    ScheduledExecutorService scheduledExecutorService = this.a;
                    vu4 vu4Var = this.h;
                    long j = this.i;
                    a98 a98Var = this.b;
                    this.f = scheduledExecutorService.schedule(vu4Var, j - a98Var.a(), TimeUnit.NANOSECONDS);
                }
            } else if (dVar == d.IDLE_AND_PING_SENT) {
                this.d = d.PING_SENT;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
