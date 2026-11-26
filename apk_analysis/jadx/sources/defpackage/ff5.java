package defpackage;

import androidx.media3.muxer.MuxerUtil;
import com.google.common.collect.q;
import io.grpc.d;
import io.grpc.h;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ff5 extends h {
    public static final Logger k = Logger.getLogger(ff5.class.getName());
    public static final int l = new Random().nextInt();
    public final h.e g;
    public boolean h;
    public cx1 j;
    public ArrayList f = new ArrayList(0);
    public final f86 i = new f86();

    public class a {
        public final Object a;
        public final h b;
        public h.k d = new h.d(h.g.e);
        public cx1 c = cx1.CONNECTING;

        /* JADX INFO: renamed from: ff5$a$a, reason: collision with other inner class name */
        public class C0186a extends kj3 {
            public C0186a() {
            }

            @Override // io.grpc.h.e
            public void f(cx1 cx1Var, h.k kVar) {
                a aVar = a.this;
                if (aVar.c == cx1.SHUTDOWN) {
                    return;
                }
                aVar.c = cx1Var;
                aVar.d = kVar;
                ff5 ff5Var = ff5.this;
                if (ff5Var.h) {
                    return;
                }
                ff5Var.h();
            }

            @Override // defpackage.kj3
            public final h.e g() {
                return ff5.this.g;
            }
        }

        public a(Object obj, f86 f86Var) {
            this.a = obj;
            this.b = f86Var.a(a());
        }

        public C0186a a() {
            return new C0186a();
        }

        public final String toString() {
            return "Address = " + this.a + ", state = " + this.c + ", picker type: " + this.d.getClass() + ", lb: " + this.b;
        }
    }

    public static class b {
        public final Collection<SocketAddress> a;
        public final int b;

        public b(d dVar) {
            o8.l(dVar, "eag");
            List<SocketAddress> list = dVar.a;
            if (list.size() < 10) {
                this.a = list;
            } else {
                this.a = new HashSet(list);
            }
            Iterator<SocketAddress> it = list.iterator();
            int iHashCode = 0;
            while (it.hasNext()) {
                iHashCode += it.next().hashCode();
            }
            this.b = iHashCode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            Collection<SocketAddress> collection = bVar.a;
            if (bVar.b == this.b) {
                int size = collection.size();
                Collection<SocketAddress> collection2 = this.a;
                if (size == collection2.size()) {
                    return collection.containsAll(collection2);
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.b;
        }

        public final String toString() {
            return this.a.toString();
        }
    }

    public ff5(h.e eVar) {
        o8.l(eVar, "helper");
        this.g = eVar;
        k.log(Level.FINE, "Created");
    }

    public static LinkedHashMap e(h.i iVar) {
        List<d> list = iVar.a;
        LinkedHashMap linkedHashMap = new LinkedHashMap(q.a(list.size()));
        for (d dVar : list) {
            h.i.a aVarA = iVar.a();
            aVarA.a = Collections.singletonList(dVar);
            io.grpc.a aVar = io.grpc.a.b;
            Boolean bool = Boolean.TRUE;
            IdentityHashMap identityHashMap = new IdentityHashMap(aVar.a.size() + 1);
            identityHashMap.putAll(aVar.a);
            identityHashMap.put(h.e, bool);
            aVarA.b = new io.grpc.a(identityHashMap);
            aVarA.c = null;
            linkedHashMap.put(new b(dVar), aVarA.a());
        }
        return linkedHashMap;
    }

    @Override // io.grpc.h
    public final h88 a(h.i iVar) {
        k.log(Level.FINE, "Received resolution result: {0}", iVar);
        try {
            this.h = true;
            LinkedHashMap linkedHashMapE = e(iVar);
            if (!linkedHashMapE.isEmpty()) {
                return g(linkedHashMapE);
            }
            h88 h88VarH = h88.m.h("NameResolver returned no usable address. " + iVar);
            b(h88VarH);
            return h88VarH;
        } finally {
            this.h = false;
        }
    }

    @Override // io.grpc.h
    public final void b(h88 h88Var) {
        if (this.j != cx1.READY) {
            this.g.f(cx1.TRANSIENT_FAILURE, new h.d(h.g.a(h88Var)));
        }
    }

    @Override // io.grpc.h
    public final void d() {
        Level level = Level.FINE;
        Logger logger = k;
        logger.log(level, "Shutdown");
        for (a aVar : this.f) {
            aVar.b.d();
            aVar.c = cx1.SHUTDOWN;
            logger.log(Level.FINE, "Child balancer {0} deleted", aVar.a);
        }
        this.f.clear();
    }

    public a f(Object obj) {
        return new a(obj, this.i);
    }

    public final h88 g(LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(q.a(this.f.size()));
        for (a aVar : this.f) {
            linkedHashMap2.put(aVar.a, aVar);
        }
        h88 h88Var = h88.e;
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            a aVarF = (a) linkedHashMap2.remove(entry.getKey());
            if (aVarF == null) {
                aVarF = f(entry.getKey());
            }
            arrayList.add(aVarF);
        }
        int size = arrayList.isEmpty() ? 0 : (int) ((((long) l) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) % (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) arrayList.size())));
        o8.f(size >= 0, "number to skip cannot be negative");
        sa4 sa4Var = new sa4(arrayList, size);
        o8.f(size >= 0, "limit is negative");
        Iterable[] iterableArr = {sa4Var, new ta4(arrayList, size)};
        for (int i = 0; i < 2; i++) {
            iterableArr[i].getClass();
        }
        yh3 yh3Var = new yh3(iterableArr.length, iterableArr);
        ya4.b bVar = new ya4.b();
        bVar.c = ya4.a.e;
        bVar.d = yh3Var;
        while (bVar.hasNext()) {
            a aVar2 = (a) bVar.next();
            h.i iVar = (h.i) linkedHashMap.get(aVar2.a);
            if (iVar != null) {
                h88 h88VarA = aVar2.b.a(iVar);
                if (!h88VarA.f()) {
                    h88Var = h88VarA;
                }
            }
        }
        this.f = arrayList;
        h();
        for (a aVar3 : linkedHashMap2.values()) {
            aVar3.b.d();
            aVar3.c = cx1.SHUTDOWN;
            k.log(Level.FINE, "Child balancer {0} deleted", aVar3.a);
        }
        return h88Var;
    }

    public abstract void h();
}
