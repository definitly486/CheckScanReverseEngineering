package defpackage;

import io.grpc.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class el2 implements nz4 {
    public final Executor c;
    public final ch8 d;
    public a e;
    public b f;
    public c g;
    public ez4.g h;
    public final m94 a = m94.a(el2.class, null);
    public final Object b = new Object();
    public Collection<e> i = new LinkedHashSet();
    public volatile f j = new f(null, null);

    public class a implements Runnable {
        public final /* synthetic */ ez4.g b;

        public a(ez4.g gVar) {
            this.b = gVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.b.a(true);
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ ez4.g b;

        public b(ez4.g gVar) {
            this.b = gVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.b.a(false);
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ ez4.g b;

        public c(ez4.g gVar) {
            this.b = gVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ez4 ez4Var = ez4.this;
            o8.s(ez4Var.F.get(), "Channel must have been shut down");
            ez4Var.G = true;
            ez4Var.l(false);
            ez4Var.i();
        }
    }

    public class d implements Runnable {
        public final /* synthetic */ h88 b;

        public d(h88 h88Var) {
            this.b = h88Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            o8.s(ez4.this.F.get(), "Channel must have been shut down");
        }
    }

    public class e extends gl2 {
        public final l86 l;
        public final ky1 m;
        public final io.grpc.c[] n;
        public volatile h88 o;

        public e(l86 l86Var, io.grpc.c[] cVarArr) {
            super("connecting_and_lb");
            this.m = ky1.b();
            this.l = l86Var;
            this.n = cVarArr;
        }

        @Override // defpackage.gl2, defpackage.cm1
        public final void j(h88 h88Var) {
            super.j(h88Var);
            synchronized (el2.this.b) {
                try {
                    el2 el2Var = el2.this;
                    if (el2Var.g != null) {
                        boolean zRemove = el2Var.i.remove(this);
                        if (!el2.this.f() && zRemove) {
                            el2 el2Var2 = el2.this;
                            el2Var2.d.b(el2Var2.f);
                            if (el2.this.j.b != null) {
                                el2 el2Var3 = el2.this;
                                el2Var3.d.b(el2Var3.g);
                                el2.this.g = null;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            el2.this.d.a();
        }

        @Override // defpackage.gl2, defpackage.cm1
        public final void l(y54 y54Var) {
            if (this.l.a.b()) {
                y54Var.a.add("wait_for_ready");
                h88 h88Var = this.o;
                if (h88Var != null && !h88Var.f()) {
                    y54Var.a(h88Var, "Last Pick Failure");
                }
            }
            super.l(y54Var);
        }

        @Override // defpackage.gl2
        public final void p(h88 h88Var) {
            for (io.grpc.c cVar : this.n) {
                cVar.N(h88Var);
            }
        }
    }

    public static final class f {
        public final h.k a;
        public final h88 b;

        public f(h.k kVar, h88 h88Var) {
            this.a = kVar;
            this.b = h88Var;
        }
    }

    public el2(Executor executor, ch8 ch8Var) {
        this.c = executor;
        this.d = ch8Var;
    }

    public final e a(l86 l86Var, io.grpc.c[] cVarArr, h.g gVar) {
        int size;
        e eVar = new e(l86Var, cVarArr);
        if (l86Var.a.b() && gVar != null && (gVar.a != null || !gVar.c.f())) {
            eVar.o = gVar.c;
        }
        this.i.add(eVar);
        synchronized (this.b) {
            size = this.i.size();
        }
        if (size == 1) {
            this.d.b(this.e);
        }
        for (io.grpc.c cVar : cVarArr) {
            cVar.U();
        }
        return eVar;
    }

    @Override // defpackage.em1
    public final cm1 b(ra5<?, ?> ra5Var, la5 la5Var, io.grpc.b bVar, io.grpc.c[] cVarArr) {
        cm1 i53Var;
        h.g gVarA;
        f fVar;
        try {
            l86 l86Var = new l86(ra5Var, la5Var, bVar, new a86());
            f fVar2 = this.j;
            while (true) {
                h88 h88Var = fVar2.b;
                if (h88Var == null) {
                    h.k kVar = fVar2.a;
                    if (kVar != null) {
                        gVarA = kVar.a(l86Var);
                        io.grpc.b bVar2 = l86Var.a;
                        bVar2.getClass();
                        gVarA.getClass();
                        em1 em1VarE = vs3.e(gVarA, bVar2.b());
                        if (em1VarE != null) {
                            i53Var = em1VarE.b(l86Var.c, l86Var.b, bVar2, cVarArr);
                            break;
                        }
                    } else {
                        gVarA = null;
                    }
                    synchronized (this.b) {
                        try {
                            fVar = this.j;
                            if (fVar2 == fVar) {
                                i53Var = a(l86Var, cVarArr, gVarA);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    break;
                }
                i53Var = new i53(h88Var, dm1.a.PROCESSED, cVarArr);
                break;
                fVar2 = fVar;
            }
            this.d.a();
            return i53Var;
        } catch (Throwable th2) {
            this.d.a();
            throw th2;
        }
    }

    @Override // defpackage.l94
    public final m94 c() {
        return this.a;
    }

    @Override // defpackage.nz4
    public final Runnable d(nz4.a aVar) {
        ez4.g gVar = (ez4.g) aVar;
        this.h = gVar;
        this.e = new a(gVar);
        this.f = new b(gVar);
        this.g = new c(gVar);
        return null;
    }

    @Override // defpackage.nz4
    public final void e(h88 h88Var) {
        c cVar;
        synchronized (this.b) {
            try {
                if (this.j.b != null) {
                    return;
                }
                this.j = new f(this.j.a, h88Var);
                this.d.b(new d(h88Var));
                if (!f() && (cVar = this.g) != null) {
                    this.d.b(cVar);
                    this.g = null;
                }
                this.d.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean f() {
        boolean z;
        synchronized (this.b) {
            z = !this.i.isEmpty();
        }
        return z;
    }

    public final void g(h.k kVar) {
        c cVar;
        synchronized (this.b) {
            this.j = new f(kVar, this.j.b);
            if (kVar != null && f()) {
                ArrayList arrayList = new ArrayList(this.i);
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (true) {
                    hl2 hl2Var = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    e eVar = (e) it.next();
                    h.g gVarA = kVar.a(eVar.l);
                    io.grpc.b bVar = eVar.l.a;
                    if (bVar.b() && (gVarA.a != null || !gVarA.c.f())) {
                        eVar.o = gVarA.c;
                    }
                    em1 em1VarE = vs3.e(gVarA, bVar.b());
                    if (em1VarE != null) {
                        Executor executor = this.c;
                        Executor executor2 = bVar.b;
                        if (executor2 != null) {
                            executor = executor2;
                        }
                        ky1 ky1Var = eVar.m;
                        ky1 ky1VarA = ky1Var.a();
                        try {
                            l86 l86Var = eVar.l;
                            cm1 cm1VarB = em1VarE.b(l86Var.c, l86Var.b, l86Var.a, eVar.n);
                            ky1Var.c(ky1VarA);
                            synchronized (eVar) {
                                try {
                                    if (eVar.e == null) {
                                        o8.l(cm1VarB, "stream");
                                        cm1 cm1Var = eVar.e;
                                        o8.q("realStream already set to %s", cm1Var == null, cm1Var);
                                        eVar.e = cm1VarB;
                                        eVar.j = System.nanoTime();
                                        dm1 dm1Var = eVar.d;
                                        if (dm1Var == null) {
                                            eVar.g = null;
                                            eVar.c = true;
                                        }
                                        if (dm1Var != null) {
                                            eVar.o(dm1Var);
                                            hl2Var = new hl2(eVar);
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            if (hl2Var != null) {
                                executor.execute(hl2Var);
                            }
                            arrayList2.add(eVar);
                        } catch (Throwable th2) {
                            ky1Var.c(ky1VarA);
                            throw th2;
                        }
                    }
                }
                synchronized (this.b) {
                    try {
                        if (f()) {
                            Iterator it2 = arrayList2.iterator();
                            while (it2.hasNext()) {
                                this.i.remove((e) it2.next());
                            }
                            if (this.i.isEmpty()) {
                                this.i = new LinkedHashSet();
                            }
                            if (!f()) {
                                this.d.b(this.f);
                                if (this.j.b != null && (cVar = this.g) != null) {
                                    this.d.b(cVar);
                                    this.g = null;
                                }
                            }
                            this.d.a();
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        }
    }
}
