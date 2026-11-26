package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class k67<ReqT> implements cm1 {
    public static final la5.b B;
    public static final la5.b C;
    public static final h88 D;
    public static final Random E;
    public static final boolean F;
    public boolean A;
    public final ra5<ReqT, ?> b;
    public final Executor c;
    public final ScheduledExecutorService e;
    public final la5 f;
    public final q67 g;
    public final sv3 h;
    public final boolean i;
    public final p k;
    public final long l;
    public final long m;
    public final y n;
    public t t;
    public long u;
    public dm1 v;
    public q w;
    public q x;
    public long y;
    public h88 z;
    public final ch8 d = new ch8(new a());
    public final Object j = new Object();
    public final y54 o = new y54();
    public volatile v p = new v(new ArrayList(8), Collections.EMPTY_LIST, null, null, false, false, false, 0);
    public final AtomicBoolean q = new AtomicBoolean();
    public final AtomicInteger r = new AtomicInteger();
    public final AtomicInteger s = new AtomicInteger();

    public class a implements Thread.UncaughtExceptionHandler {
        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            throw h88.e(th).h("Uncaught exception in the SynchronizationContext. Re-thrown.").a();
        }
    }

    public class b implements n {
        public final /* synthetic */ qu1 a;

        public b(qu1 qu1Var) {
            this.a = qu1Var;
        }

        @Override // k67.n
        public final void a(x xVar) {
            xVar.a.c(this.a);
        }
    }

    public class c implements n {
        public final /* synthetic */ xc2 a;

        public c(xc2 xc2Var) {
            this.a = xc2Var;
        }

        @Override // k67.n
        public final void a(x xVar) {
            xVar.a.g(this.a);
        }
    }

    public class d implements n {
        public final /* synthetic */ yd2 a;

        public d(yd2 yd2Var) {
            this.a = yd2Var;
        }

        @Override // k67.n
        public final void a(x xVar) {
            xVar.a.f(this.a);
        }
    }

    public class e implements n {
        @Override // k67.n
        public final void a(x xVar) {
            xVar.a.flush();
        }
    }

    public class f implements n {
        @Override // k67.n
        public final void a(x xVar) {
            xVar.a.h();
        }
    }

    public class g implements n {
        public final /* synthetic */ int a;

        public g(int i) {
            this.a = i;
        }

        @Override // k67.n
        public final void a(x xVar) {
            xVar.a.a(this.a);
        }
    }

    public class h implements n {
        public final /* synthetic */ int a;

        public h(int i) {
            this.a = i;
        }

        @Override // k67.n
        public final void a(x xVar) {
            xVar.a.b(this.a);
        }
    }

    public class i implements n {
        @Override // k67.n
        public final void a(x xVar) {
            xVar.a.e();
        }
    }

    public class j implements n {
        public final /* synthetic */ Object a;

        public j(Object obj) {
            this.a = obj;
        }

        @Override // k67.n
        public final void a(x xVar) {
            cm1 cm1Var = xVar.a;
            ra5<ReqT, ?> ra5Var = k67.this.b;
            cm1Var.d(ra5Var.d.b(this.a));
            xVar.a.flush();
        }
    }

    public class k extends io.grpc.c.a {
        public final /* synthetic */ o a;

        public k(o oVar) {
            this.a = oVar;
        }

        @Override // io.grpc.c.a
        public final io.grpc.c a(io.grpc.c.b bVar, la5 la5Var) {
            return this.a;
        }
    }

    public class l implements Runnable {
        public l() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            k67 k67Var = k67.this;
            if (k67Var.A) {
                return;
            }
            k67Var.v.d();
        }
    }

    public class m implements Runnable {
        public final /* synthetic */ h88 b;
        public final /* synthetic */ dm1.a c;
        public final /* synthetic */ la5 d;

        public m(h88 h88Var, dm1.a aVar, la5 la5Var) {
            this.b = h88Var;
            this.c = aVar;
            this.d = la5Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            k67 k67Var = k67.this;
            k67Var.A = true;
            k67Var.v.c(this.b, this.c, this.d);
        }
    }

    public interface n {
        void a(x xVar);
    }

    public class o extends io.grpc.c {
        public final x p;
        public long q;

        public o(x xVar) {
            this.p = xVar;
        }

        @Override // defpackage.y14
        public final void M(long j) {
            if (k67.this.p.f != null) {
                return;
            }
            synchronized (k67.this.j) {
                try {
                    if (k67.this.p.f == null) {
                        x xVar = this.p;
                        if (!xVar.b) {
                            long j2 = this.q + j;
                            this.q = j2;
                            k67 k67Var = k67.this;
                            long j3 = k67Var.u;
                            if (j2 <= j3) {
                                return;
                            }
                            if (j2 > k67Var.l) {
                                xVar.c = true;
                            } else {
                                long jAddAndGet = k67Var.k.a.addAndGet(j2 - j3);
                                k67 k67Var2 = k67.this;
                                k67Var2.u = this.q;
                                if (jAddAndGet > k67Var2.m) {
                                    this.p.c = true;
                                }
                                k67Var = k67Var2;
                            }
                            x xVar2 = this.p;
                            l67 l67VarK = xVar2.c ? k67Var.k(xVar2) : null;
                            if (l67VarK != null) {
                                l67VarK.run();
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static final class p {
        public final AtomicLong a = new AtomicLong();
    }

    public static final class q {
        public final Object a;
        public Future<?> b;
        public boolean c;

        public q(Object obj) {
            this.a = obj;
        }

        public final void a(ScheduledFuture scheduledFuture) {
            boolean z;
            synchronized (this.a) {
                try {
                    z = this.c;
                    if (!z) {
                        this.b = scheduledFuture;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                scheduledFuture.cancel(false);
            }
        }
    }

    public final class r implements Runnable {
        public final q b;

        public class a implements Runnable {
            public final /* synthetic */ x b;

            public a(x xVar) {
                this.b = xVar;
            }

            /* JADX WARN: Code duplicated, block: B:20:0x0054 A[Catch: all -> 0x0051, TryCatch #0 {all -> 0x0051, blocks: (B:4:0x0007, B:25:0x007d, B:7:0x0013, B:9:0x002c, B:11:0x0034, B:16:0x0042, B:20:0x0054, B:24:0x0074, B:23:0x005f), top: B:35:0x0007 }] */
            /* JADX WARN: Code duplicated, block: B:22:0x005e  */
            /* JADX WARN: Code duplicated, block: B:23:0x005f A[Catch: all -> 0x0051, TryCatch #0 {all -> 0x0051, blocks: (B:4:0x0007, B:25:0x007d, B:7:0x0013, B:9:0x002c, B:11:0x0034, B:16:0x0042, B:20:0x0054, B:24:0x0074, B:23:0x005f), top: B:35:0x0007 }] */
            @Override // java.lang.Runnable
            public final void run() {
                r rVar;
                boolean z;
                q qVar;
                v vVar;
                synchronized (k67.this.j) {
                    try {
                        rVar = r.this;
                        z = true;
                        qVar = null;
                        if (!rVar.b.c) {
                            k67 k67Var = k67.this;
                            k67Var.p = k67Var.p.a(this.b);
                            k67 k67Var2 = k67.this;
                            if (k67Var2.r(k67Var2.p)) {
                                y yVar = k67.this.n;
                                if (yVar != null) {
                                    if (yVar.d.get() <= yVar.b) {
                                        z = false;
                                    }
                                    if (!z) {
                                        k67 k67Var3 = k67.this;
                                        vVar = k67Var3.p;
                                        if (vVar.h) {
                                            vVar = new v(vVar.b, vVar.c, vVar.d, vVar.f, vVar.g, vVar.a, true, vVar.e);
                                        }
                                        k67Var3.p = vVar;
                                        rVar = r.this;
                                        k67.this.x = null;
                                    }
                                }
                                rVar = r.this;
                                k67 k67Var4 = k67.this;
                                qVar = new q(k67Var4.j);
                                k67Var4.x = qVar;
                            } else {
                                k67 k67Var5 = k67.this;
                                vVar = k67Var5.p;
                                if (vVar.h) {
                                    vVar = new v(vVar.b, vVar.c, vVar.d, vVar.f, vVar.g, vVar.a, true, vVar.e);
                                }
                                k67Var5.p = vVar;
                                rVar = r.this;
                                k67.this.x = null;
                            }
                            z = false;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z) {
                    x xVar = this.b;
                    xVar.a.i(new w(xVar));
                    this.b.a.j(h88.f.h("Unneeded hedging"));
                } else {
                    if (qVar != null) {
                        k67 k67Var6 = k67.this;
                        qVar.a(k67Var6.e.schedule(new r(qVar), k67Var6.h.b, TimeUnit.NANOSECONDS));
                    }
                    k67.this.p(this.b);
                }
            }
        }

        public r(q qVar) {
            this.b = qVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            k67 k67Var = k67.this;
            x xVarN = k67Var.n(k67Var.p.e, false, true);
            if (xVarN == null) {
                return;
            }
            k67.this.c.execute(new a(xVarN));
        }
    }

    public static final class s {
        public final boolean a;
        public final long b;

        public s(boolean z, long j) {
            this.a = z;
            this.b = j;
        }
    }

    public static final class t {
        public final h88 a;
        public final dm1.a b;
        public final la5 c;

        public t(h88 h88Var, dm1.a aVar, la5 la5Var) {
            this.a = h88Var;
            this.b = aVar;
            this.c = la5Var;
        }
    }

    public class u implements n {
        public u() {
        }

        @Override // k67.n
        public final void a(x xVar) {
            xVar.a.i(new w(xVar));
        }
    }

    public static final class v {
        public final boolean a;
        public final List<n> b;
        public final Collection<x> c;
        public final Collection<x> d;
        public final int e;
        public final x f;
        public final boolean g;
        public final boolean h;

        public v(List<n> list, Collection<x> collection, Collection<x> collection2, x xVar, boolean z, boolean z2, boolean z3, int i) {
            this.b = list;
            o8.l(collection, "drainedSubstreams");
            this.c = collection;
            this.f = xVar;
            this.d = collection2;
            this.g = z;
            this.a = z2;
            this.h = z3;
            this.e = i;
            o8.s(!z2 || list == null, "passThrough should imply buffer is null");
            o8.s((z2 && xVar == null) ? false : true, "passThrough should imply winningSubstream != null");
            o8.s(!z2 || (collection.size() == 1 && collection.contains(xVar)) || (collection.size() == 0 && xVar.b), "passThrough should imply winningSubstream is drained");
            o8.s((z && xVar == null) ? false : true, "cancelled should imply committed");
        }

        public final v a(x xVar) {
            Collection collectionUnmodifiableCollection;
            o8.s(!this.h, "hedging frozen");
            o8.s(this.f == null, "already committed");
            Collection<x> collection = this.d;
            if (collection == null) {
                collectionUnmodifiableCollection = Collections.singleton(xVar);
            } else {
                ArrayList arrayList = new ArrayList(collection);
                arrayList.add(xVar);
                collectionUnmodifiableCollection = Collections.unmodifiableCollection(arrayList);
            }
            return new v(this.b, this.c, collectionUnmodifiableCollection, this.f, this.g, this.a, this.h, this.e + 1);
        }

        public final v b(x xVar, x xVar2) {
            ArrayList arrayList = new ArrayList(this.d);
            arrayList.remove(xVar);
            arrayList.add(xVar2);
            return new v(this.b, this.c, Collections.unmodifiableCollection(arrayList), this.f, this.g, this.a, this.h, this.e);
        }

        public final v c(x xVar) {
            xVar.b = true;
            Collection<x> collection = this.c;
            if (!collection.contains(xVar)) {
                return this;
            }
            ArrayList arrayList = new ArrayList(collection);
            arrayList.remove(xVar);
            return new v(this.b, Collections.unmodifiableCollection(arrayList), this.d, this.f, this.g, this.a, this.h, this.e);
        }

        public final v d(x xVar) {
            List<n> list;
            o8.s(!this.a, "Already passThrough");
            boolean z = xVar.b;
            Collection collectionUnmodifiableCollection = this.c;
            if (!z) {
                if (collectionUnmodifiableCollection.isEmpty()) {
                    collectionUnmodifiableCollection = Collections.singletonList(xVar);
                } else {
                    ArrayList arrayList = new ArrayList(collectionUnmodifiableCollection);
                    arrayList.add(xVar);
                    collectionUnmodifiableCollection = Collections.unmodifiableCollection(arrayList);
                }
            }
            Collection collection = collectionUnmodifiableCollection;
            x xVar2 = this.f;
            boolean z2 = xVar2 != null;
            if (z2) {
                o8.s(xVar2 == xVar, "Another RPC attempt has already committed");
                list = null;
            } else {
                list = this.b;
            }
            return new v(list, collection, this.d, this.f, this.g, z2, this.h, this.e);
        }
    }

    public final class w implements dm1 {
        public final x a;

        public class a implements Runnable {
            public final /* synthetic */ la5 b;

            public a(la5 la5Var) {
                this.b = la5Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k67.this.v.b(this.b);
            }
        }

        public class b implements Runnable {
            public final /* synthetic */ q b;
            public final /* synthetic */ x c;

            public class a implements Runnable {
                public a() {
                }

                @Override // java.lang.Runnable
                public final void run() {
                    b bVar = b.this;
                    k67 k67Var = k67.this;
                    x xVar = bVar.c;
                    la5.b bVar2 = k67.B;
                    k67Var.p(xVar);
                }
            }

            public b(q qVar, x xVar) {
                this.b = qVar;
                this.c = xVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                synchronized (this.b.a) {
                    try {
                        q qVar = this.b;
                        if (qVar.c) {
                            return;
                        }
                        qVar.c = true;
                        k67.this.c.execute(new a());
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                k67 k67Var = k67.this;
                k67Var.A = true;
                dm1 dm1Var = k67Var.v;
                t tVar = k67Var.t;
                dm1Var.c(tVar.a, tVar.b, tVar.c);
            }
        }

        public class d implements Runnable {
            public final /* synthetic */ x b;

            public d(x xVar) {
                this.b = xVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k67 k67Var = k67.this;
                la5.b bVar = k67.B;
                k67Var.p(this.b);
            }
        }

        public class e implements Runnable {
            public final /* synthetic */ j98.a b;

            public e(j98.a aVar) {
                this.b = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k67.this.v.a(this.b);
            }
        }

        public class f implements Runnable {
            public f() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                k67 k67Var = k67.this;
                if (k67Var.A) {
                    return;
                }
                k67Var.v.d();
            }
        }

        public w(x xVar) {
            this.a = xVar;
        }

        @Override // defpackage.j98
        public final void a(j98.a aVar) {
            v vVar = k67.this.p;
            o8.s(vVar.f != null, "Headers should be received prior to messages.");
            if (vVar.f == this.a) {
                k67.this.d.execute(new e(aVar));
                return;
            }
            Logger logger = vs3.a;
            while (true) {
                InputStream next = aVar.next();
                if (next == null) {
                    return;
                } else {
                    vs3.b(next);
                }
            }
        }

        @Override // defpackage.dm1
        public final void b(la5 la5Var) {
            int i;
            int i2;
            if (this.a.d > 0) {
                la5.b bVar = k67.B;
                la5Var.a(bVar);
                la5Var.e(bVar, String.valueOf(this.a.d));
            }
            k67 k67Var = k67.this;
            x xVar = this.a;
            la5.b bVar2 = k67.B;
            l67 l67VarK = k67Var.k(xVar);
            if (l67VarK != null) {
                k67Var.c.execute(l67VarK);
            }
            if (k67.this.p.f == this.a) {
                y yVar = k67.this.n;
                if (yVar != null) {
                    AtomicInteger atomicInteger = yVar.d;
                    do {
                        i = atomicInteger.get();
                        i2 = yVar.a;
                        if (i == i2) {
                            break;
                        }
                    } while (!atomicInteger.compareAndSet(i, Math.min(yVar.c + i, i2)));
                }
                k67.this.d.execute(new a(la5Var));
            }
        }

        /* JADX WARN: Code duplicated, block: B:120:0x021e  */
        @Override // defpackage.dm1
        public final void c(h88 h88Var, dm1.a aVar, la5 la5Var) {
            boolean z;
            s sVar;
            k67 k67Var;
            q qVar;
            Integer numValueOf = -1;
            synchronized (k67.this.j) {
                k67 k67Var2 = k67.this;
                k67Var2.p = k67Var2.p.c(this.a);
                k67.this.o.a.add(String.valueOf(h88Var.a));
            }
            if (k67.this.s.decrementAndGet() == Integer.MIN_VALUE) {
                k67.this.d.execute(new c());
                return;
            }
            x xVar = this.a;
            if (xVar.c) {
                k67 k67Var3 = k67.this;
                l67 l67VarK = k67Var3.k(xVar);
                if (l67VarK != null) {
                    k67Var3.c.execute(l67VarK);
                }
                if (k67.this.p.f == this.a) {
                    k67.this.w(h88Var, aVar, la5Var);
                    return;
                }
                return;
            }
            dm1.a aVar2 = dm1.a.MISCARRIED;
            if (aVar == aVar2 && k67.this.r.incrementAndGet() > 1000) {
                k67 k67Var4 = k67.this;
                l67 l67VarK2 = k67Var4.k(this.a);
                if (l67VarK2 != null) {
                    k67Var4.c.execute(l67VarK2);
                }
                if (k67.this.p.f == this.a) {
                    k67.this.w(vs3.h(h88.a.INTERNAL, "Too many transparent retries. Might be a bug in gRPC", h88Var), aVar, la5Var);
                    return;
                }
                return;
            }
            if (k67.this.p.f == null) {
                if (aVar == aVar2 || (aVar == dm1.a.REFUSED && k67.this.q.compareAndSet(false, true))) {
                    x xVarN = k67.this.n(this.a.d, true, false);
                    if (xVarN == null) {
                        return;
                    }
                    k67 k67Var5 = k67.this;
                    if (k67Var5.i) {
                        synchronized (k67Var5.j) {
                            k67 k67Var6 = k67.this;
                            k67Var6.p = k67Var6.p.b(this.a, xVarN);
                        }
                    }
                    k67.this.c.execute(new d(xVarN));
                    return;
                }
                dm1.a aVar3 = dm1.a.DROPPED;
                k67 k67Var7 = k67.this;
                if (aVar != aVar3) {
                    k67Var7.q.set(true);
                    k67 k67Var8 = k67.this;
                    if (k67Var8.i) {
                        String str = (String) la5Var.c(k67.C);
                        if (str != null) {
                            try {
                                numValueOf = Integer.valueOf(str);
                            } catch (NumberFormatException unused) {
                            }
                        } else {
                            numValueOf = null;
                        }
                        k67 k67Var9 = k67.this;
                        boolean zContains = k67Var9.h.c.contains(h88Var.a);
                        boolean z2 = (k67Var9.n == null || (!zContains && (numValueOf == null || numValueOf.intValue() >= 0))) ? false : !k67Var9.n.a();
                        if (zContains && !z2 && !h88Var.f() && numValueOf != null && numValueOf.intValue() > 0) {
                            numValueOf = 0;
                        }
                        boolean z3 = zContains && !z2;
                        if (z3) {
                            k67.this.v(numValueOf);
                        }
                        synchronized (k67.this.j) {
                            try {
                                k67 k67Var10 = k67.this;
                                v vVar = k67Var10.p;
                                x xVar2 = this.a;
                                ArrayList arrayList = new ArrayList(vVar.d);
                                arrayList.remove(xVar2);
                                k67Var10.p = new v(vVar.b, vVar.c, Collections.unmodifiableCollection(arrayList), vVar.f, vVar.g, vVar.a, vVar.h, vVar.e);
                                if (z3) {
                                    k67 k67Var11 = k67.this;
                                    if (!k67Var11.r(k67Var11.p)) {
                                        if (!k67.this.p.d.isEmpty()) {
                                        }
                                    }
                                    return;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    } else {
                        q67 q67Var = k67Var8.g;
                        long nanos = 0;
                        if (q67Var == null) {
                            sVar = new s(false, 0L);
                        } else {
                            boolean zContains2 = q67Var.f.contains(h88Var.a);
                            String str2 = (String) la5Var.c(k67.C);
                            if (str2 != null) {
                                try {
                                    numValueOf = Integer.valueOf(str2);
                                } catch (NumberFormatException unused2) {
                                }
                            } else {
                                numValueOf = null;
                            }
                            boolean z4 = (k67Var8.n == null || (!zContains2 && (numValueOf == null || numValueOf.intValue() >= 0))) ? false : !k67Var8.n.a();
                            if (k67Var8.g.a <= this.a.d + 1 || z4) {
                                z = false;
                            } else if (numValueOf == null) {
                                if (zContains2) {
                                    long j = k67Var8.y;
                                    Random random = k67.E;
                                    nanos = (long) (j * (k67.F ? (random.nextDouble() * 0.4d) + 0.8d : random.nextDouble()));
                                    double d2 = k67Var8.y;
                                    q67 q67Var2 = k67Var8.g;
                                    k67Var8.y = Math.min((long) (d2 * q67Var2.d), q67Var2.c);
                                    z = true;
                                } else {
                                    z = false;
                                }
                            } else if (numValueOf.intValue() >= 0) {
                                nanos = TimeUnit.MILLISECONDS.toNanos(numValueOf.intValue());
                                k67Var8.y = k67Var8.g.b;
                                z = true;
                            } else {
                                z = false;
                            }
                            sVar = new s(z, nanos);
                        }
                        if (sVar.a) {
                            x xVarN2 = k67.this.n(this.a.d + 1, false, false);
                            if (xVarN2 == null) {
                                return;
                            }
                            synchronized (k67.this.j) {
                                k67Var = k67.this;
                                qVar = new q(k67Var.j);
                                k67Var.w = qVar;
                            }
                            qVar.a(k67Var.e.schedule(new b(qVar, xVarN2), sVar.b, TimeUnit.NANOSECONDS));
                            return;
                        }
                    }
                } else if (k67Var7.i) {
                    k67Var7.q();
                }
            }
            k67 k67Var12 = k67.this;
            l67 l67VarK3 = k67Var12.k(this.a);
            if (l67VarK3 != null) {
                k67Var12.c.execute(l67VarK3);
            }
            if (k67.this.p.f == this.a) {
                k67.this.w(h88Var, aVar, la5Var);
            }
        }

        @Override // defpackage.j98
        public final void d() {
            k67 k67Var = k67.this;
            if (k67Var.isReady()) {
                k67Var.d.execute(new f());
            }
        }
    }

    public static final class x {
        public cm1 a;
        public boolean b;
        public boolean c;
        public final int d;

        public x(int i) {
            this.d = i;
        }
    }

    public static final class y {
        public final int a;
        public final int b;
        public final int c;
        public final AtomicInteger d;

        public y(float f, float f2) {
            AtomicInteger atomicInteger = new AtomicInteger();
            this.d = atomicInteger;
            this.c = (int) (f2 * 1000.0f);
            int i = (int) (f * 1000.0f);
            this.a = i;
            this.b = i / 2;
            atomicInteger.set(i);
        }

        public final boolean a() {
            AtomicInteger atomicInteger;
            int i;
            int i2;
            do {
                atomicInteger = this.d;
                i = atomicInteger.get();
                if (i != 0) {
                    i2 = i - 1000;
                }
            } while (!atomicInteger.compareAndSet(i, Math.max(i2, 0)));
            return i2 > this.b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof y)) {
                return false;
            }
            y yVar = (y) obj;
            return this.a == yVar.a && this.c == yVar.c;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.a), Integer.valueOf(this.c));
        }
    }

    static {
        la5.a aVar = la5.d;
        BitSet bitSet = la5.d.d;
        B = new la5.b("grpc-previous-rpc-attempts", aVar);
        C = new la5.b("grpc-retry-pushback-ms", aVar);
        D = h88.f.h("Stream thrown away because RetriableStream committed");
        E = new Random();
        Logger logger = vs3.a;
        F = l63.a("GRPC_EXPERIMENTAL_XDS_RLS_LB", true);
    }

    public k67(ra5<ReqT, ?> ra5Var, la5 la5Var, p pVar, long j2, long j3, Executor executor, ScheduledExecutorService scheduledExecutorService, q67 q67Var, sv3 sv3Var, y yVar) {
        this.b = ra5Var;
        this.k = pVar;
        this.l = j2;
        this.m = j3;
        this.c = executor;
        this.e = scheduledExecutorService;
        this.f = la5Var;
        this.g = q67Var;
        if (q67Var != null) {
            this.y = q67Var.b;
        }
        this.h = sv3Var;
        o8.f(q67Var == null || sv3Var == null, "Should not provide both retryPolicy and hedgingPolicy");
        this.i = sv3Var != null;
        this.n = yVar;
    }

    @Override // defpackage.cm1
    public final void a(int i2) {
        o(new g(i2));
    }

    @Override // defpackage.cm1
    public final void b(int i2) {
        o(new h(i2));
    }

    @Override // defpackage.e98
    public final void c(qu1 qu1Var) {
        o(new b(qu1Var));
    }

    @Override // defpackage.e98
    public final void d(InputStream inputStream) {
        throw new IllegalStateException("RetriableStream.writeMessage() should not be called directly");
    }

    @Override // defpackage.e98
    public final void e() {
        o(new i());
    }

    @Override // defpackage.cm1
    public final void f(yd2 yd2Var) {
        o(new d(yd2Var));
    }

    @Override // defpackage.e98
    public final void flush() {
        v vVar = this.p;
        if (vVar.a) {
            vVar.f.a.flush();
        } else {
            o(new e());
        }
    }

    @Override // defpackage.cm1
    public final void g(xc2 xc2Var) {
        o(new c(xc2Var));
    }

    @Override // defpackage.cm1
    public final void h() {
        o(new f());
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0058  */
    @Override // defpackage.cm1
    public final void i(dm1 dm1Var) {
        q qVar;
        this.v = dm1Var;
        h88 h88VarU = u();
        if (h88VarU != null) {
            j(h88VarU);
            return;
        }
        synchronized (this.j) {
            this.p.b.add(new u());
        }
        x xVarN = n(0, false, false);
        if (xVarN == null) {
            return;
        }
        if (this.i) {
            synchronized (this.j) {
                try {
                    this.p = this.p.a(xVarN);
                    if (r(this.p)) {
                        y yVar = this.n;
                        if (yVar != null) {
                            if (!(yVar.d.get() > yVar.b)) {
                                qVar = null;
                            }
                        }
                        qVar = new q(this.j);
                        this.x = qVar;
                    } else {
                        qVar = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (qVar != null) {
                qVar.a(this.e.schedule(new r(qVar), this.h.b, TimeUnit.NANOSECONDS));
            }
        }
        p(xVarN);
    }

    @Override // defpackage.e98
    public final boolean isReady() {
        Iterator<x> it = this.p.c.iterator();
        while (it.hasNext()) {
            if (it.next().a.isReady()) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.cm1
    public final void j(h88 h88Var) {
        x xVar;
        x xVar2 = new x(0);
        xVar2.a = new d31(2);
        l67 l67VarK = k(xVar2);
        Object obj = this.j;
        if (l67VarK != null) {
            synchronized (obj) {
                this.p = this.p.d(xVar2);
            }
            l67VarK.run();
            w(h88Var, dm1.a.PROCESSED, new la5());
            return;
        }
        synchronized (obj) {
            try {
                if (this.p.c.contains(this.p.f)) {
                    xVar = this.p.f;
                } else {
                    this.z = h88Var;
                    xVar = null;
                }
                v vVar = this.p;
                this.p = new v(vVar.b, vVar.c, vVar.d, vVar.f, true, vVar.a, vVar.h, vVar.e);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (xVar != null) {
            xVar.a.j(h88Var);
        }
    }

    public final l67 k(x xVar) {
        List<n> list;
        boolean z;
        Collection collectionSingleton;
        Future<?> future;
        Future<?> future2;
        synchronized (this.j) {
            try {
                if (this.p.f != null) {
                    return null;
                }
                Collection<x> collection = this.p.c;
                v vVar = this.p;
                o8.s(vVar.f == null, "Already committed");
                List<n> list2 = vVar.b;
                if (vVar.c.contains(xVar)) {
                    list = null;
                    collectionSingleton = Collections.singleton(xVar);
                    z = true;
                } else {
                    list = list2;
                    z = false;
                    collectionSingleton = Collections.EMPTY_LIST;
                }
                this.p = new v(list, collectionSingleton, vVar.d, xVar, vVar.g, z, vVar.h, vVar.e);
                this.k.a.addAndGet(-this.u);
                q qVar = this.w;
                boolean z2 = qVar != null ? qVar.c : false;
                boolean z3 = qVar != null;
                if (z3) {
                    qVar.c = true;
                    future = qVar.b;
                    this.w = null;
                } else {
                    future = null;
                }
                q qVar2 = this.x;
                if (qVar2 != null) {
                    qVar2.c = true;
                    Future<?> future3 = qVar2.b;
                    this.x = null;
                    future2 = future3;
                } else {
                    future2 = null;
                }
                return new l67(this, collection, xVar, z3, future, z2, future2);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.cm1
    public final void l(y54 y54Var) {
        v vVar;
        synchronized (this.j) {
            y54Var.a(this.o, "closed");
            vVar = this.p;
        }
        if (vVar.f != null) {
            y54 y54Var2 = new y54();
            vVar.f.a.l(y54Var2);
            y54Var.a(y54Var2, "committed");
            return;
        }
        y54 y54Var3 = new y54();
        for (x xVar : vVar.c) {
            y54 y54Var4 = new y54();
            xVar.a.l(y54Var4);
            y54Var3.a.add(String.valueOf(y54Var4));
        }
        y54Var.a(y54Var3, TtmlNode.TEXT_EMPHASIS_MARK_OPEN);
    }

    @Override // defpackage.e98
    public final void m() {
        v vVar = this.p;
        if (vVar.a) {
            vVar.f.a.m();
        } else {
            o(new m67());
        }
    }

    public final x n(int i2, boolean z, boolean z2) {
        AtomicInteger atomicInteger;
        int i3;
        do {
            atomicInteger = this.s;
            i3 = atomicInteger.get();
            if (i3 < 0) {
                return null;
            }
        } while (!atomicInteger.compareAndSet(i3, i3 + 1));
        x xVar = new x(i2);
        k kVar = new k(new o(xVar));
        la5 la5Var = new la5();
        la5Var.d(this.f);
        if (i2 > 0) {
            la5Var.e(B, String.valueOf(i2));
        }
        xVar.a = s(la5Var, kVar, i2, z, z2);
        return xVar;
    }

    public final void o(n nVar) {
        Collection<x> collection;
        synchronized (this.j) {
            try {
                if (!this.p.a) {
                    this.p.b.add(nVar);
                }
                collection = this.p.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator<x> it = collection.iterator();
        while (it.hasNext()) {
            nVar.a(it.next());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0088, code lost:
    
        r0 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0090, code lost:
    
        if (r0.hasNext() == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0092, code lost:
    
        r4 = (k67.n) r0.next();
        r4.a(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009d, code lost:
    
        if ((r4 instanceof k67.u) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009f, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a0, code lost:
    
        r4 = r8.p;
        r5 = r4.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a4, code lost:
    
        if (r5 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a6, code lost:
    
        if (r5 == r9) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ab, code lost:
    
        if (r4.g == false) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(k67.x r9) {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            r2 = r0
            r3 = r1
        L4:
            java.lang.Object r4 = r8.j
            monitor-enter(r4)
            k67$v r5 = r8.p     // Catch: java.lang.Throwable -> L11
            k67$x r6 = r5.f     // Catch: java.lang.Throwable -> L11
            if (r6 == 0) goto L14
            if (r6 == r9) goto L14
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L11
            goto L36
        L11:
            r8 = move-exception
            goto Lb0
        L14:
            boolean r6 = r5.g     // Catch: java.lang.Throwable -> L11
            if (r6 == 0) goto L1a
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L11
            goto L36
        L1a:
            java.util.List<k67$n> r6 = r5.b     // Catch: java.lang.Throwable -> L11
            int r6 = r6.size()     // Catch: java.lang.Throwable -> L11
            if (r0 != r6) goto L5b
            k67$v r0 = r5.d(r9)     // Catch: java.lang.Throwable -> L11
            r8.p = r0     // Catch: java.lang.Throwable -> L11
            boolean r0 = r8.isReady()     // Catch: java.lang.Throwable -> L11
            if (r0 != 0) goto L30
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L11
            return
        L30:
            k67$l r1 = new k67$l     // Catch: java.lang.Throwable -> L11
            r1.<init>()     // Catch: java.lang.Throwable -> L11
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L11
        L36:
            if (r1 == 0) goto L3e
            ch8 r8 = r8.d
            r8.execute(r1)
            return
        L3e:
            if (r2 != 0) goto L4a
            cm1 r0 = r9.a
            k67$w r1 = new k67$w
            r1.<init>(r9)
            r0.i(r1)
        L4a:
            cm1 r0 = r9.a
            k67$v r1 = r8.p
            k67$x r1 = r1.f
            if (r1 != r9) goto L55
            h88 r8 = r8.z
            goto L57
        L55:
            h88 r8 = defpackage.k67.D
        L57:
            r0.j(r8)
            return
        L5b:
            boolean r6 = r9.b     // Catch: java.lang.Throwable -> L11
            if (r6 == 0) goto L61
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L11
            return
        L61:
            int r6 = r0 + 128
            java.util.List<k67$n> r7 = r5.b     // Catch: java.lang.Throwable -> L11
            int r7 = r7.size()     // Catch: java.lang.Throwable -> L11
            int r6 = java.lang.Math.min(r6, r7)     // Catch: java.lang.Throwable -> L11
            if (r3 != 0) goto L7b
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L11
            java.util.List<k67$n> r5 = r5.b     // Catch: java.lang.Throwable -> L11
            java.util.List r0 = r5.subList(r0, r6)     // Catch: java.lang.Throwable -> L11
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L11
            goto L87
        L7b:
            r3.clear()     // Catch: java.lang.Throwable -> L11
            java.util.List<k67$n> r5 = r5.b     // Catch: java.lang.Throwable -> L11
            java.util.List r0 = r5.subList(r0, r6)     // Catch: java.lang.Throwable -> L11
            r3.addAll(r0)     // Catch: java.lang.Throwable -> L11
        L87:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L11
            java.util.Iterator r0 = r3.iterator()
        L8c:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto Lad
            java.lang.Object r4 = r0.next()
            k67$n r4 = (k67.n) r4
            r4.a(r9)
            boolean r4 = r4 instanceof k67.u
            if (r4 == 0) goto La0
            r2 = 1
        La0:
            k67$v r4 = r8.p
            k67$x r5 = r4.f
            if (r5 == 0) goto La9
            if (r5 == r9) goto La9
            goto Lad
        La9:
            boolean r4 = r4.g
            if (r4 == 0) goto L8c
        Lad:
            r0 = r6
            goto L4
        Lb0:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L11
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k67.p(k67$x):void");
    }

    public final void q() {
        Future<?> future;
        synchronized (this.j) {
            try {
                q qVar = this.x;
                future = null;
                if (qVar != null) {
                    qVar.c = true;
                    Future<?> future2 = qVar.b;
                    this.x = null;
                    future = future2;
                }
                v vVar = this.p;
                if (!vVar.h) {
                    vVar = new v(vVar.b, vVar.c, vVar.d, vVar.f, vVar.g, vVar.a, true, vVar.e);
                }
                this.p = vVar;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (future != null) {
            future.cancel(false);
        }
    }

    public final boolean r(v vVar) {
        return vVar.f == null && vVar.e < this.h.a && !vVar.h;
    }

    public abstract cm1 s(la5 la5Var, k kVar, int i2, boolean z, boolean z2);

    public abstract void t();

    public abstract h88 u();

    public final void v(Integer num) {
        if (num == null) {
            return;
        }
        if (num.intValue() < 0) {
            q();
            return;
        }
        synchronized (this.j) {
            try {
                q qVar = this.x;
                if (qVar == null) {
                    return;
                }
                qVar.c = true;
                Future<?> future = qVar.b;
                q qVar2 = new q(this.j);
                this.x = qVar2;
                if (future != null) {
                    future.cancel(false);
                }
                qVar2.a(this.e.schedule(new r(qVar2), num.intValue(), TimeUnit.MILLISECONDS));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void w(h88 h88Var, dm1.a aVar, la5 la5Var) {
        this.t = new t(h88Var, aVar, la5Var);
        if (this.s.addAndGet(Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            this.d.execute(new m(h88Var, aVar, la5Var));
        }
    }

    public final void x(ReqT reqt) {
        v vVar = this.p;
        if (vVar.a) {
            vVar.f.a.d(this.b.d.b(reqt));
        } else {
            o(new j(reqt));
        }
    }
}
