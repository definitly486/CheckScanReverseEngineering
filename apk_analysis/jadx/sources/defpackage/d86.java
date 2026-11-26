package defpackage;

import com.google.common.collect.j;
import com.google.common.collect.w;
import d86.g;
import io.grpc.h;
import java.net.Inet4Address;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class d86 extends io.grpc.h {
    public static final Logger t = Logger.getLogger(d86.class.getName());
    public static final boolean u;
    public final boolean f;
    public final io.grpc.h.e g;
    public final HashMap h;
    public final e i;
    public int j;
    public boolean k;
    public ch8.c l;
    public cx1 m;
    public cx1 n;
    public boolean o;
    public final w33.a p;
    public w33 q;
    public ch8.c r;
    public final boolean s;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[cx1.values().length];
            a = iArr;
            try {
                iArr[cx1.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[cx1.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[cx1.READY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[cx1.TRANSIENT_FAILURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            d86 d86Var = d86.this;
            d86Var.r = null;
            d86Var.i.b = 0;
            d86Var.c();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            d86 d86Var = d86.this;
            d86Var.l = null;
            if (d86Var.i.b()) {
                d86Var.c();
            }
        }
    }

    public final class d implements io.grpc.h.l {
        public h a;

        public d() {
        }

        @Override // io.grpc.h.l
        public final void a(dx1 dx1Var) {
            d86 d86Var = d86.this;
            e eVar = d86Var.i;
            if (d86Var.o) {
                d86.t.log(Level.WARNING, "Ignoring health status {0} for subchannel {1} as this is not under a petiole policy", new Object[]{dx1Var, this.a.a});
                return;
            }
            d86.t.log(Level.FINE, "Received health status {0} for subchannel {1}", new Object[]{dx1Var, this.a.a});
            this.a.d = dx1Var;
            if (eVar.d() && this.a == d86Var.h.get(eVar.a())) {
                d86Var.j(this.a);
            }
        }
    }

    public static final class e {
        public List<a> a;
        public int b;
        public boolean c;

        public static final class a {
            public final io.grpc.a a;
            public final SocketAddress b;

            public a(io.grpc.a aVar, SocketAddress socketAddress) {
                this.a = aVar;
                this.b = socketAddress;
            }
        }

        public static List c(ArrayList arrayList, ArrayList arrayList2) {
            if (arrayList.isEmpty()) {
                return arrayList2;
            }
            if (arrayList2.isEmpty()) {
                return arrayList;
            }
            ArrayList arrayList3 = new ArrayList(arrayList2.size() + arrayList.size());
            for (int i = 0; i < Math.max(arrayList.size(), arrayList2.size()); i++) {
                if (i < arrayList.size()) {
                    arrayList3.add((a) arrayList.get(i));
                }
                if (i < arrayList2.size()) {
                    arrayList3.add((a) arrayList2.get(i));
                }
            }
            return arrayList3;
        }

        public final SocketAddress a() {
            if (d()) {
                return this.a.get(this.b).b;
            }
            ah.f("Index is past the end of the address group list");
            return null;
        }

        public final boolean b() {
            if (!d()) {
                return false;
            }
            this.b++;
            return d();
        }

        public final boolean d() {
            return this.b < this.a.size();
        }

        public final boolean e(SocketAddress socketAddress) {
            o8.l(socketAddress, "needle");
            for (int i = 0; i < this.a.size(); i++) {
                if (this.a.get(i).b.equals(socketAddress)) {
                    this.b = i;
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void f(j jVar) {
            List<a> listC;
            o8.l(jVar, "newGroups");
            if (this.c) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Boolean bool = null;
                for (int i = 0; i < jVar.size(); i++) {
                    io.grpc.d dVar = (io.grpc.d) jVar.get(i);
                    int i2 = 0;
                    while (true) {
                        List<SocketAddress> list = dVar.a;
                        io.grpc.a aVar = dVar.b;
                        if (i2 < list.size()) {
                            SocketAddress socketAddress = dVar.a.get(i2);
                            if ((socketAddress instanceof InetSocketAddress) && (((InetSocketAddress) socketAddress).getAddress() instanceof Inet4Address)) {
                                if (bool == null) {
                                    bool = Boolean.FALSE;
                                }
                                arrayList.add(new a(aVar, socketAddress));
                            } else {
                                if (bool == null) {
                                    bool = Boolean.TRUE;
                                }
                                arrayList2.add(new a(aVar, socketAddress));
                            }
                            i2++;
                        }
                    }
                }
                listC = (bool == null || !bool.booleanValue()) ? c(arrayList, arrayList2) : c(arrayList2, arrayList);
            } else {
                ArrayList arrayList3 = new ArrayList();
                for (int i3 = 0; i3 < jVar.size(); i3++) {
                    io.grpc.d dVar2 = (io.grpc.d) jVar.get(i3);
                    for (int i4 = 0; i4 < dVar2.a.size(); i4++) {
                        arrayList3.add(new a(dVar2.b, dVar2.a.get(i4)));
                    }
                }
                listC = arrayList3;
            }
            this.a = listC;
            this.b = 0;
        }
    }

    public static final class f {
        public final Boolean a;

        public f(Boolean bool) {
            this.a = bool;
        }
    }

    public final class g extends io.grpc.h.k {
        public final d86 a;
        public final AtomicBoolean b = new AtomicBoolean(false);

        public g(d86 d86Var) {
            this.a = d86Var;
        }

        @Override // io.grpc.h.k
        public final io.grpc.h.g a(l86 l86Var) {
            if (this.b.compareAndSet(false, true)) {
                ch8 ch8VarD = d86.this.g.d();
                d86 d86Var = this.a;
                Objects.requireNonNull(d86Var);
                ch8VarD.execute(new om(d86Var, 1));
            }
            return io.grpc.h.g.e;
        }
    }

    public static final class h {
        public final io.grpc.h.j a;
        public cx1 b;
        public boolean c = false;
        public dx1 d = dx1.a(cx1.IDLE);

        public h(io.grpc.h.j jVar, cx1 cx1Var) {
            this.a = jVar;
            this.b = cx1Var;
        }

        public final void a(cx1 cx1Var) {
            this.b = cx1Var;
            if (cx1Var == cx1.READY || cx1Var == cx1.TRANSIENT_FAILURE) {
                this.c = true;
            } else if (cx1Var == cx1.IDLE) {
                this.c = false;
            }
        }
    }

    public static final class i implements Comparable<i> {
        public final io.grpc.d b;
        public final double c;

        public i(io.grpc.d dVar, double d) {
            this.b = dVar;
            this.c = d;
        }

        @Override // java.lang.Comparable
        public final int compareTo(i iVar) {
            return Double.compare(this.c, iVar.c);
        }
    }

    static {
        Logger logger = vs3.a;
        u = l63.a("GRPC_EXPERIMENTAL_PF_WEIGHTED_SHUFFLING", true);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    public d86(io.grpc.h.e eVar) {
        boolean z;
        Logger logger = vs3.a;
        if (l63.a("GRPC_SERIALIZE_RETRIES", false)) {
            z = false;
        } else {
            boolean z2 = f86.b;
            if (l63.a("GRPC_PF_USE_HAPPY_EYEBALLS", false)) {
                z = true;
            } else {
                z = false;
            }
        }
        this.f = z;
        this.h = new HashMap();
        j.b bVar = j.c;
        w wVar = w.f;
        e eVar2 = new e();
        eVar2.b = 0;
        eVar2.c = z;
        eVar2.f(wVar);
        this.i = eVar2;
        this.j = 0;
        this.k = true;
        this.l = null;
        cx1 cx1Var = cx1.IDLE;
        this.m = cx1Var;
        this.n = cx1Var;
        this.o = true;
        this.p = new w33.a();
        this.r = null;
        this.s = l63.a("GRPC_SERIALIZE_RETRIES", false);
        o8.l(eVar, "helper");
        this.g = eVar;
    }

    public static AbstractList g(List list, Random random) {
        if (!u) {
            ArrayList arrayList = new ArrayList(list);
            Collections.shuffle(arrayList, random);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            io.grpc.d dVar = (io.grpc.d) it.next();
            Long l = (Long) dVar.b.a.get(io.grpc.d.g);
            if (l == null) {
                l = 1L;
            }
            arrayList2.add(new i(dVar, Math.pow(random.nextDouble(), 1.0d / l.longValue())));
        }
        Collections.sort(arrayList2, Collections.reverseOrder());
        return yr4.c(arrayList2, new c86(0));
    }

    @Override // io.grpc.h
    public final h88 a(io.grpc.h.i iVar) {
        Boolean bool;
        if (this.m == cx1.SHUTDOWN) {
            return h88.k.h("Already shut down");
        }
        io.grpc.a aVar = iVar.b;
        List<io.grpc.d> list = iVar.a;
        Boolean bool2 = (Boolean) aVar.a.get(io.grpc.h.e);
        this.o = bool2 == null || !bool2.booleanValue();
        if (list.isEmpty()) {
            h88 h88VarH = h88.m.h("NameResolver returned no usable address. addrs=" + list + ", attrs=" + aVar);
            b(h88VarH);
            return h88VarH;
        }
        Iterator<io.grpc.d> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                h88 h88VarH2 = h88.m.h("NameResolver returned address list with null endpoint. addrs=" + list + ", attrs=" + aVar);
                b(h88VarH2);
                return h88VarH2;
            }
        }
        this.k = true;
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (io.grpc.d dVar : list) {
            ArrayList arrayList2 = new ArrayList();
            for (SocketAddress socketAddress : dVar.a) {
                if (hashSet.add(socketAddress)) {
                    arrayList2.add(socketAddress);
                }
            }
            if (!arrayList2.isEmpty()) {
                arrayList.add(new io.grpc.d(arrayList2, dVar.b));
            }
        }
        Object obj = iVar.c;
        AbstractList abstractListG = arrayList;
        if ((obj instanceof f) && (bool = ((f) obj).a) != null && bool.booleanValue()) {
            abstractListG = arrayList;
            abstractListG = arrayList;
            abstractListG = g(arrayList, new Random());
        }
        abstractListG = arrayList;
        abstractListG = arrayList;
        abstractListG = arrayList;
        j<io.grpc.d> jVarO = j.o(abstractListG);
        cx1 cx1Var = this.m;
        cx1 cx1Var2 = cx1.READY;
        e eVar = this.i;
        if (cx1Var == cx1Var2 || (cx1Var == cx1.CONNECTING && (!this.f || eVar.d()))) {
            SocketAddress socketAddressA = eVar.a();
            eVar.f(jVarO);
            if (eVar.e(socketAddressA)) {
                io.grpc.h.j jVar = ((h) this.h.get(socketAddressA)).a;
                if (!eVar.d()) {
                    ah.f("Index is past the end of the address group list");
                    return null;
                }
                e.a aVar2 = eVar.a.get(eVar.b);
                jVar.i(Collections.singletonList(new io.grpc.d(aVar2.a, aVar2.b)));
                h(jVarO);
                return h88.e;
            }
        } else {
            eVar.f(jVarO);
        }
        if (h(jVarO)) {
            cx1 cx1Var3 = cx1.CONNECTING;
            this.m = cx1Var3;
            i(cx1Var3, new io.grpc.h.d(io.grpc.h.g.e));
        }
        cx1 cx1Var4 = this.m;
        if (cx1Var4 == cx1Var2) {
            cx1 cx1Var5 = cx1.IDLE;
            this.m = cx1Var5;
            i(cx1Var5, new g(this));
        } else if (cx1Var4 == cx1.CONNECTING || cx1Var4 == cx1.TRANSIENT_FAILURE) {
            ch8.c cVar = this.l;
            if (cVar != null) {
                cVar.a();
                this.l = null;
            }
            c();
        }
        return h88.e;
    }

    @Override // io.grpc.h
    public final void b(h88 h88Var) {
        if (this.m == cx1.SHUTDOWN) {
            return;
        }
        HashMap map = this.h;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((h) it.next()).a.g();
        }
        map.clear();
        j.b bVar = j.c;
        this.i.f(w.f);
        cx1 cx1Var = cx1.TRANSIENT_FAILURE;
        this.m = cx1Var;
        i(cx1Var, new io.grpc.h.d(io.grpc.h.g.a(h88Var)));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0097  */
    @Override // io.grpc.h
    public final void c() {
        e eVar = this.i;
        if (eVar.d() && this.m != cx1.SHUTDOWN && this.r == null) {
            SocketAddress socketAddressA = eVar.a();
            HashMap map = this.h;
            h hVar = (h) map.get(socketAddressA);
            boolean z = this.s;
            if (hVar == null) {
                if (!eVar.d()) {
                    ah.f("Index is off the end of the address group list");
                    return;
                }
                io.grpc.a aVar = eVar.a.get(eVar.b).a;
                d dVar = new d();
                io.grpc.h.b.a aVar2 = new io.grpc.h.b.a();
                aVar2.b = io.grpc.a.b;
                aVar2.c = io.grpc.h.b.a.d;
                aVar2.b(yr4.a(new io.grpc.d(aVar, socketAddressA)));
                aVar2.a(io.grpc.h.b, dVar);
                aVar2.a(io.grpc.h.c, Boolean.valueOf(z));
                io.grpc.h.j jVarA = this.g.a(new io.grpc.h.b(aVar2.a, aVar2.b, aVar2.c));
                if (jVarA == null) {
                    t.warning("Was not able to create subchannel for " + socketAddressA);
                    ah.f("Can't create subchannel");
                    return;
                }
                final h hVar2 = new h(jVarA, cx1.IDLE);
                dVar.a = hVar2;
                map.put(socketAddressA, hVar2);
                io.grpc.a aVarC = jVarA.c();
                if (this.o) {
                    hVar2.d = dx1.a(cx1.READY);
                } else {
                    if (aVarC.a.get(io.grpc.h.d) == null) {
                        hVar2.d = dx1.a(cx1.READY);
                    }
                }
                jVarA.h(new io.grpc.h.l() { // from class: b86
                    @Override // io.grpc.h.l
                    public final void a(dx1 dx1Var) {
                        d86 d86Var = this.a;
                        h.e eVar2 = d86Var.g;
                        d86.e eVar3 = d86Var.i;
                        cx1 cx1Var = dx1Var.a;
                        HashMap map2 = d86Var.h;
                        d86.h hVar3 = hVar2;
                        h.j jVar = hVar3.a;
                        if (hVar3 == map2.get(jVar.a().a.get(0)) && cx1Var != cx1.SHUTDOWN) {
                            cx1 cx1Var2 = cx1.IDLE;
                            if (cx1Var == cx1Var2 && hVar3.b == cx1.READY) {
                                eVar2.e();
                            }
                            hVar3.a(cx1Var);
                            cx1 cx1Var3 = d86Var.m;
                            cx1 cx1Var4 = cx1.TRANSIENT_FAILURE;
                            if (cx1Var3 == cx1Var4 || d86Var.n == cx1Var4) {
                                if (cx1Var == cx1.CONNECTING) {
                                    return;
                                }
                                if (cx1Var == cx1Var2) {
                                    d86Var.c();
                                    return;
                                }
                            }
                            int i2 = d86.a.a[cx1Var.ordinal()];
                            if (i2 == 1) {
                                eVar3.b = 0;
                                d86Var.m = cx1Var2;
                                d86Var.i(cx1Var2, d86Var.new g(d86Var));
                                return;
                            }
                            if (i2 == 2) {
                                cx1 cx1Var5 = cx1.CONNECTING;
                                d86Var.m = cx1Var5;
                                if ((!d86Var.f && !eVar3.d()) || (eVar3.d() && !map2.containsKey(eVar3.a()))) {
                                    eVar3.e(jVar.a().a.get(0));
                                }
                                d86Var.i(cx1Var5, new h.d(h.g.e));
                                return;
                            }
                            if (i2 == 3) {
                                ch8.c cVar = d86Var.r;
                                if (cVar != null) {
                                    cVar.a();
                                    d86Var.r = null;
                                }
                                d86Var.q = null;
                                ch8.c cVar2 = d86Var.l;
                                if (cVar2 != null) {
                                    cVar2.a();
                                    d86Var.l = null;
                                }
                                for (d86.h hVar4 : map2.values()) {
                                    if (!hVar4.a.equals(jVar)) {
                                        hVar4.a.g();
                                    }
                                }
                                map2.clear();
                                cx1 cx1Var6 = cx1.READY;
                                hVar3.a(cx1Var6);
                                map2.put(jVar.a().a.get(0), hVar3);
                                eVar3.e(jVar.a().a.get(0));
                                d86Var.m = cx1Var6;
                                d86Var.j(hVar3);
                                return;
                            }
                            if (i2 != 4) {
                                r01.e(cx1Var, "Unsupported state:");
                                return;
                            }
                            if (eVar3.d() && map2.get(eVar3.a()) == hVar3) {
                                if (eVar3.b()) {
                                    ch8.c cVar3 = d86Var.l;
                                    if (cVar3 != null) {
                                        cVar3.a();
                                        d86Var.l = null;
                                    }
                                    d86Var.c();
                                } else if (map2.size() >= eVar3.a.size()) {
                                    d86Var.e();
                                } else {
                                    eVar3.b = 0;
                                    d86Var.c();
                                }
                            }
                            if (map2.size() < eVar3.a.size()) {
                                return;
                            }
                            Iterator it = map2.values().iterator();
                            while (it.hasNext()) {
                                if (!((d86.h) it.next()).c) {
                                    return;
                                }
                            }
                            cx1 cx1Var7 = cx1.TRANSIENT_FAILURE;
                            d86Var.m = cx1Var7;
                            d86Var.i(cx1Var7, new h.d(h.g.a(dx1Var.b)));
                            int i3 = d86Var.j + 1;
                            d86Var.j = i3;
                            if (i3 >= eVar3.a.size() || d86Var.k) {
                                d86Var.k = false;
                                d86Var.j = 0;
                                eVar2.e();
                            }
                        }
                    }
                });
                hVar = hVar2;
            }
            io.grpc.h.j jVar = hVar.a;
            int i2 = a.a[hVar.b.ordinal()];
            if (i2 == 1) {
                jVar.f();
                hVar.a(cx1.CONNECTING);
                f();
            } else {
                if (i2 == 2) {
                    f();
                    return;
                }
                if (i2 != 4) {
                    return;
                }
                if (!z) {
                    eVar.b();
                    c();
                } else if (!eVar.d()) {
                    e();
                } else {
                    jVar.f();
                    hVar.a(cx1.CONNECTING);
                }
            }
        }
    }

    @Override // io.grpc.h
    public final void d() {
        Level level = Level.FINE;
        HashMap map = this.h;
        t.log(level, "Shutting down, currently have {} subchannels created", Integer.valueOf(map.size()));
        cx1 cx1Var = cx1.SHUTDOWN;
        this.m = cx1Var;
        this.n = cx1Var;
        ch8.c cVar = this.l;
        if (cVar != null) {
            cVar.a();
            this.l = null;
        }
        ch8.c cVar2 = this.r;
        if (cVar2 != null) {
            cVar2.a();
            this.r = null;
        }
        this.q = null;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((h) it.next()).a.g();
        }
        map.clear();
    }

    public final void e() {
        if (this.s && this.r == null) {
            w33 w33VarA = this.q;
            if (w33VarA == null) {
                w33VarA = this.p.a();
                this.q = w33VarA;
            }
            long jA = w33VarA.a();
            io.grpc.h.e eVar = this.g;
            this.r = eVar.d().c(new b(), jA, TimeUnit.NANOSECONDS, eVar.c());
        }
    }

    public final void f() {
        if (this.f) {
            ch8.c cVar = this.l;
            if (cVar != null) {
                ch8.b bVar = cVar.a;
                if (!bVar.d && !bVar.c) {
                    return;
                }
            }
            io.grpc.h.e eVar = this.g;
            this.l = eVar.d().c(new c(), 250L, TimeUnit.MILLISECONDS, eVar.c());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean h(j<io.grpc.d> jVar) {
        HashMap map = this.h;
        HashSet<SocketAddress> hashSet = new HashSet(map.keySet());
        HashSet hashSet2 = new HashSet();
        j.b bVarListIterator = jVar.listIterator(0);
        while (bVarListIterator.hasNext()) {
            hashSet2.addAll(((io.grpc.d) bVarListIterator.next()).a);
        }
        for (SocketAddress socketAddress : hashSet) {
            if (!hashSet2.contains(socketAddress)) {
                ((h) map.remove(socketAddress)).a.g();
            }
        }
        return hashSet.isEmpty();
    }

    public final void i(cx1 cx1Var, io.grpc.h.k kVar) {
        if (cx1Var == this.n && (cx1Var == cx1.IDLE || cx1Var == cx1.CONNECTING)) {
            return;
        }
        this.n = cx1Var;
        this.g.f(cx1Var, kVar);
    }

    public final void j(h hVar) {
        dx1 dx1Var;
        cx1 cx1Var;
        cx1 cx1Var2 = hVar.b;
        cx1 cx1Var3 = cx1.READY;
        if (cx1Var2 != cx1Var3) {
            return;
        }
        if (this.o || (cx1Var = (dx1Var = hVar.d).a) == cx1Var3) {
            i(cx1Var3, new io.grpc.h.d(new io.grpc.h.g(hVar.a, h88.e, false)));
            return;
        }
        cx1 cx1Var4 = cx1.TRANSIENT_FAILURE;
        if (cx1Var == cx1Var4) {
            i(cx1Var4, new io.grpc.h.d(io.grpc.h.g.a(dx1Var.b)));
        } else if (this.n != cx1Var4) {
            i(cx1Var, new io.grpc.h.d(io.grpc.h.g.e));
        }
    }
}
