package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import gy.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import w37.b;

/* JADX INFO: loaded from: classes5.dex */
public final class ez4 extends dz4 implements l94<Object> {
    public static final Logger c0 = Logger.getLogger(ez4.class.getName());
    public static final h88 d0;
    public static final h88 e0;
    public static final mz4 f0;
    public static final a g0;
    public static final b h0;
    public static final d i0;
    public final HashSet A;
    public LinkedHashSet B;
    public final Object C;
    public final el2 D;
    public final q E;
    public final AtomicBoolean F;
    public boolean G;
    public volatile boolean H;
    public final CountDownLatch I;
    public final fz4 J;
    public final py0 K;
    public final s91 L;
    public final o91 M;
    public final i94 N;
    public final m O;
    public n P;
    public mz4 Q;
    public boolean R;
    public final boolean S;
    public final k67.p T;
    public final long U;
    public final long V;
    public final boolean W;
    public final xc2.a X;
    public final i Y;
    public final e Z;
    public final m94 a;
    public final w37 a0;
    public final String b;
    public final va5 b0;
    public final f99 c;
    public final io.grpc.m d;
    public final io.grpc.l.a e;
    public final gy f;
    public final hy0 g;
    public final o h;
    public final Executor i;
    public final pq5<? extends Executor> j;
    public final h k;
    public final h l;
    public final pv8 m;
    public final ch8 n;
    public final yd2 o;
    public final ru1 p;
    public final kd8<a98> q;
    public final long r;
    public final ex1 s;
    public final w33.a t;
    public final y81 u;
    public final ArrayList v;
    public nj3 w;
    public boolean x;
    public k y;
    public boolean z;

    public class a extends io.grpc.g {
        @Override // io.grpc.g
        public final io.grpc.g.a a() {
            throw new IllegalStateException("Resolution is pending");
        }
    }

    public class b implements io.grpc.h.f {
    }

    public class c implements Thread.UncaughtExceptionHandler {
        public c() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            Logger logger = ez4.c0;
            Level level = Level.SEVERE;
            StringBuilder sb = new StringBuilder("[");
            ez4 ez4Var = ez4.this;
            m94 m94Var = ez4Var.a;
            sb.append(m94Var);
            sb.append("] Uncaught exception in the SynchronizationContext. Panic!");
            logger.log(level, sb.toString(), th);
            try {
                ez4Var.j(th);
            } catch (Throwable th2) {
                logger.log(level, "[" + m94Var + "] Uncaught exception while panicking", th2);
            }
        }
    }

    public class d extends rl1<Object, Object> {
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

    public final class e implements sl1.c {
        public volatile k67.y a;

        public e() {
        }
    }

    public static final class f<ReqT, RespT> extends yi3<ReqT, RespT> {
        public final io.grpc.g a;
        public final y81 b;
        public final Executor c;
        public final ra5<ReqT, RespT> d;
        public final ky1 e;
        public io.grpc.b f;
        public rl1<ReqT, RespT> g;

        public f(io.grpc.g gVar, m.a aVar, Executor executor, ra5 ra5Var, io.grpc.b bVar) {
            this.a = gVar;
            this.b = aVar;
            this.d = ra5Var;
            Executor executor2 = bVar.b;
            executor = executor2 != null ? executor2 : executor;
            this.c = executor;
            io.grpc.b.a aVarC = io.grpc.b.c(bVar);
            aVarC.b = executor;
            this.f = new io.grpc.b(aVarC);
            this.e = ky1.b();
        }

        @Override // defpackage.d46, defpackage.rl1
        public final void a(String str, Throwable th) {
            rl1<ReqT, RespT> rl1Var = this.g;
            if (rl1Var != null) {
                rl1Var.a(str, th);
            }
        }

        @Override // defpackage.rl1
        public final void e(rl1.a<RespT> aVar, la5 la5Var) {
            io.grpc.b bVar = this.f;
            b bVar2 = ez4.h0;
            ra5<ReqT, RespT> ra5Var = this.d;
            o8.l(ra5Var, "method");
            o8.l(la5Var, "headers");
            o8.l(bVar, "callOptions");
            o8.l(bVar2, "pickDetailsConsumer");
            io.grpc.g.a aVarA = this.a.a();
            h88 h88Var = aVarA.a;
            if (!h88Var.f()) {
                this.c.execute(new hz4(this, aVar, vs3.g(h88Var)));
                this.g = ez4.i0;
                return;
            }
            mz4 mz4Var = (mz4) aVarA.b;
            mz4.a aVar2 = mz4Var.b.get(ra5Var.b);
            if (aVar2 == null) {
                aVar2 = mz4Var.c.get(ra5Var.c);
            }
            if (aVar2 == null) {
                aVar2 = mz4Var.a;
            }
            if (aVar2 != null) {
                this.f = this.f.d(mz4.a.g, aVar2);
            }
            rl1<ReqT, RespT> rl1VarF = this.b.f(ra5Var, this.f);
            this.g = rl1VarF;
            rl1VarF.e(aVar, la5Var);
        }

        @Override // defpackage.d46
        public final rl1<ReqT, RespT> f() {
            return this.g;
        }
    }

    public final class g implements nz4.a {
        public g() {
        }

        public final void a(boolean z) {
            ez4 ez4Var = ez4.this;
            ez4Var.Y.o(ez4Var.D, z);
            if (z) {
                ez4Var.g();
            }
        }
    }

    public static final class h implements Executor {
        public final pq5<? extends Executor> b;
        public Executor c;

        public h(pq5<? extends Executor> pq5Var) {
            o8.l(pq5Var, "executorPool");
            this.b = pq5Var;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            Executor executorA;
            synchronized (this) {
                executorA = this.c;
                if (executorA == null) {
                    executorA = this.b.a();
                    o8.m(executorA, "%s.getObject()", this.c);
                    this.c = executorA;
                }
            }
            executorA.execute(runnable);
        }

        public final synchronized void release() {
            Executor executor = this.c;
            if (executor != null) {
                this.b.b(executor);
                this.c = null;
            }
        }
    }

    public final class i extends u1 {
        public i() {
            super(4, (byte) 0);
        }

        @Override // defpackage.u1
        public final void h() {
            ez4.this.g();
        }

        @Override // defpackage.u1
        public final void i() {
            ez4 ez4Var = ez4.this;
            if (ez4Var.F.get()) {
                return;
            }
            ez4Var.k();
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ez4 ez4Var = ez4.this;
            if (ez4Var.y == null) {
                return;
            }
            ez4Var.l(true);
            el2 el2Var = ez4Var.D;
            el2Var.g(null);
            ez4Var.M.a(n91.a.INFO, "Entering IDLE state");
            ez4Var.s.a(cx1.IDLE);
            i iVar = ez4Var.Y;
            Object[] objArr = {ez4Var.C, el2Var};
            iVar.getClass();
            for (int i = 0; i < 2; i++) {
                if (((Set) iVar.b).contains(objArr[i])) {
                    ez4Var.g();
                    return;
                }
            }
        }
    }

    public final class k extends io.grpc.h.e {
        public gy.a a;

        public final class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                ez4 ez4Var = ez4.this;
                Logger logger = ez4.c0;
                ez4Var.n.d();
                if (ez4Var.x) {
                    ez4Var.w.b();
                }
            }
        }

        public k() {
        }

        @Override // io.grpc.h.e
        public final io.grpc.h.j a(io.grpc.h.b bVar) {
            ez4 ez4Var = ez4.this;
            ez4Var.n.d();
            o8.s(!ez4Var.G, "Channel is being terminated");
            return ez4Var.new p(bVar);
        }

        @Override // io.grpc.h.e
        public final n91 b() {
            return ez4.this.M;
        }

        @Override // io.grpc.h.e
        public final ScheduledExecutorService c() {
            return ez4.this.h;
        }

        @Override // io.grpc.h.e
        public final ch8 d() {
            return ez4.this.n;
        }

        @Override // io.grpc.h.e
        public final void e() {
            ch8 ch8Var = ez4.this.n;
            ch8Var.d();
            ch8Var.execute(new a());
        }

        @Override // io.grpc.h.e
        public final void f(cx1 cx1Var, io.grpc.h.k kVar) {
            ez4 ez4Var = ez4.this;
            ez4Var.n.d();
            o8.l(cx1Var, "newState");
            o8.l(kVar, "newPicker");
            if (this != ez4Var.y || ez4Var.z) {
                return;
            }
            ez4Var.D.g(kVar);
            if (cx1Var != cx1.SHUTDOWN) {
                ez4Var.M.b(n91.a.INFO, "Entering {0} state with picker: {1}", cx1Var, kVar);
                ez4Var.s.a(cx1Var);
            }
        }
    }

    public final class l extends io.grpc.l.d {
        public final k a;
        public final io.grpc.l b;

        public l(k kVar, nj3 nj3Var) {
            this.a = kVar;
            o8.l(nj3Var, "resolver");
            this.b = nj3Var;
        }

        @Override // io.grpc.l.d
        public final h88 a(io.grpc.l.e eVar) {
            mz4 mz4Var;
            Object obj;
            io.grpc.a.b<io.grpc.g> bVar = io.grpc.g.a;
            ez4.this.n.d();
            if (ez4.this.w != this.b) {
                return h88.e;
            }
            n88<List<io.grpc.d>> n88Var = eVar.a;
            boolean zA = n88Var.a();
            h88 h88Var = n88Var.a;
            if (!zA) {
                if (h88Var == null) {
                    h88Var = h88.e;
                }
                b(h88Var);
                h88 h88Var2 = n88Var.a;
                return h88Var2 == null ? h88.e : h88Var2;
            }
            if (h88Var != null) {
                ah.f("No value present.");
                return null;
            }
            List<io.grpc.d> list = n88Var.b;
            o91 o91Var = ez4.this.M;
            n91.a aVar = n91.a.DEBUG;
            o91Var.b(aVar, "Resolved address: {0}, config={1}", list, eVar.b);
            ez4 ez4Var = ez4.this;
            n nVar = ez4Var.P;
            n nVar2 = n.SUCCESS;
            if (nVar != nVar2) {
                ez4Var.M.b(n91.a.INFO, "Address resolved: {0}", list);
                ez4.this.P = nVar2;
            }
            io.grpc.l.b bVar2 = eVar.c;
            io.grpc.g gVar = (io.grpc.g) eVar.b.a.get(bVar);
            mz4 mz4Var2 = (bVar2 == null || (obj = bVar2.b) == null) ? null : (mz4) obj;
            h88 h88Var3 = bVar2 != null ? bVar2.a : null;
            ez4 ez4Var2 = ez4.this;
            if (ez4Var2.S) {
                if (mz4Var2 != null) {
                    m mVar = ez4Var2.O;
                    if (gVar != null) {
                        mVar.h(gVar);
                        if (mz4Var2.b() != null) {
                            ez4.this.M.a(aVar, "Method configs in service config will be discarded due to presence ofconfig-selector");
                        }
                    } else {
                        mVar.h(mz4Var2.b());
                    }
                } else if (h88Var3 == null) {
                    mz4Var2 = ez4.f0;
                    ez4Var2.O.h(null);
                } else {
                    if (!ez4Var2.R) {
                        ez4Var2.M.a(n91.a.INFO, "Fallback to error due to invalid first service config without default config");
                        final h88 h88Var4 = bVar2.a;
                        o8.f(!h88Var4.f(), "the error status must not be OK");
                        ez4.this.n.execute(new Runnable() { // from class: ez4.l.1a
                            @Override // java.lang.Runnable
                            public final void run() {
                                l.this.b(h88Var4);
                            }
                        });
                        return bVar2.a;
                    }
                    mz4Var2 = ez4Var2.Q;
                }
                if (!mz4Var2.equals(ez4.this.Q)) {
                    ez4.this.M.b(n91.a.INFO, "Service config changed{0}", mz4Var2 == ez4.f0 ? " to empty" : "");
                    ez4 ez4Var3 = ez4.this;
                    ez4Var3.Q = mz4Var2;
                    ez4Var3.Z.a = mz4Var2.d;
                }
                try {
                    ez4.this.R = true;
                } catch (RuntimeException e) {
                    ez4.c0.log(Level.WARNING, "[" + ez4.this.a + "] Unexpected exception from parsing service config", (Throwable) e);
                }
                mz4Var = mz4Var2;
            } else {
                if (mz4Var2 != null) {
                    ez4Var2.M.a(n91.a.INFO, "Service config from name resolver discarded by channel settings");
                }
                ez4 ez4Var4 = ez4.this;
                mz4Var = ez4.f0;
                if (gVar != null) {
                    ez4Var4.M.a(n91.a.INFO, "Config selector from name resolver discarded by channel settings");
                }
                ez4.this.O.h(mz4Var.b());
            }
            io.grpc.a aVar2 = eVar.b;
            if (this.a != ez4.this.y) {
                return h88.e;
            }
            io.grpc.a.C0203a c0203a = new io.grpc.a.C0203a(aVar2);
            if (aVar2.a.containsKey(bVar)) {
                c0203a.b(0).remove(bVar);
            }
            Map<String, ?> map = mz4Var.f;
            if (map != null) {
                c0203a.c(io.grpc.h.a, map);
                c0203a.a();
            }
            io.grpc.a aVarA = c0203a.a();
            io.grpc.a aVar3 = io.grpc.a.b;
            if (n88Var.a == null) {
                return this.a.a.a(new io.grpc.h.i(n88Var.b, aVarA, mz4Var.e));
            }
            ah.f("No value present.");
            return null;
        }

        public final void b(h88 h88Var) {
            Logger logger = ez4.c0;
            Level level = Level.WARNING;
            ez4 ez4Var = ez4.this;
            logger.log(level, "[{0}] Failed to resolve name. status={1}", new Object[]{ez4Var.a, h88Var});
            m mVar = ez4Var.O;
            if (mVar.a.get() == ez4.g0) {
                mVar.h(null);
            }
            n nVar = ez4Var.P;
            n nVar2 = n.ERROR;
            if (nVar != nVar2) {
                ez4Var.M.b(n91.a.WARNING, "Failed to resolve name: {0}", h88Var);
                ez4Var.P = nVar2;
            }
            k kVar = ez4Var.y;
            k kVar2 = this.a;
            if (kVar2 != kVar) {
                return;
            }
            kVar2.a.b(h88Var);
        }
    }

    public class m extends y81 {
        public final String b;
        public final AtomicReference<io.grpc.g> a = new AtomicReference<>(ez4.g0);
        public final a c = new a();

        public class a extends y81 {
            public a() {
            }

            @Override // defpackage.y81
            public final String a() {
                return m.this.b;
            }

            @Override // defpackage.y81
            public final <RequestT, ResponseT> rl1<RequestT, ResponseT> f(ra5<RequestT, ResponseT> ra5Var, io.grpc.b bVar) {
                ez4 ez4Var = ez4.this;
                Logger logger = ez4.c0;
                Executor executor = bVar.b;
                if (executor == null) {
                    executor = ez4Var.i;
                }
                sl1 sl1Var = new sl1(ra5Var, executor, bVar, ez4Var.Z, ez4Var.H ? null : ez4.this.g.b.A(), ez4.this.K);
                sl1Var.n = ez4.this.o;
                return sl1Var;
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                ez4.this.g();
            }
        }

        /* JADX INFO: Add missing generic type declarations: [ReqT, RespT] */
        public class c<ReqT, RespT> extends rl1<ReqT, RespT> {
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
            public final void d(ReqT reqt) {
            }

            @Override // defpackage.rl1
            public final void e(rl1.a<RespT> aVar, la5 la5Var) {
                aVar.a(ez4.d0, new la5());
            }
        }

        public class d implements Runnable {
            public final /* synthetic */ e b;

            public d(e eVar) {
                this.b = eVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                m mVar = m.this;
                ez4 ez4Var = ez4.this;
                io.grpc.g gVar = mVar.a.get();
                a aVar = ez4.g0;
                e eVar = this.b;
                if (gVar != aVar) {
                    eVar.j();
                    return;
                }
                if (ez4Var.B == null) {
                    ez4Var.B = new LinkedHashSet();
                    ez4Var.Y.o(ez4Var.C, true);
                }
                ez4Var.B.add(eVar);
            }
        }

        public final class e<ReqT, RespT> extends cl2<ReqT, RespT> {
            public final ky1 n;
            public final ra5<ReqT, RespT> o;
            public final io.grpc.b p;
            public final long q;

            public class a implements Runnable {
                public final /* synthetic */ al2 b;

                public a(al2 al2Var) {
                    this.b = al2Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.b.run();
                    e eVar = e.this;
                    ez4.this.n.execute(new b());
                }
            }

            public final class b implements Runnable {
                public b() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    e eVar = e.this;
                    LinkedHashSet linkedHashSet = ez4.this.B;
                    if (linkedHashSet != null) {
                        linkedHashSet.remove(eVar);
                        if (ez4.this.B.isEmpty()) {
                            ez4 ez4Var = ez4.this;
                            ez4Var.Y.o(ez4Var.C, false);
                            ez4 ez4Var2 = ez4.this;
                            ez4Var2.B = null;
                            if (ez4Var2.F.get()) {
                                q qVar = ez4.this.E;
                                h88 h88Var = ez4.d0;
                                synchronized (qVar.a) {
                                    try {
                                        if (qVar.c != null) {
                                            return;
                                        }
                                        qVar.c = h88Var;
                                        boolean zIsEmpty = qVar.b.isEmpty();
                                        if (zIsEmpty) {
                                            ez4.this.D.e(h88Var);
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        }
                    }
                }
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public e(ky1 ky1Var, ra5<ReqT, RespT> ra5Var, io.grpc.b bVar) {
                ez4 ez4Var = ez4.this;
                Logger logger = ez4.c0;
                Executor executor = bVar.b;
                super(executor == null ? ez4Var.i : executor, ez4Var.h, bVar.a);
                this.n = ky1Var;
                this.o = ra5Var;
                this.p = bVar;
                ez4Var.X.getClass();
                this.q = System.nanoTime();
            }

            @Override // defpackage.cl2
            public final void f() {
                ez4.this.n.execute(new b());
            }

            public final void j() {
                al2 al2Var;
                ky1 ky1VarA = this.n.a();
                try {
                    io.grpc.b bVar = this.p;
                    io.grpc.b.C0204b<Long> c0204b = io.grpc.c.o;
                    ez4.this.X.getClass();
                    rl1<ReqT, RespT> rl1VarG = m.this.g(this.o, bVar.d(c0204b, Long.valueOf(System.nanoTime() - this.q)));
                    this.n.c(ky1VarA);
                    synchronized (this) {
                        try {
                            rl1<ReqT, RespT> rl1Var = this.h;
                            al2Var = null;
                            if (rl1Var == null) {
                                o8.q("realCall already set to %s", rl1Var == null, rl1Var);
                                ScheduledFuture<?> scheduledFuture = this.b;
                                if (scheduledFuture != null) {
                                    scheduledFuture.cancel(false);
                                }
                                this.h = rl1VarG;
                                cl2.g<RespT> gVar = this.k;
                                if (gVar == null) {
                                    this.j = null;
                                    this.e = true;
                                } else {
                                    la5 la5Var = this.g;
                                    this.g = null;
                                    ky1 ky1Var = this.d;
                                    ky1 ky1VarA2 = ky1Var.a();
                                    try {
                                        this.h.e(gVar, la5Var);
                                        ky1Var.c(ky1VarA2);
                                        al2Var = new al2(this, this.d);
                                    } catch (Throwable th) {
                                        ky1Var.c(ky1VarA2);
                                        throw th;
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    ez4 ez4Var = ez4.this;
                    if (al2Var == null) {
                        ez4Var.n.execute(new b());
                        return;
                    }
                    Executor executor = this.p.b;
                    if (executor == null) {
                        executor = ez4Var.i;
                    }
                    executor.execute(new a(al2Var));
                } catch (Throwable th3) {
                    this.n.c(ky1VarA);
                    throw th3;
                }
            }
        }

        public m(String str) {
            o8.l(str, "authority");
            this.b = str;
        }

        @Override // defpackage.y81
        public final String a() {
            return this.b;
        }

        @Override // defpackage.y81
        public final <ReqT, RespT> rl1<ReqT, RespT> f(ra5<ReqT, RespT> ra5Var, io.grpc.b bVar) {
            ez4 ez4Var = ez4.this;
            ch8 ch8Var = ez4Var.n;
            AtomicReference<io.grpc.g> atomicReference = this.a;
            io.grpc.g gVar = atomicReference.get();
            a aVar = ez4.g0;
            if (gVar != aVar) {
                return g(ra5Var, bVar);
            }
            ch8Var.execute(new b());
            if (atomicReference.get() != aVar) {
                return g(ra5Var, bVar);
            }
            if (ez4Var.F.get()) {
                return new c();
            }
            e eVar = new e(ky1.b(), ra5Var, bVar);
            ch8Var.execute(new d(eVar));
            return eVar;
        }

        public final <ReqT, RespT> rl1<ReqT, RespT> g(ra5<ReqT, RespT> ra5Var, io.grpc.b bVar) {
            io.grpc.g gVar = this.a.get();
            a aVar = this.c;
            if (gVar == null) {
                return aVar.f(ra5Var, bVar);
            }
            if (!(gVar instanceof mz4.b)) {
                return new f(gVar, aVar, ez4.this.i, ra5Var, bVar);
            }
            mz4 mz4Var = ((mz4.b) gVar).b;
            mz4.a aVar2 = mz4Var.b.get(ra5Var.b);
            if (aVar2 == null) {
                aVar2 = mz4Var.c.get(ra5Var.c);
            }
            if (aVar2 == null) {
                aVar2 = mz4Var.a;
            }
            if (aVar2 != null) {
                bVar = bVar.d(mz4.a.g, aVar2);
            }
            return aVar.f(ra5Var, bVar);
        }

        public final void h(io.grpc.g gVar) {
            LinkedHashSet linkedHashSet;
            AtomicReference<io.grpc.g> atomicReference = this.a;
            io.grpc.g gVar2 = atomicReference.get();
            atomicReference.set(gVar);
            if (gVar2 != ez4.g0 || (linkedHashSet = ez4.this.B) == null) {
                return;
            }
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                ((e) it.next()).j();
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class n {
        private static final /* synthetic */ n[] $VALUES;
        public static final n ERROR;
        public static final n NO_RESOLUTION;
        public static final n SUCCESS;

        static {
            n nVar = new n("NO_RESOLUTION", 0);
            NO_RESOLUTION = nVar;
            n nVar2 = new n("SUCCESS", 1);
            SUCCESS = nVar2;
            n nVar3 = new n("ERROR", 2);
            ERROR = nVar3;
            $VALUES = new n[]{nVar, nVar2, nVar3};
        }

        public n() {
            throw null;
        }

        public static n valueOf(String str) {
            return (n) Enum.valueOf(n.class, str);
        }

        public static n[] values() {
            return (n[]) $VALUES.clone();
        }
    }

    public final class p extends w1 {
        public final io.grpc.h.b a;
        public final m94 b;
        public final o91 c;
        public final s91 d;
        public List<io.grpc.d> e;
        public p94 f;
        public boolean g;
        public boolean h;
        public ch8.c i;

        public final class a extends p94.d {
            public final /* synthetic */ io.grpc.h.l a;

            public a(io.grpc.h.l lVar) {
                this.a = lVar;
            }
        }

        public final class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                p94 p94Var = p.this.f;
                p94Var.m.execute(new t94(p94Var, ez4.e0));
            }
        }

        public p(io.grpc.h.b bVar) {
            List<io.grpc.d> list = bVar.a;
            this.e = list;
            this.a = bVar;
            m94 m94Var = new m94("Subchannel", ez4.this.u.a(), m94.d.incrementAndGet());
            this.b = m94Var;
            pv8 pv8Var = ez4.this.m;
            s91 s91Var = new s91(m94Var, pv8Var.b(), "Subchannel for " + list);
            this.d = s91Var;
            this.c = new o91(s91Var, pv8Var);
        }

        @Override // io.grpc.h.j
        public final List<io.grpc.d> b() {
            ez4.this.n.d();
            o8.s(this.g, "not started");
            return this.e;
        }

        @Override // io.grpc.h.j
        public final io.grpc.a c() {
            return this.a.b;
        }

        @Override // io.grpc.h.j
        public final n91 d() {
            return this.c;
        }

        @Override // io.grpc.h.j
        public final Object e() {
            o8.s(this.g, "Subchannel is not started");
            return this.f;
        }

        @Override // io.grpc.h.j
        public final void f() {
            ez4.this.n.d();
            o8.s(this.g, "not started");
            if (this.h) {
                return;
            }
            this.f.a();
        }

        @Override // io.grpc.h.j
        public final void g() {
            ch8.c cVar;
            ez4 ez4Var = ez4.this;
            ez4Var.n.d();
            if (this.f == null) {
                this.h = true;
                return;
            }
            if (!this.h) {
                this.h = true;
            } else {
                if (!ez4Var.G || (cVar = this.i) == null) {
                    return;
                }
                cVar.a();
                this.i = null;
            }
            if (!ez4Var.G) {
                this.i = ez4Var.n.c(new vu4(new b()), 5L, TimeUnit.SECONDS, ez4Var.g.b.A());
            } else {
                p94 p94Var = this.f;
                p94Var.m.execute(new t94(p94Var, ez4.d0));
            }
        }

        @Override // io.grpc.h.j
        public final void h(io.grpc.h.l lVar) {
            ez4 ez4Var = ez4.this;
            ez4Var.n.d();
            o8.s(!this.g, "already started");
            o8.s(!this.h, "already shutdown");
            o8.s(!ez4Var.G, "Channel is being terminated");
            this.g = true;
            String strA = ez4Var.u.a();
            w33.a aVar = ez4Var.t;
            hy0 hy0Var = ez4Var.g;
            p94 p94Var = new p94(this.a, strA, aVar, hy0Var, hy0Var.b.A(), ez4Var.q, ez4Var.n, new a(lVar), ez4Var.N, new py0((pv8) ez4Var.J.b), this.d, this.b, this.c, ez4Var.v, ez4Var.b, ez4.this.b0);
            s91 s91Var = ez4Var.L;
            h94.a aVar2 = h94.a.CT_INFO;
            long jB = ez4Var.m.b();
            o8.l(aVar2, "severity");
            s91Var.b(new h94("Child Subchannel started", aVar2, jB, p94Var));
            this.f = p94Var;
            ez4Var.A.add(p94Var);
        }

        @Override // io.grpc.h.j
        public final void i(List<io.grpc.d> list) {
            ez4.this.n.d();
            this.e = list;
            p94 p94Var = this.f;
            p94Var.getClass();
            o8.l(list, "newAddressGroups");
            Iterator<io.grpc.d> it = list.iterator();
            while (it.hasNext()) {
                o8.l(it.next(), "newAddressGroups contains null entry");
            }
            o8.f(!list.isEmpty(), "newAddressGroups is empty");
            p94Var.m.execute(new s94(p94Var, Collections.unmodifiableList(new ArrayList(list))));
        }

        public final String toString() {
            return this.b.toString();
        }
    }

    public final class q {
        public final Object a = new Object();
        public HashSet b = new HashSet();
        public h88 c;

        public q() {
        }
    }

    static {
        h88 h88Var = h88.m;
        h88Var.h("Channel shutdownNow invoked");
        d0 = h88Var.h("Channel shutdown invoked");
        e0 = h88Var.h("Subchannel shutdown invoked");
        f0 = new mz4(null, new HashMap(), new HashMap(), null, null, null);
        g0 = new a();
        h0 = new b();
        i0 = new d();
    }

    public ez4(iz4 iz4Var, fm1 fm1Var, f99 f99Var, io.grpc.m mVar, w33.a aVar, au7 au7Var, kd8 kd8Var, ArrayList arrayList, pv8 pv8Var) {
        ch8 ch8Var = new ch8(new c());
        this.n = ch8Var;
        ex1 ex1Var = new ex1();
        ex1Var.a = new ArrayList<>();
        ex1Var.b = cx1.IDLE;
        this.s = ex1Var;
        this.A = new HashSet(16, 0.75f);
        this.C = new Object();
        this.E = new q();
        this.F = new AtomicBoolean(false);
        this.I = new CountDownLatch(1);
        this.P = n.NO_RESOLUTION;
        this.Q = f0;
        this.R = false;
        this.T = new k67.p();
        this.X = xc2.d;
        g gVar = new g();
        this.Y = new i();
        this.Z = new e();
        String str = iz4Var.f;
        o8.l(str, TypedValues.AttributesType.S_TARGET);
        this.b = str;
        m94 m94Var = new m94("Channel", str, m94.d.incrementAndGet());
        this.a = m94Var;
        o8.l(pv8Var, "timeProvider");
        this.m = pv8Var;
        au7 au7Var2 = iz4Var.a;
        o8.l(au7Var2, "executorPool");
        this.j = au7Var2;
        Executor executor = (Executor) au7Var2.a();
        o8.l(executor, "executor");
        this.i = executor;
        au7 au7Var3 = iz4Var.b;
        o8.l(au7Var3, "offloadExecutorPool");
        h hVar = new h(au7Var3);
        this.l = hVar;
        hy0 hy0Var = new hy0(fm1Var, hVar);
        this.g = hy0Var;
        o oVar = new o(fm1Var.A());
        this.h = oVar;
        s91 s91Var = new s91(m94Var, pv8Var.b(), me0.c("Channel for '", str, "'"));
        this.L = s91Var;
        o91 o91Var = new o91(s91Var, pv8Var);
        this.M = o91Var;
        at6 at6Var = vs3.m;
        boolean z = iz4Var.o;
        this.W = z;
        gy gyVar = new gy(iz4Var.g);
        this.f = gyVar;
        this.c = f99Var;
        this.d = mVar;
        gd7 gd7Var = new gd7(z, iz4Var.k, iz4Var.l, gyVar);
        va5 va5Var = new va5(iz4Var.w, ta5.a());
        this.b0 = va5Var;
        io.grpc.l.a.b bVar = new io.grpc.l.a.b();
        bVar.a = Integer.valueOf(iz4Var.y.a());
        at6Var.getClass();
        bVar.b = at6Var;
        bVar.c = ch8Var;
        bVar.e = oVar;
        bVar.d = gd7Var;
        bVar.f = o91Var;
        bVar.g = hVar;
        bVar.h = va5Var;
        bVar.i = iz4Var.d;
        io.grpc.l.a aVar2 = new io.grpc.l.a(bVar);
        this.e = aVar2;
        this.w = h(f99Var, mVar, aVar2);
        this.k = new h(au7Var);
        el2 el2Var = new el2(executor, ch8Var);
        this.D = el2Var;
        el2Var.d(gVar);
        this.t = aVar;
        boolean z2 = iz4Var.q;
        this.S = z2;
        m mVar2 = new m(this.w.a());
        this.O = mVar2;
        int i2 = yl1.a;
        Iterator it = arrayList.iterator();
        y81 bVar2 = mVar2;
        while (it.hasNext()) {
            bVar2 = new yl1.b(bVar2, (xl1) it.next());
        }
        this.u = bVar2;
        this.v = new ArrayList(iz4Var.e);
        o8.l(kd8Var, "stopwatchSupplier");
        this.q = kd8Var;
        long j2 = iz4Var.j;
        if (j2 == -1) {
            this.r = j2;
        } else {
            o8.c(j2, j2 >= iz4.B, "invalid idleTimeoutMillis %s");
            this.r = iz4Var.j;
        }
        this.a0 = new w37(new j(), ch8Var, hy0Var.b.A(), (a98) kd8Var.get2());
        yd2 yd2Var = iz4Var.h;
        o8.l(yd2Var, "decompressorRegistry");
        this.o = yd2Var;
        ru1 ru1Var = iz4Var.i;
        o8.l(ru1Var, "compressorRegistry");
        this.p = ru1Var;
        this.V = iz4Var.m;
        this.U = iz4Var.n;
        this.J = new fz4(pv8Var);
        this.K = new py0(pv8Var);
        i94 i94Var = iz4Var.p;
        i94Var.getClass();
        this.N = i94Var;
        if (z2) {
            return;
        }
        this.R = true;
    }

    public static nj3 h(f99 f99Var, io.grpc.m mVar, io.grpc.l.a aVar) {
        io.grpc.l lVarA = f99Var.a(mVar, aVar);
        if (lVarA == null) {
            r01.e(f99Var, "cannot create a NameResolver for ");
            return null;
        }
        w33.a aVar2 = new w33.a();
        o oVar = aVar.e;
        if (oVar != null) {
            ch8 ch8Var = aVar.c;
            return new r67(lVarA, new k00(aVar2, oVar, ch8Var), ch8Var);
        }
        ah.f("ScheduledExecutorService not set in Builder");
        return null;
    }

    @Override // defpackage.y81
    public final String a() {
        return this.u.a();
    }

    @Override // defpackage.l94
    public final m94 c() {
        return this.a;
    }

    @Override // defpackage.y81
    public final <ReqT, RespT> rl1<ReqT, RespT> f(ra5<ReqT, RespT> ra5Var, io.grpc.b bVar) {
        return this.u.f(ra5Var, bVar);
    }

    public final void g() {
        this.n.d();
        if (this.F.get() || this.z) {
            return;
        }
        if (((Set) this.Y.b).isEmpty()) {
            k();
        } else {
            this.a0.f = false;
        }
        if (this.y != null) {
            return;
        }
        this.M.a(n91.a.INFO, "Exiting idle mode");
        k kVar = new k();
        gy gyVar = this.f;
        gyVar.getClass();
        kVar.a = gyVar.new a(kVar);
        this.y = kVar;
        this.s.a(cx1.CONNECTING);
        this.w.d(new l(kVar, this.w));
        this.x = true;
    }

    public final void i() {
        if (!this.H && this.F.get() && this.A.isEmpty()) {
            this.M.a(n91.a.INFO, "Terminated");
            this.j.b(this.i);
            this.k.release();
            this.l.release();
            this.g.close();
            this.H = true;
            this.I.countDown();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void j(Throwable th) {
        el2 el2Var = this.D;
        ex1 ex1Var = this.s;
        o91 o91Var = this.M;
        m mVar = this.O;
        if (this.z) {
            return;
        }
        this.z = true;
        try {
            w37 w37Var = this.a0;
            w37Var.f = false;
            ScheduledFuture<?> scheduledFuture = w37Var.g;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                w37Var.g = null;
            }
            l(false);
        } finally {
            h88 h88VarG = h88.l.h("Panic! This is a bug!").g(th);
            io.grpc.h.g gVar = io.grpc.h.g.e;
            o8.f(!h88VarG.f(), "drop status shouldn't be OK");
            el2Var.g(new io.grpc.h.d(new io.grpc.h.g(null, h88VarG, true)));
            mVar.h(null);
            o91Var.a(n91.a.ERROR, "PANIC! Entering TRANSIENT_FAILURE");
            ex1Var.a(cx1.TRANSIENT_FAILURE);
        }
    }

    public final void k() {
        long j2 = this.r;
        if (j2 == -1) {
            return;
        }
        w37 w37Var = this.a0;
        w37Var.getClass();
        long nanos = TimeUnit.MILLISECONDS.toNanos(j2);
        long jA = w37Var.d.a() + nanos;
        w37Var.f = true;
        if (jA - w37Var.e < 0 || w37Var.g == null) {
            ScheduledFuture<?> scheduledFuture = w37Var.g;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            w37Var.g = w37Var.a.schedule(w37Var.new b(), nanos, TimeUnit.NANOSECONDS);
        }
        w37Var.e = jA;
    }

    public final void l(boolean z) {
        this.n.d();
        if (z) {
            o8.s(this.x, "nameResolver is not started");
            o8.s(this.y != null, "lbHelper is null");
        }
        nj3 nj3Var = this.w;
        if (nj3Var != null) {
            nj3Var.c();
            this.x = false;
            if (z) {
                this.w = h(this.c, this.d, this.e);
            } else {
                this.w = null;
            }
        }
        k kVar = this.y;
        if (kVar != null) {
            kVar.a.d();
            this.y = null;
        }
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.b(this.a.c, "logId");
        aVarB.d(this.b, TypedValues.AttributesType.S_TARGET);
        return aVarB.toString();
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class o implements ScheduledExecutorService, AutoCloseable {
        public final ScheduledExecutorService b;

        public o(ScheduledExecutorService scheduledExecutorService) {
            o8.l(scheduledExecutorService, "delegate");
            this.b = scheduledExecutorService;
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j, TimeUnit timeUnit) {
            return this.b.awaitTermination(j, timeUnit);
        }

        @Override // java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            if (this == ForkJoinPool.commonPool() || isTerminated()) {
                return;
            }
            shutdown();
            throw null;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.b.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
            return this.b.invokeAll(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public final <T> T invokeAny(Collection<? extends Callable<T>> collection) {
            return (T) this.b.invokeAny(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.b.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.b.isTerminated();
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public final <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            return this.b.schedule(callable, j, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public final ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            return this.b.scheduleAtFixedRate(runnable, j, j2, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public final ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            return this.b.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            throw new UnsupportedOperationException("Restricted: shutdown() is not allowed");
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            throw new UnsupportedOperationException("Restricted: shutdownNow() is not allowed");
        }

        @Override // java.util.concurrent.ExecutorService
        public final <T> Future<T> submit(Callable<T> callable) {
            return this.b.submit(callable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
            return this.b.invokeAll(collection, j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
            return (T) this.b.invokeAny(collection, j, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public final ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.b.schedule(runnable, j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public final Future<?> submit(Runnable runnable) {
            return this.b.submit(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final <T> Future<T> submit(Runnable runnable, T t) {
            return this.b.submit(runnable, t);
        }
    }
}
