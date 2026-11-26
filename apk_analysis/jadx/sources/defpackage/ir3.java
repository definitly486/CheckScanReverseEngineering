package defpackage;

import io.grpc.h;
import io.grpc.i;
import io.grpc.j;
import io.grpc.l;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class ir3 extends jj3 {
    public final a f;
    public final h.e g;
    public h.c h;
    public h i;
    public h.c j;
    public h k;
    public cx1 l;
    public h.k m;
    public boolean n;

    public class a extends h {
        public a() {
        }

        @Override // io.grpc.h
        public final h88 a(h.i iVar) {
            throw new AssertionError("real LB is called instead");
        }

        @Override // io.grpc.h
        public final void b(h88 h88Var) {
            ir3.this.g.f(cx1.TRANSIENT_FAILURE, new h.d(h.g.a(h88Var)));
        }

        @Override // io.grpc.h
        public final void d() {
        }
    }

    public static final class b {
        public final h.c a;
        public final Object b;

        public b(i iVar, Object obj) {
            o8.l(iVar, "childFactory");
            this.a = iVar;
            this.b = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.a.equals(bVar.a) && Objects.equals(this.b, bVar.b);
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.b);
        }

        public final String toString() {
            od5.a aVar = new od5.a("GracefulSwitchLoadBalancer.Config");
            aVar.d(this.a, "childFactory");
            aVar.d(this.b, "childConfig");
            return aVar.toString();
        }
    }

    public ir3(h.e eVar) {
        a aVar = new a();
        this.f = aVar;
        this.i = aVar;
        this.k = aVar;
        o8.l(eVar, "helper");
        this.g = eVar;
    }

    public static l.b e(List<Map<String, ?>> list) {
        j jVarA = j.a();
        List<sq7.a> listD = sq7.d(list);
        if (listD == null || listD.isEmpty()) {
            return new l.b(h88.m.h("No child LB config specified"));
        }
        l.b bVarC = sq7.c(listD, jVarA);
        h88 h88Var = bVarC.a;
        if (h88Var != null) {
            return new l.b(h88.m.g(h88Var.c).h(h88Var.b).b("Failed to select child config"));
        }
        sq7.b bVar = (sq7.b) bVarC.b;
        return new l.b(new b(bVar.a, bVar.b));
    }

    @Override // io.grpc.h
    public final h88 a(h.i iVar) {
        b bVar = (b) iVar.c;
        h.c cVar = bVar.a;
        boolean zEquals = cVar.equals(this.j);
        a aVar = this.f;
        if (!zEquals) {
            this.k.d();
            this.k = aVar;
            this.j = null;
            this.l = cx1.CONNECTING;
            this.m = new h.d(h.g.e);
            if (!cVar.equals(this.h)) {
                jr3 jr3Var = new jr3(this);
                h hVarA = cVar.a(jr3Var);
                jr3Var.a = hVarA;
                this.k = hVarA;
                this.j = cVar;
                if (!this.n) {
                    f();
                }
            }
        }
        h hVar = this.k;
        if (hVar == aVar) {
            hVar = this.i;
        }
        h.i.a aVarA = iVar.a();
        aVarA.c = bVar.b;
        return hVar.a(aVarA.a());
    }

    @Override // io.grpc.h
    public final void d() {
        this.k.d();
        this.i.d();
    }

    public final void f() {
        this.g.f(this.l, this.m);
        this.i.d();
        this.i = this.k;
        this.h = this.j;
        this.k = this.f;
        this.j = null;
    }
}
