package defpackage;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class cl2<ReqT, RespT> extends rl1<ReqT, RespT> {
    public static final Logger l = Logger.getLogger(cl2.class.getName());
    public static final e m = new e();
    public final ScheduledFuture<?> b;
    public final Executor c;
    public final ky1 d;
    public volatile boolean e;
    public rl1.a<RespT> f;
    public la5 g;
    public rl1<ReqT, RespT> h;
    public h88 i;
    public g<RespT> k;
    public List<Runnable> j = new ArrayList();
    public final String a = "name_resolver";

    public class a extends jz1 {
        public final /* synthetic */ g d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(cl2 cl2Var, g gVar) {
            super(cl2Var.d, 0);
            this.d = gVar;
        }

        @Override // defpackage.jz1
        public final void a() {
            List<Runnable> list;
            g gVar = this.d;
            gVar.getClass();
            List<Runnable> arrayList = new ArrayList<>();
            while (true) {
                synchronized (gVar) {
                    try {
                        if (gVar.e.isEmpty()) {
                            gVar.e = null;
                            gVar.c = true;
                            return;
                        } else {
                            list = gVar.e;
                            gVar.e = arrayList;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                Iterator<Runnable> it = list.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
                list.clear();
                arrayList = list;
            }
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ h88 b;

        public b(h88 h88Var) {
            this.b = h88Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            rl1<ReqT, RespT> rl1Var = cl2.this.h;
            h88 h88Var = this.b;
            rl1Var.a(h88Var.b, h88Var.c);
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ Object b;

        public c(Object obj) {
            this.b = obj;
        }

        @Override // java.lang.Runnable
        public final void run() {
            cl2.this.h.d((ReqT) this.b);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            cl2.this.h.b();
        }
    }

    public class e extends rl1<Object, Object> {
        @Override // defpackage.rl1
        public final void a(String str, Throwable th) {
        }

        @Override // defpackage.rl1
        public final void b() {
        }

        @Override // defpackage.rl1
        public final void c() {
        }

        @Override // defpackage.rl1
        public final void d(Object obj) {
        }

        @Override // defpackage.rl1
        public final void e(rl1.a<Object> aVar, la5 la5Var) {
        }
    }

    public final class f extends jz1 {
        public final rl1.a<RespT> d;
        public final h88 e;

        public f(cl2 cl2Var, rl1.a<RespT> aVar, h88 h88Var) {
            super(cl2Var.d, 0);
            this.d = aVar;
            this.e = h88Var;
        }

        @Override // defpackage.jz1
        public final void a() {
            this.d.a(this.e, new la5());
        }
    }

    public static final class g<RespT> extends rl1.a<RespT> {
        public final cl2<?, RespT> a;
        public final rl1.a<RespT> b;
        public volatile boolean c;
        public volatile h88 d;
        public List<Runnable> e = new ArrayList();

        public class a implements Runnable {
            public final /* synthetic */ la5 b;

            public a(la5 la5Var) {
                this.b = la5Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                g gVar = g.this;
                la5 la5Var = this.b;
                if (gVar.d != null) {
                    return;
                }
                try {
                    gVar.b.b(la5Var);
                } catch (Throwable th) {
                    gVar.d = h88.f.g(th).h("Failed to read headers");
                    gVar.a.a("Failed to read headers", th);
                }
            }
        }

        public class b implements Runnable {
            public final /* synthetic */ Object b;

            public b(Object obj) {
                this.b = obj;
            }

            @Override // java.lang.Runnable
            public final void run() {
                g gVar = g.this;
                Object obj = this.b;
                if (gVar.d != null) {
                    return;
                }
                try {
                    gVar.b.c((RespT) obj);
                } catch (Throwable th) {
                    gVar.d = h88.f.g(th).h("Failed to read message.");
                    gVar.a.a("Failed to read message.", th);
                }
            }
        }

        public class c implements Runnable {
            public final /* synthetic */ h88 b;
            public final /* synthetic */ la5 c;

            public c(h88 h88Var, la5 la5Var) {
                this.b = h88Var;
                this.c = la5Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                h88 h88Var = this.b;
                la5 la5Var = this.c;
                if (g.this.d != null) {
                    h88Var = g.this.d;
                    la5Var = new la5();
                }
                try {
                    g.this.b.a(h88Var, la5Var);
                } catch (RuntimeException e) {
                    cl2.l.log(Level.WARNING, "Exception thrown by onClose() in ClientCall", (Throwable) e);
                }
            }
        }

        public class d implements Runnable {
            public d() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                g gVar = g.this;
                if (gVar.d != null) {
                    return;
                }
                try {
                    gVar.b.d();
                } catch (Throwable th) {
                    gVar.d = h88.f.g(th).h("Failed to call onReady.");
                    gVar.a.a("Failed to call onReady.", th);
                }
            }
        }

        public g(cl2<?, RespT> cl2Var, rl1.a<RespT> aVar) {
            this.a = cl2Var;
            this.b = aVar;
        }

        @Override // rl1.a
        public final void a(h88 h88Var, la5 la5Var) {
            e(new c(h88Var, la5Var));
        }

        @Override // rl1.a
        public final void b(la5 la5Var) {
            if (!this.c) {
                e(new a(la5Var));
                return;
            }
            if (this.d != null) {
                return;
            }
            try {
                this.b.b(la5Var);
            } catch (Throwable th) {
                this.d = h88.f.g(th).h("Failed to read headers");
                this.a.a("Failed to read headers", th);
            }
        }

        @Override // rl1.a
        public final void c(RespT respt) {
            if (!this.c) {
                e(new b(respt));
                return;
            }
            if (this.d != null) {
                return;
            }
            try {
                this.b.c(respt);
            } catch (Throwable th) {
                this.d = h88.f.g(th).h("Failed to read message.");
                this.a.a("Failed to read message.", th);
            }
        }

        @Override // rl1.a
        public final void d() {
            if (!this.c) {
                e(new d());
                return;
            }
            if (this.d != null) {
                return;
            }
            try {
                this.b.d();
            } catch (Throwable th) {
                this.d = h88.f.g(th).h("Failed to call onReady.");
                this.a.a("Failed to call onReady.", th);
            }
        }

        public final void e(Runnable runnable) {
            synchronized (this) {
                try {
                    if (this.c) {
                        runnable.run();
                    } else {
                        this.e.add(runnable);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public cl2(Executor executor, ScheduledExecutorService scheduledExecutorService, xc2 xc2Var) {
        ScheduledFuture<?> scheduledFutureSchedule;
        o8.l(executor, "callExecutor");
        this.c = executor;
        o8.l(scheduledExecutorService, "scheduler");
        ky1 ky1VarB = ky1.b();
        this.d = ky1VarB;
        ky1VarB.getClass();
        if (xc2Var != null) {
            long jA = xc2Var.a();
            scheduledFutureSchedule = scheduledExecutorService.schedule(new bl2(this, jA), jA, TimeUnit.NANOSECONDS);
        } else {
            scheduledFutureSchedule = null;
        }
        this.b = scheduledFutureSchedule;
    }

    @Override // defpackage.rl1
    public final void a(String str, Throwable th) {
        h88 h88Var = h88.f;
        h88 h88VarH = str != null ? h88Var.h(str) : h88Var.h("Call cancelled without message");
        if (th != null) {
            h88VarH = h88VarH.g(th);
        }
        g(h88VarH, false);
    }

    @Override // defpackage.rl1
    public final void b() {
        h(new d());
    }

    @Override // defpackage.rl1
    public final void c() {
        if (this.e) {
            this.h.c();
        } else {
            h(new dl2(this));
        }
    }

    @Override // defpackage.rl1
    public final void d(ReqT reqt) {
        if (this.e) {
            this.h.d(reqt);
        } else {
            h(new c(reqt));
        }
    }

    @Override // defpackage.rl1
    public final void e(rl1.a<RespT> aVar, la5 la5Var) {
        h88 h88Var;
        boolean z;
        o8.l(la5Var, "headers");
        o8.s(this.f == null, "already started");
        synchronized (this) {
            try {
                o8.l(aVar, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
                this.f = aVar;
                h88Var = this.i;
                z = this.e;
                if (!z) {
                    g<RespT> gVar = new g<>(this, aVar);
                    this.k = gVar;
                    this.g = la5Var;
                    aVar = gVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (h88Var != null) {
            this.c.execute(new f(this, aVar, h88Var));
        } else if (z) {
            this.h.e(aVar, la5Var);
        }
    }

    public void f() {
    }

    public final void g(h88 h88Var, boolean z) {
        rl1.a<RespT> aVar;
        synchronized (this) {
            try {
                rl1<ReqT, RespT> rl1Var = this.h;
                boolean z2 = true;
                if (rl1Var == null) {
                    e eVar = m;
                    if (rl1Var != null) {
                        z2 = false;
                    }
                    o8.q("realCall already set to %s", z2, rl1Var);
                    ScheduledFuture<?> scheduledFuture = this.b;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.h = eVar;
                    aVar = this.f;
                    this.i = h88Var;
                    z2 = false;
                } else if (z) {
                    return;
                } else {
                    aVar = null;
                }
                if (z2) {
                    h(new b(h88Var));
                } else {
                    if (aVar != null) {
                        this.c.execute(new f(this, aVar, h88Var));
                    }
                    la5 la5Var = this.g;
                    this.g = null;
                    ky1 ky1Var = this.d;
                    ky1 ky1VarA = ky1Var.a();
                    try {
                        this.h.e(aVar, la5Var);
                        ky1Var.c(ky1VarA);
                        i();
                    } catch (Throwable th) {
                        ky1Var.c(ky1VarA);
                        throw th;
                    }
                }
                f();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void h(Runnable runnable) {
        synchronized (this) {
            try {
                if (this.e) {
                    runnable.run();
                } else {
                    this.j.add(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
    
        r0 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        if (r0.hasNext() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0035, code lost:
    
        r0.next().run();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i() {
        g<RespT> gVar;
        List<Runnable> list;
        List<Runnable> arrayList = new ArrayList<>();
        while (true) {
            synchronized (this) {
                if (this.j.isEmpty()) {
                    break;
                }
                list = this.j;
                this.j = arrayList;
            }
            if (gVar != null) {
                this.c.execute(new a(this, gVar));
            }
            list.clear();
            arrayList = list;
        }
        this.j = null;
        this.e = true;
        gVar = this.k;
        if (gVar != null) {
            this.c.execute(new a(this, gVar));
        }
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(this.h, "realCall");
        return aVarB.toString();
    }
}
