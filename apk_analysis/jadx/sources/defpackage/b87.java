package defpackage;

import io.grpc.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class b87 extends ff5 {
    public final AtomicInteger m;
    public h.k n;

    public class a extends ff5.a {

        /* JADX INFO: renamed from: b87$a$a, reason: collision with other inner class name */
        public class C0119a extends ff5.a.C0186a {
            public C0119a() {
                super();
            }

            @Override // ff5.a.C0186a, io.grpc.h.e
            public final void f(cx1 cx1Var, h.k kVar) {
                super.f(cx1Var, kVar);
                a aVar = a.this;
                if (b87.this.h || cx1Var != cx1.IDLE) {
                    return;
                }
                aVar.b.c();
            }
        }

        public a(Object obj, f86 f86Var) {
            super(obj, f86Var);
        }

        @Override // ff5.a
        public final ff5.a.C0186a a() {
            return new C0119a();
        }
    }

    public static class b extends h.k {
        public final ArrayList a;
        public final AtomicInteger b;
        public final int c;

        public b(ArrayList arrayList, AtomicInteger atomicInteger) {
            o8.f(!arrayList.isEmpty(), "empty list");
            this.a = arrayList;
            this.b = atomicInteger;
            Iterator it = arrayList.iterator();
            int iHashCode = 0;
            while (it.hasNext()) {
                iHashCode += ((h.k) it.next()).hashCode();
            }
            this.c = iHashCode;
        }

        @Override // io.grpc.h.k
        public final h.g a(l86 l86Var) {
            int andIncrement = this.b.getAndIncrement() & Integer.MAX_VALUE;
            ArrayList arrayList = this.a;
            return ((h.k) arrayList.get(andIncrement % arrayList.size())).a(l86Var);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            ArrayList arrayList = bVar.a;
            if (bVar == this) {
                return true;
            }
            if (this.c != bVar.c || this.b != bVar.b) {
                return false;
            }
            ArrayList arrayList2 = this.a;
            return arrayList2.size() == arrayList.size() && new HashSet(arrayList2).containsAll(arrayList);
        }

        public final int hashCode() {
            return this.c;
        }

        public final String toString() {
            od5.a aVar = new od5.a(b.class.getSimpleName());
            aVar.d(this.a, "subchannelPickers");
            return aVar.toString();
        }
    }

    public b87(h.e eVar) {
        super(eVar);
        this.m = new AtomicInteger(new Random().nextInt());
        this.n = new h.d(h.g.e);
    }

    @Override // defpackage.ff5
    public final ff5.a f(Object obj) {
        return new a(obj, this.i);
    }

    @Override // defpackage.ff5
    public final void h() {
        ArrayList arrayList = new ArrayList();
        for (ff5.a aVar : this.f) {
            if (aVar.c == cx1.READY) {
                arrayList.add(aVar);
            }
        }
        if (!arrayList.isEmpty()) {
            j(cx1.READY, i(arrayList));
            return;
        }
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            cx1 cx1Var = ((ff5.a) it.next()).c;
            cx1 cx1Var2 = cx1.CONNECTING;
            if (cx1Var == cx1Var2 || cx1Var == cx1.IDLE) {
                j(cx1Var2, new h.d(h.g.e));
                return;
            }
        }
        j(cx1.TRANSIENT_FAILURE, i(this.f));
    }

    public final b i(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ff5.a) it.next()).d);
        }
        return new b(arrayList2, this.m);
    }

    public final void j(cx1 cx1Var, h.k kVar) {
        if (cx1Var == this.j && kVar.equals(this.n)) {
            return;
        }
        this.g.f(cx1Var, kVar);
        this.j = cx1Var;
        this.n = kVar;
    }
}
