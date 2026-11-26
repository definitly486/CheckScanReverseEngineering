package defpackage;

import androidx.media3.common.C;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class sl1<ReqT, RespT> extends rl1<ReqT, RespT> {
    public static final Logger o = Logger.getLogger(sl1.class.getName());
    public static final double p;
    public final ra5<ReqT, RespT> a;
    public final Executor b;
    public final boolean c;
    public final py0 d;
    public final ky1 e;
    public sl1<ReqT, RespT>.a f;
    public final boolean g;
    public io.grpc.b h;
    public cm1 i;
    public boolean j;
    public boolean k;
    public final c l;
    public final ScheduledExecutorService m;
    public yd2 n = yd2.d;

    public final class a implements Runnable {
        public final boolean b;
        public final boolean c;
        public final long d;
        public volatile ScheduledFuture<?> e;
        public volatile boolean f;

        public a(xc2 xc2Var, boolean z) {
            this.b = z;
            if (xc2Var == null) {
                this.c = false;
                this.d = 0L;
            } else {
                this.c = true;
                this.d = xc2Var.a();
            }
        }

        public final h88 a() {
            long j = this.d;
            long jAbs = Math.abs(j) / C.NANOS_PER_SECOND;
            long jAbs2 = Math.abs(j) % C.NANOS_PER_SECOND;
            StringBuilder sb = new StringBuilder(this.b ? "Context" : "CallOptions");
            sb.append(" deadline exceeded after ");
            if (j < 0) {
                sb.append('-');
            }
            sb.append(jAbs);
            Locale locale = Locale.US;
            sb.append(String.format(locale, ".%09d", Long.valueOf(jAbs2)));
            sb.append("s. ");
            sl1 sl1Var = sl1.this;
            Long l = (Long) sl1Var.h.a(io.grpc.c.o);
            sb.append(String.format(locale, "Name resolution delay %.9f seconds.", Double.valueOf(l == null ? 0.0d : l.longValue() / sl1.p)));
            if (sl1Var.i != null) {
                y54 y54Var = new y54();
                sl1Var.i.l(y54Var);
                sb.append(" ");
                sb.append(y54Var);
            }
            return h88.h.h(sb.toString());
        }

        public final void b() {
            this.f = true;
            ScheduledFuture<?> scheduledFuture = this.e;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            sl1.this.e.getClass();
        }

        @Override // java.lang.Runnable
        public final void run() {
            sl1.this.i.j(a());
        }
    }

    public class b implements dm1 {
        public final rl1.a<RespT> a;
        public h88 b;

        public final class a extends jz1 {
            public final /* synthetic */ la5 d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(la5 la5Var) {
                super(sl1.this.e, 0);
                this.d = la5Var;
            }

            @Override // defpackage.jz1
            public final void a() {
                b bVar = b.this;
                r46.c();
                try {
                    r46.a();
                    r46.a.getClass();
                    if (bVar.b == null) {
                        try {
                            bVar.a.b(this.d);
                        } catch (Throwable th) {
                            h88 h88VarH = h88.f.g(th).h("Failed to read headers");
                            bVar.b = h88VarH;
                            sl1.this.i.j(h88VarH);
                        }
                    }
                    r46.a.getClass();
                } catch (Throwable th2) {
                    try {
                        r46.a.getClass();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }

        /* JADX INFO: renamed from: sl1$b$b, reason: collision with other inner class name */
        public final class C0331b extends jz1 {
            public final /* synthetic */ j98.a d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0331b(j98.a aVar) {
                super(sl1.this.e, 0);
                this.d = aVar;
            }

            @Override // defpackage.jz1
            public final void a() {
                r46.c();
                try {
                    r46.a();
                    a34 a34Var = r46.a;
                    a34Var.getClass();
                    c();
                    a34Var.getClass();
                } catch (Throwable th) {
                    try {
                        r46.a.getClass();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }

            public final void c() {
                b bVar = b.this;
                sl1 sl1Var = sl1.this;
                h88 h88Var = bVar.b;
                j98.a aVar = this.d;
                if (h88Var != null) {
                    Logger logger = vs3.a;
                    while (true) {
                        InputStream next = aVar.next();
                        if (next == null) {
                            return;
                        } else {
                            vs3.b(next);
                        }
                    }
                } else {
                    while (true) {
                        try {
                            InputStream next2 = aVar.next();
                            if (next2 == null) {
                                return;
                            }
                            try {
                                bVar.a.c((RespT) sl1Var.a.e.a(next2));
                                next2.close();
                            } catch (Throwable th) {
                                vs3.b(next2);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            Logger logger2 = vs3.a;
                            while (true) {
                                InputStream next3 = aVar.next();
                                if (next3 == null) {
                                    h88 h88VarH = h88.f.g(th2).h("Failed to read message.");
                                    bVar.b = h88VarH;
                                    sl1Var.i.j(h88VarH);
                                    return;
                                }
                                vs3.b(next3);
                            }
                        }
                    }
                }
            }
        }

        public final class c extends jz1 {
            public c() {
                super(sl1.this.e, 0);
            }

            @Override // defpackage.jz1
            public final void a() {
                b bVar = b.this;
                r46.c();
                try {
                    r46.a();
                    r46.a.getClass();
                    if (bVar.b == null) {
                        try {
                            bVar.a.d();
                        } catch (Throwable th) {
                            h88 h88VarH = h88.f.g(th).h("Failed to call onReady.");
                            bVar.b = h88VarH;
                            sl1.this.i.j(h88VarH);
                        }
                    }
                    r46.a.getClass();
                } catch (Throwable th2) {
                    try {
                        r46.a.getClass();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }

        public b(rl1.a<RespT> aVar) {
            o8.l(aVar, "observer");
            this.a = aVar;
        }

        @Override // defpackage.j98
        public final void a(j98.a aVar) {
            sl1 sl1Var = sl1.this;
            r46.c();
            try {
                r46.a();
                r46.b();
                sl1Var.b.execute(new C0331b(aVar));
                r46.a.getClass();
            } catch (Throwable th) {
                try {
                    r46.a.getClass();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        @Override // defpackage.dm1
        public final void b(la5 la5Var) {
            sl1 sl1Var = sl1.this;
            r46.c();
            try {
                r46.a();
                r46.b();
                sl1Var.b.execute(new a(la5Var));
                r46.a.getClass();
            } catch (Throwable th) {
                try {
                    r46.a.getClass();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        @Override // defpackage.dm1
        public final void c(h88 h88Var, dm1.a aVar, la5 la5Var) {
            r46.c();
            try {
                r46.a();
                e(h88Var, la5Var);
                r46.a.getClass();
            } catch (Throwable th) {
                try {
                    r46.a.getClass();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        @Override // defpackage.j98
        public final void d() {
            sl1 sl1Var = sl1.this;
            ra5.a aVar = sl1Var.a.a;
            aVar.getClass();
            if (aVar == ra5.a.UNARY || aVar == ra5.a.SERVER_STREAMING) {
                return;
            }
            r46.c();
            try {
                r46.a();
                r46.b();
                sl1Var.b.execute(new c());
                r46.a.getClass();
            } catch (Throwable th) {
                try {
                    r46.a.getClass();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        public final void e(h88 h88Var, la5 la5Var) {
            sl1 sl1Var = sl1.this;
            xc2 xc2Var = sl1Var.h.a;
            sl1Var.e.getClass();
            if (xc2Var == null) {
                xc2Var = null;
            }
            if (h88Var.a == h88.a.CANCELLED && xc2Var != null) {
                if (xc2Var.c) {
                    h88Var = sl1.this.f.a();
                    la5Var = new la5();
                } else if (xc2Var.b - System.nanoTime() <= 0) {
                    xc2Var.c = true;
                    h88Var = sl1.this.f.a();
                    la5Var = new la5();
                }
            }
            r46.b();
            sl1.this.b.execute(new tl1(this, h88Var, la5Var));
        }
    }

    public interface c {
    }

    static {
        "gzip".getBytes(Charset.forName("US-ASCII"));
        p = 1.0E9d;
    }

    public sl1(ra5 ra5Var, Executor executor, io.grpc.b bVar, c cVar, ScheduledExecutorService scheduledExecutorService, py0 py0Var) {
        ru1 ru1Var = ru1.b;
        this.a = ra5Var;
        String str = ra5Var.b;
        System.identityHashCode(this);
        r46.a.getClass();
        if (executor == jn2.INSTANCE) {
            this.b = new yp7();
            this.c = true;
        } else {
            this.b = new oq7(executor);
            this.c = false;
        }
        this.d = py0Var;
        this.e = ky1.b();
        ra5.a aVar = ra5Var.a;
        this.g = aVar == ra5.a.UNARY || aVar == ra5.a.SERVER_STREAMING;
        this.h = bVar;
        this.l = cVar;
        this.m = scheduledExecutorService;
    }

    @Override // defpackage.rl1
    public final void a(String str, Throwable th) {
        r46.c();
        try {
            r46.a();
            f(str, th);
            r46.a.getClass();
        } catch (Throwable th2) {
            try {
                r46.a.getClass();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @Override // defpackage.rl1
    public final void b() {
        r46.c();
        try {
            r46.a();
            o8.s(this.i != null, "Not started");
            o8.s(!this.j, "call was cancelled");
            o8.s(!this.k, "call already half-closed");
            this.k = true;
            this.i.h();
            r46.a.getClass();
        } catch (Throwable th) {
            try {
                r46.a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // defpackage.rl1
    public final void c() {
        r46.c();
        try {
            r46.a();
            o8.s(this.i != null, "Not started");
            this.i.m();
            r46.a.getClass();
        } catch (Throwable th) {
            try {
                r46.a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // defpackage.rl1
    public final void d(ReqT reqt) {
        r46.c();
        try {
            r46.a();
            g(reqt);
            r46.a.getClass();
        } catch (Throwable th) {
            try {
                r46.a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // defpackage.rl1
    public final void e(rl1.a<RespT> aVar, la5 la5Var) {
        r46.c();
        try {
            r46.a();
            h(aVar, la5Var);
            r46.a.getClass();
        } catch (Throwable th) {
            try {
                r46.a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void f(String str, Throwable th) {
        if (str == null && th == null) {
            th = new CancellationException("Cancelled without a message or cause");
            o.log(Level.WARNING, "Cancelling without a message or cause is suboptimal", th);
        }
        if (this.j) {
            return;
        }
        this.j = true;
        try {
            if (this.i != null) {
                h88 h88Var = h88.f;
                h88 h88VarH = str != null ? h88Var.h(str) : h88Var.h("Call cancelled without message");
                if (th != null) {
                    h88VarH = h88VarH.g(th);
                }
                this.i.j(h88VarH);
            }
        } finally {
            sl1<ReqT, RespT>.a aVar = this.f;
            if (aVar != null) {
                aVar.b();
            }
        }
    }

    public final void g(ReqT reqt) {
        o8.s(this.i != null, "Not started");
        o8.s(!this.j, "call was cancelled");
        o8.s(!this.k, "call was half-closed");
        try {
            cm1 cm1Var = this.i;
            if (cm1Var instanceof k67) {
                ((k67) cm1Var).x(reqt);
            } else {
                cm1Var.d(this.a.d.b(reqt));
            }
            if (this.g) {
                return;
            }
            this.i.flush();
        } catch (Error e) {
            this.i.j(h88.f.h("Client sendMessage() failed with Error"));
            throw e;
        } catch (RuntimeException e2) {
            this.i.j(h88.f.g(e2).h("Failed to stream message"));
        }
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0176  */
    public final void h(rl1.a<RespT> aVar, la5 la5Var) {
        boolean z;
        cm1 gz4Var;
        cm1 i53Var;
        ScheduledExecutorService scheduledExecutorService;
        io.grpc.b bVar;
        bn1.b bVar2 = bn1.b.a;
        o8.s(this.i == null, "Already started");
        o8.s(!this.j, "call was cancelled");
        o8.l(aVar, "observer");
        o8.l(la5Var, "headers");
        this.e.getClass();
        io.grpc.b bVar3 = this.h;
        io.grpc.b.C0204b<mz4.a> c0204b = mz4.a.g;
        mz4.a aVar2 = (mz4.a) bVar3.a(c0204b);
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        if (aVar2 != null) {
            Integer num = aVar2.d;
            Integer num2 = aVar2.c;
            Long l = aVar2.a;
            if (l != null) {
                long jLongValue = l.longValue();
                Objects.requireNonNull(timeUnit, "units");
                xc2 xc2Var = new xc2(jLongValue);
                xc2 xc2Var2 = this.h.a;
                if (xc2Var2 == null || Long.compare(xc2Var.b, xc2Var2.b) < 0) {
                    io.grpc.b bVar4 = this.h;
                    bVar4.getClass();
                    io.grpc.b.a aVarC = io.grpc.b.c(bVar4);
                    aVarC.a = xc2Var;
                    this.h = new io.grpc.b(aVarC);
                }
            }
            Boolean bool = aVar2.b;
            if (bool != null) {
                boolean zBooleanValue = bool.booleanValue();
                io.grpc.b bVar5 = this.h;
                bVar5.getClass();
                if (zBooleanValue) {
                    io.grpc.b.a aVarC2 = io.grpc.b.c(bVar5);
                    aVarC2.e = Boolean.TRUE;
                    bVar = new io.grpc.b(aVarC2);
                } else {
                    io.grpc.b.a aVarC3 = io.grpc.b.c(bVar5);
                    aVarC3.e = Boolean.FALSE;
                    bVar = new io.grpc.b(aVarC3);
                }
                this.h = bVar;
            }
            if (num2 != null) {
                io.grpc.b bVar6 = this.h;
                Integer num3 = bVar6.f;
                if (num3 != null) {
                    int iMin = Math.min(num3.intValue(), num2.intValue());
                    o8.b(iMin, "invalid maxsize %s", iMin >= 0);
                    io.grpc.b.a aVarC4 = io.grpc.b.c(bVar6);
                    aVarC4.f = Integer.valueOf(iMin);
                    this.h = new io.grpc.b(aVarC4);
                } else {
                    int iIntValue = num2.intValue();
                    o8.b(iIntValue, "invalid maxsize %s", iIntValue >= 0);
                    io.grpc.b.a aVarC5 = io.grpc.b.c(bVar6);
                    aVarC5.f = num2;
                    this.h = new io.grpc.b(aVarC5);
                }
            }
            if (num != null) {
                io.grpc.b bVar7 = this.h;
                Integer num4 = bVar7.g;
                if (num4 != null) {
                    int iMin2 = Math.min(num4.intValue(), num.intValue());
                    o8.b(iMin2, "invalid maxsize %s", iMin2 >= 0);
                    io.grpc.b.a aVarC6 = io.grpc.b.c(bVar7);
                    aVarC6.g = Integer.valueOf(iMin2);
                    this.h = new io.grpc.b(aVarC6);
                } else {
                    int iIntValue2 = num.intValue();
                    o8.b(iIntValue2, "invalid maxsize %s", iIntValue2 >= 0);
                    io.grpc.b.a aVarC7 = io.grpc.b.c(bVar7);
                    aVarC7.g = num;
                    this.h = new io.grpc.b(aVarC7);
                }
            }
        }
        this.h.getClass();
        yd2 yd2Var = this.n;
        la5Var.a(vs3.h);
        la5Var.a(vs3.d);
        la5.f fVar = vs3.e;
        la5Var.a(fVar);
        byte[] bArr = yd2Var.b;
        if (bArr.length != 0) {
            la5Var.e(fVar, bArr);
        }
        la5Var.a(vs3.f);
        la5Var.a(vs3.g);
        xc2 xc2Var3 = this.h.a;
        this.e.getClass();
        xc2 xc2Var4 = xc2Var3 == null ? null : xc2Var3;
        if (xc2Var4 != null) {
            this.e.getClass();
            if (xc2Var4.equals(null)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        sl1<ReqT, RespT>.a aVar3 = new a(xc2Var4, z);
        this.f = aVar3;
        if (xc2Var4 == null || aVar3.d > 0) {
            c cVar = this.l;
            ra5<ReqT, RespT> ra5Var = this.a;
            io.grpc.b bVar8 = this.h;
            ky1 ky1Var = this.e;
            ez4.e eVar = (ez4.e) cVar;
            ez4 ez4Var = ez4.this;
            if (ez4Var.W) {
                mz4.a aVar4 = (mz4.a) bVar8.a(c0204b);
                gz4Var = new gz4(eVar, ra5Var, la5Var, bVar8, aVar4 == null ? null : aVar4.e, aVar4 != null ? aVar4.f : null, ky1Var);
            } else {
                io.grpc.c[] cVarArrC = vs3.c(bVar8, la5Var, 0, false, false);
                ky1 ky1VarA = ky1Var.a();
                try {
                    gz4Var = ez4Var.D.b(ra5Var, la5Var, bVar8, cVarArrC);
                    ky1Var.c(ky1VarA);
                } catch (Throwable th) {
                    ky1Var.c(ky1VarA);
                    throw th;
                }
            }
            i53Var = gz4Var;
            this.i = i53Var;
        } else {
            io.grpc.c[] cVarArrC2 = vs3.c(this.h, la5Var, 0, false, false);
            String str = z ? "Context" : "CallOptions";
            Long l2 = (Long) this.h.a(io.grpc.c.o);
            double d = this.f.d;
            double d2 = p;
            i53Var = new i53(h88.h.h(String.format("ClientCall started after %s deadline was exceeded %.9f seconds ago. Name resolution delay %.9f seconds.", str, Double.valueOf(d / d2), Double.valueOf(l2 == null ? 0.0d : l2.longValue() / d2))), dm1.a.PROCESSED, cVarArrC2);
            this.i = i53Var;
        }
        if (this.c) {
            i53Var.e();
        }
        this.h.getClass();
        Integer num5 = this.h.f;
        if (num5 != null) {
            this.i.a(num5.intValue());
        }
        Integer num6 = this.h.g;
        if (num6 != null) {
            this.i.b(num6.intValue());
        }
        if (xc2Var4 != null) {
            this.i.g(xc2Var4);
        }
        this.i.c(bVar2);
        this.i.f(this.n);
        py0 py0Var = this.d;
        py0Var.b.a();
        py0Var.a.b();
        this.i.i(new b(aVar));
        sl1<ReqT, RespT>.a aVar5 = this.f;
        if (aVar5.f) {
            return;
        }
        if (aVar5.c && !aVar5.b && (scheduledExecutorService = sl1.this.m) != null) {
            aVar5.e = scheduledExecutorService.schedule(new vu4(aVar5), aVar5.d, timeUnit);
        }
        ky1 ky1Var2 = sl1.this.e;
        jn2 jn2Var = jn2.INSTANCE;
        ky1Var2.getClass();
        Logger logger = ky1.a;
        if (jn2Var == null) {
            o2.d("executor");
        } else if (aVar5.f) {
            aVar5.b();
        }
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(this.a, "method");
        return aVarB.toString();
    }
}
