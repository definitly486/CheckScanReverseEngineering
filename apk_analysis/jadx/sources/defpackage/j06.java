package defpackage;

import com.google.common.collect.n;
import java.lang.reflect.Array;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class j06 extends io.grpc.h {
    public static final io.grpc.a.b<c> o = new io.grpc.a.b<>("endpointTrackerKey");
    public final d f;
    public final HashMap g = new HashMap();
    public final ch8 h;
    public final ir3 i;
    public final du8 j;
    public final ScheduledExecutorService k;
    public ch8.c l;
    public Long m;
    public final n91 n;

    public final class a extends kj3 {
        public final rv3 a;

        public a(io.grpc.h.e eVar) {
            this.a = new rv3(eVar);
        }

        @Override // defpackage.kj3, io.grpc.h.e
        public final io.grpc.h.j a(io.grpc.h.b bVar) {
            j06 j06Var = j06.this;
            HashMap map = j06Var.g;
            h hVar = j06Var.new h(bVar, this.a);
            List<io.grpc.d> list = bVar.a;
            if (j06.e(list) && map.containsKey(list.get(0).a.get(0))) {
                c cVar = (c) map.get(list.get(0).a.get(0));
                cVar.a(hVar);
                if (cVar.d != null) {
                    hVar.k();
                }
            }
            return hVar;
        }

        @Override // io.grpc.h.e
        public final void f(cx1 cx1Var, io.grpc.h.k kVar) {
            this.a.f(cx1Var, new g(kVar));
        }

        @Override // defpackage.kj3
        public final io.grpc.h.e g() {
            return this.a;
        }
    }

    public final class b implements Runnable {
        public final f b;
        public final n91 c;

        public b(f fVar, n91 n91Var) {
            this.b = fVar;
            this.c = n91Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            j06 j06Var = j06.this;
            j06Var.m = Long.valueOf(j06Var.j.a());
            for (c cVar : j06.this.f.b.values()) {
                c.a aVar = cVar.c;
                aVar.a.set(0L);
                aVar.b.set(0L);
                c.a aVar2 = cVar.b;
                cVar.b = cVar.c;
                cVar.c = aVar2;
            }
            f fVar = this.b;
            n91 n91Var = this.c;
            com.google.common.collect.j.b bVar = com.google.common.collect.j.c;
            com.google.common.collect.j.a aVar3 = new com.google.common.collect.j.a();
            if (fVar.e != null) {
                aVar3.c(new j(fVar, n91Var));
            }
            if (fVar.f != null) {
                aVar3.c(new e(fVar, n91Var));
            }
            com.google.common.collect.j.b bVarListIterator = aVar3.g().listIterator(0);
            while (bVarListIterator.hasNext()) {
                i iVar = (i) bVarListIterator.next();
                j06 j06Var2 = j06.this;
                iVar.a(j06Var2.f, j06Var2.m.longValue());
            }
            j06 j06Var3 = j06.this;
            d dVar = j06Var3.f;
            long jLongValue = j06Var3.m.longValue();
            for (c cVar2 : dVar.b.values()) {
                if (!cVar2.d()) {
                    int i = cVar2.e;
                    cVar2.e = i == 0 ? 0 : i - 1;
                }
                if (cVar2.d()) {
                    f fVar2 = cVar2.a;
                    if (jLongValue - (Math.min(cVar2.a.b * ((long) cVar2.e), Math.max(fVar2.b, fVar2.c)) + cVar2.d.longValue()) > 0) {
                        cVar2.e();
                    }
                }
            }
        }
    }

    public static final class c {
        public f a;
        public Long d;
        public int e;
        public volatile a b = new a();
        public a c = new a();
        public final HashSet f = new HashSet();

        public static final class a {
            public final AtomicLong a = new AtomicLong();
            public final AtomicLong b = new AtomicLong();
        }

        public c(f fVar) {
            this.a = fVar;
        }

        public final void a(h hVar) {
            if (d() && !hVar.c) {
                hVar.k();
            } else if (!d() && hVar.c) {
                hVar.c = false;
                dx1 dx1Var = hVar.d;
                if (dx1Var != null) {
                    hVar.e.a(dx1Var);
                    hVar.f.b(n91.a.INFO, "Subchannel unejected: {0}", hVar);
                }
            }
            hVar.b = this;
            this.f.add(hVar);
        }

        public final void b(long j) {
            this.d = Long.valueOf(j);
            this.e++;
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((h) it.next()).k();
            }
        }

        public final long c() {
            return this.c.b.get() + this.c.a.get();
        }

        public final boolean d() {
            return this.d != null;
        }

        public final void e() {
            o8.s(this.d != null, "not currently ejected");
            this.d = null;
            for (h hVar : this.f) {
                hVar.c = false;
                dx1 dx1Var = hVar.d;
                if (dx1Var != null) {
                    hVar.e.a(dx1Var);
                    hVar.f.b(n91.a.INFO, "Subchannel unejected: {0}", hVar);
                }
            }
        }

        public final String toString() {
            return "EndpointTracker{subchannels=" + this.f + '}';
        }
    }

    public static final class e implements i {
        public final f a;
        public final n91 b;

        public e(f fVar, n91 n91Var) {
            this.a = fVar;
            this.b = n91Var;
        }

        @Override // j06.i
        public final void a(d dVar, long j) {
            f fVar = this.a;
            ArrayList<c> arrayListF = j06.f(dVar, fVar.f.d);
            int size = arrayListF.size();
            f.b bVar = fVar.f;
            if (size < bVar.c || arrayListF.size() == 0) {
                return;
            }
            for (c cVar : arrayListF) {
                if (dVar.a() >= fVar.d) {
                    return;
                }
                if (cVar.c() >= bVar.d) {
                    if (cVar.c.b.get() / cVar.c() > ((double) bVar.a) / 100.0d) {
                        this.b.b(n91.a.DEBUG, "FailurePercentage algorithm detected outlier: {0}, failureRate={1}", cVar, Double.valueOf(cVar.c.b.get() / cVar.c()));
                        if (new Random().nextInt(100) < bVar.b) {
                            cVar.b(j);
                        }
                    }
                }
            }
        }
    }

    public static final class f {
        public final long a;
        public final long b;
        public final long c;
        public final int d;
        public final c e;
        public final b f;
        public final Object g;

        public static final class a {
            public long a;
            public long b;
            public long c;
            public int d;
            public c e;
            public b f;
            public Object g;
        }

        public static final class b {
            public final int a;
            public final int b;
            public final int c;
            public final int d;

            public static class a {
                public int a;
                public int b;
                public int c;
                public int d;
            }

            public b(a aVar) {
                this.a = aVar.a;
                this.b = aVar.b;
                this.c = aVar.c;
                this.d = aVar.d;
            }
        }

        public static final class c {
            public final int a;
            public final int b;
            public final int c;
            public final int d;

            public static final class a {
                public int a;
                public int b;
                public int c;
                public int d;
            }

            public c(a aVar) {
                this.a = aVar.a;
                this.b = aVar.b;
                this.c = aVar.c;
                this.d = aVar.d;
            }
        }

        public f(a aVar) {
            this.a = aVar.a;
            this.b = aVar.b;
            this.c = aVar.c;
            this.d = aVar.d;
            this.e = aVar.e;
            this.f = aVar.f;
            this.g = aVar.g;
        }
    }

    public final class g extends io.grpc.h.k {
        public final io.grpc.h.k a;

        public final class a extends io.grpc.c.a {
            public final c a;
            public final io.grpc.c.a b;

            /* JADX INFO: renamed from: j06$g$a$a, reason: collision with other inner class name */
            public class C0210a extends bj3 {
                public final /* synthetic */ io.grpc.c p;

                public C0210a(io.grpc.c cVar) {
                    this.p = cVar;
                }

                @Override // defpackage.y14
                public final void N(h88 h88Var) {
                    c cVar = a.this.a;
                    boolean zF = h88Var.f();
                    f fVar = cVar.a;
                    if (fVar.e != null || fVar.f != null) {
                        c.a aVar = cVar.b;
                        if (zF) {
                            aVar.a.getAndIncrement();
                        } else {
                            aVar.b.getAndIncrement();
                        }
                    }
                    this.p.N(h88Var);
                }
            }

            public class b extends io.grpc.c {
                public b() {
                }

                @Override // defpackage.y14
                public final void N(h88 h88Var) {
                    c cVar = a.this.a;
                    boolean zF = h88Var.f();
                    f fVar = cVar.a;
                    if (fVar.e == null && fVar.f == null) {
                        return;
                    }
                    c.a aVar = cVar.b;
                    if (zF) {
                        aVar.a.getAndIncrement();
                    } else {
                        aVar.b.getAndIncrement();
                    }
                }
            }

            public a(c cVar, io.grpc.c.a aVar) {
                this.a = cVar;
                this.b = aVar;
            }

            @Override // io.grpc.c.a
            public final io.grpc.c a(io.grpc.c.b bVar, la5 la5Var) {
                io.grpc.c.a aVar = this.b;
                return aVar != null ? new C0210a(aVar.a(bVar, la5Var)) : new b();
            }
        }

        public g(io.grpc.h.k kVar) {
            this.a = kVar;
        }

        @Override // io.grpc.h.k
        public final io.grpc.h.g a(l86 l86Var) {
            io.grpc.h.g gVarA = this.a.a(l86Var);
            io.grpc.h.j jVar = gVarA.a;
            io.grpc.c.a aVar = gVarA.b;
            if (jVar == null) {
                return gVarA;
            }
            io.grpc.a aVarC = jVar.c();
            c cVar = (c) aVarC.a.get(j06.o);
            if (jVar instanceof h) {
                jVar = ((h) jVar).a;
            }
            o8.l(jVar, "subchannel");
            io.grpc.h.g gVar = new io.grpc.h.g(jVar, aVar, gVarA.c, gVarA.d);
            return new io.grpc.h.g(jVar, new a(cVar, aVar), gVar.c, gVar.d);
        }
    }

    public final class h extends rj3 {
        public final io.grpc.h.j a;
        public c b;
        public boolean c;
        public dx1 d;
        public io.grpc.h.l e;
        public final n91 f;

        public final class a implements io.grpc.h.l {
            public final io.grpc.h.l a;

            public a(io.grpc.h.l lVar) {
                this.a = lVar;
            }

            @Override // io.grpc.h.l
            public final void a(dx1 dx1Var) {
                h hVar = h.this;
                hVar.d = dx1Var;
                if (hVar.c) {
                    return;
                }
                this.a.a(dx1Var);
            }
        }

        public h(io.grpc.h.b bVar, rv3 rv3Var) {
            io.grpc.h.j jVarA;
            io.grpc.h.b.C0205b<io.grpc.h.l> c0205b = io.grpc.h.b;
            io.grpc.h.l lVar = (io.grpc.h.l) bVar.a(c0205b);
            if (lVar != null) {
                this.e = lVar;
                a aVar = new a(lVar);
                io.grpc.h.b.a aVar2 = new io.grpc.h.b.a();
                aVar2.b = io.grpc.a.b;
                aVar2.c = io.grpc.h.b.a.d;
                aVar2.b(bVar.a);
                aVar2.b = bVar.b;
                Object[][] objArr = bVar.c;
                Object[][] objArr2 = (Object[][]) Array.newInstance((Class<?>) Object.class, objArr.length, 2);
                aVar2.c = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
                aVar2.a(c0205b, aVar);
                jVarA = rv3Var.a(new io.grpc.h.b(aVar2.a, aVar2.b, aVar2.c));
                this.a = jVarA;
            } else {
                jVarA = rv3Var.a(bVar);
                this.a = jVarA;
            }
            this.f = jVarA.d();
        }

        @Override // io.grpc.h.j
        public final io.grpc.a c() {
            c cVar = this.b;
            io.grpc.h.j jVar = this.a;
            if (cVar == null) {
                return jVar.c();
            }
            io.grpc.a aVarC = jVar.c();
            aVarC.getClass();
            IdentityHashMap<io.grpc.a.b<?>, Object> identityHashMap = aVarC.a;
            io.grpc.a.b<c> bVar = j06.o;
            c cVar2 = this.b;
            IdentityHashMap identityHashMap2 = new IdentityHashMap(identityHashMap.size() + 1);
            identityHashMap2.putAll(identityHashMap);
            identityHashMap2.put(bVar, cVar2);
            return new io.grpc.a(identityHashMap2);
        }

        @Override // defpackage.rj3, io.grpc.h.j
        public final void g() {
            c cVar = this.b;
            if (cVar != null) {
                this.b = null;
                cVar.f.remove(this);
            }
            super.g();
        }

        @Override // io.grpc.h.j
        public final void h(io.grpc.h.l lVar) {
            if (this.e != null) {
                j().h(lVar);
                return;
            }
            this.e = lVar;
            j().h(new a(lVar));
        }

        @Override // defpackage.rj3, io.grpc.h.j
        public final void i(List<io.grpc.d> list) {
            j06 j06Var = j06.this;
            if (j06.e(b()) && j06.e(list)) {
                if (j06Var.f.containsValue(this.b)) {
                    c cVar = this.b;
                    cVar.getClass();
                    this.b = null;
                    cVar.f.remove(this);
                }
                SocketAddress socketAddress = list.get(0).a.get(0);
                if (j06Var.g.containsKey(socketAddress)) {
                    ((c) j06Var.g.get(socketAddress)).a(this);
                }
            } else if (!j06.e(b()) || j06.e(list)) {
                if (!j06.e(b()) && j06.e(list)) {
                    SocketAddress socketAddress2 = list.get(0).a.get(0);
                    if (j06Var.g.containsKey(socketAddress2)) {
                        ((c) j06Var.g.get(socketAddress2)).a(this);
                    }
                }
            } else if (j06Var.g.containsKey(a().a.get(0))) {
                c cVar2 = (c) j06Var.g.get(a().a.get(0));
                cVar2.getClass();
                this.b = null;
                cVar2.f.remove(this);
                c.a aVar = cVar2.b;
                aVar.a.set(0L);
                aVar.b.set(0L);
                c.a aVar2 = cVar2.c;
                aVar2.a.set(0L);
                aVar2.b.set(0L);
            }
            this.a.i(list);
        }

        @Override // defpackage.rj3
        public final io.grpc.h.j j() {
            return this.a;
        }

        public final void k() {
            this.c = true;
            io.grpc.h.l lVar = this.e;
            h88 h88VarH = h88.m.h("The subchannel has been ejected by outlier detection");
            o8.f(true ^ h88VarH.f(), "The error status must not be OK");
            lVar.a(new dx1(cx1.TRANSIENT_FAILURE, h88VarH));
            this.f.b(n91.a.INFO, "Subchannel ejected: {0}", this);
        }

        @Override // defpackage.rj3
        public final String toString() {
            return "OutlierDetectionSubchannel{addresses=" + this.a.b() + '}';
        }
    }

    public interface i {
        void a(d dVar, long j);
    }

    public static final class j implements i {
        public final f a;
        public final n91 b;

        public j(f fVar, n91 n91Var) {
            o8.f(fVar.e != null, "success rate ejection config is null");
            this.a = fVar;
            this.b = n91Var;
        }

        /* JADX WARN: Code duplicated, block: B:30:0x010a  */
        @Override // j06.i
        public final void a(d dVar, long j) {
            f fVar = this.a;
            d dVar2 = dVar;
            ArrayList<c> arrayListF = j06.f(dVar2, fVar.e.d);
            int size = arrayListF.size();
            f.c cVar = fVar.e;
            if (size < cVar.c || arrayListF.size() == 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (c cVar2 : arrayListF) {
                arrayList.add(Double.valueOf(cVar2.c.a.get() / cVar2.c()));
            }
            Iterator it = arrayList.iterator();
            double d = 0.0d;
            double dDoubleValue = 0.0d;
            while (it.hasNext()) {
                dDoubleValue += ((Double) it.next()).doubleValue();
            }
            double size2 = dDoubleValue / ((double) arrayList.size());
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                double dDoubleValue2 = ((Double) it2.next()).doubleValue() - size2;
                d += dDoubleValue2 * dDoubleValue2;
            }
            double dSqrt = Math.sqrt(d / ((double) arrayList.size()));
            double d2 = size2 - (((double) (cVar.a / 1000.0f)) * dSqrt);
            Iterator it3 = arrayListF.iterator();
            while (it3.hasNext()) {
                c cVar3 = (c) it3.next();
                f fVar2 = fVar;
                Iterator it4 = it3;
                if (dVar2.a() >= fVar.d) {
                    return;
                }
                if (cVar3.c.a.get() / cVar3.c() < d2) {
                    this.b.b(n91.a.DEBUG, "SuccessRate algorithm detected outlier: {0}. Parameters: successRate={1}, mean={2}, stdev={3}, requiredSuccessRate={4}", cVar3, Double.valueOf(cVar3.c.a.get() / cVar3.c()), Double.valueOf(size2), Double.valueOf(dSqrt), Double.valueOf(d2));
                    if (new Random().nextInt(100) < cVar.b) {
                        cVar3.b(j);
                    }
                }
                dVar2 = dVar;
                fVar = fVar2;
                it3 = it4;
            }
        }
    }

    public j06(io.grpc.h.e eVar, du8 du8Var) {
        n91 n91VarB = eVar.b();
        this.n = n91VarB;
        this.i = new ir3(new a(eVar));
        this.f = new d();
        ch8 ch8VarD = eVar.d();
        o8.l(ch8VarD, "syncContext");
        this.h = ch8VarD;
        ScheduledExecutorService scheduledExecutorServiceC = eVar.c();
        o8.l(scheduledExecutorServiceC, "timeService");
        this.k = scheduledExecutorServiceC;
        this.j = du8Var;
        n91VarB.a(n91.a.DEBUG, "OutlierDetection lb created.");
    }

    public static boolean e(List<io.grpc.d> list) {
        Iterator<io.grpc.d> it = list.iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().a.size();
            if (size > 1) {
                return false;
            }
        }
        return true;
    }

    public static ArrayList f(d dVar, int i2) {
        ArrayList arrayList = new ArrayList();
        for (c cVar : dVar.values()) {
            if (cVar.c() >= i2) {
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }

    @Override // io.grpc.h
    public final h88 a(io.grpc.h.i iVar) {
        HashMap map = this.g;
        d dVar = this.f;
        n91 n91Var = this.n;
        n91Var.b(n91.a.DEBUG, "Received resolution result: {0}", iVar);
        f fVar = (f) iVar.c;
        HashSet<Set> hashSet = new HashSet();
        HashMap map2 = new HashMap();
        for (io.grpc.d dVar2 : iVar.a) {
            n nVarN = n.n(dVar2.a);
            hashSet.add(nVarN);
            for (SocketAddress socketAddress : dVar2.a) {
                if (map2.containsKey(socketAddress)) {
                    n91Var.b(n91.a.WARNING, "Unexpected duplicated address {0} belongs to multiple endpoints", socketAddress);
                }
                map2.put(socketAddress, nVarN);
            }
        }
        dVar.keySet().retainAll(hashSet);
        Iterator it = dVar.b.values().iterator();
        while (it.hasNext()) {
            ((c) it.next()).a = fVar;
        }
        HashMap map3 = dVar.b;
        for (Set set : hashSet) {
            if (!map3.containsKey(set)) {
                map3.put(set, new c(fVar));
            }
        }
        map.clear();
        for (Map.Entry entry : map2.entrySet()) {
            map.put((SocketAddress) entry.getKey(), dVar.get(entry.getValue()));
        }
        if (fVar.e == null && fVar.f == null) {
            ch8.c cVar = this.l;
            if (cVar != null) {
                cVar.a();
                this.m = null;
                for (c cVar2 : dVar.b.values()) {
                    if (cVar2.d()) {
                        cVar2.e();
                    }
                    cVar2.e = 0;
                }
            }
        } else {
            Long l = this.m;
            long jMax = fVar.a;
            if (l != null) {
                jMax = Math.max(0L, jMax - (this.j.a() - this.m.longValue()));
            }
            long j2 = jMax;
            ch8.c cVar3 = this.l;
            if (cVar3 != null) {
                cVar3.a();
                for (c cVar4 : dVar.b.values()) {
                    c.a aVar = cVar4.b;
                    aVar.a.set(0L);
                    aVar.b.set(0L);
                    c.a aVar2 = cVar4.c;
                    aVar2.a.set(0L);
                    aVar2.b.set(0L);
                }
            }
            ch8 ch8Var = this.h;
            b bVar = new b(fVar, n91Var);
            long j3 = fVar.a;
            ScheduledExecutorService scheduledExecutorService = this.k;
            ch8Var.getClass();
            ch8.b bVar2 = new ch8.b(bVar);
            this.l = new ch8.c(bVar2, scheduledExecutorService.scheduleWithFixedDelay(new dh8(ch8Var, bVar2, bVar, j3), j2, j3, TimeUnit.NANOSECONDS));
        }
        ir3 ir3Var = this.i;
        io.grpc.h.i.a aVarA = iVar.a();
        aVarA.c = fVar.g;
        return ir3Var.a(aVarA.a());
    }

    @Override // io.grpc.h
    public final void b(h88 h88Var) {
        this.i.b(h88Var);
    }

    @Override // io.grpc.h
    public final void d() {
        this.i.d();
    }

    public static final class d extends mj3<Set<SocketAddress>, c> {
        public final HashMap b = new HashMap();

        public final double a() {
            HashMap map = this.b;
            if (map.isEmpty()) {
                return 0.0d;
            }
            Iterator it = map.values().iterator();
            int i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                i2++;
                if (((c) it.next()).d()) {
                    i++;
                }
            }
            return (((double) i) / ((double) i2)) * 100.0d;
        }

        @Override // defpackage.mj3, defpackage.oj3
        public final Object delegate() {
            return this.b;
        }

        @Override // defpackage.mj3, defpackage.oj3
        public final Map<Set<SocketAddress>, c> delegate() {
            return this.b;
        }
    }
}
