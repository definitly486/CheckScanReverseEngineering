package defpackage;

import io.grpc.h;
import io.grpc.i;
import io.grpc.j;
import io.grpc.l;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class gy extends i {
    public final j b;
    public final i c;

    public final class a extends h {
        public final h.e f;
        public h g;
        public i h;

        public a(h.e eVar) {
            this.f = eVar;
            i iVar = gy.this.c;
            this.h = iVar;
            this.g = iVar.a(eVar);
        }

        @Override // io.grpc.h
        public final h88 a(h.i iVar) {
            sq7.b bVar = (sq7.b) iVar.c;
            if (bVar == null) {
                bVar = new sq7.b(gy.this.c, null);
            }
            Object obj = bVar.b;
            i iVar2 = bVar.a;
            i iVar3 = this.h;
            h.e eVar = this.f;
            if (iVar3 == null || !iVar2.b().equals(this.h.b())) {
                eVar.f(cx1.CONNECTING, new h.d(h.g.e));
                this.g.d();
                this.h = iVar2;
                h hVar = this.g;
                this.g = iVar2.a(eVar);
                eVar.b().b(n91.a.INFO, "Load balancer changed from {0} to {1}", hVar.getClass().getSimpleName(), this.g.getClass().getSimpleName());
            }
            if (obj != null) {
                eVar.b().b(n91.a.DEBUG, "Load-balancing config: {0}", obj);
            }
            h hVar2 = this.g;
            io.grpc.a aVar = io.grpc.a.b;
            return hVar2.a(new h.i(iVar.a, iVar.b, obj));
        }

        @Override // io.grpc.h
        public final void b(h88 h88Var) {
            this.g.b(h88Var);
        }

        @Override // io.grpc.h
        public final void c() {
            this.g.c();
        }

        @Override // io.grpc.h
        public final void d() {
            this.g.d();
            this.g = null;
        }
    }

    public gy(String str) {
        j jVarA = j.a();
        o8.l(jVarA, "registry");
        this.b = jVarA;
        o8.l(str, "defaultPolicy");
        i iVarB = jVarA.b(str);
        if (iVarB == null) {
            h88 h88VarH = h88.l.h("Could not find policy '" + str + "'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files.");
            iVarB = new ic3(cx1.TRANSIENT_FAILURE, new h.d(h.g.a(h88VarH)), h88VarH);
        }
        this.c = iVarB;
    }

    @Override // io.grpc.h.c
    public final h a(h.e eVar) {
        return new a(eVar);
    }

    @Override // io.grpc.i
    public final String b() {
        return "auto_configured_internal";
    }

    @Override // io.grpc.i
    public final l.b c(Map<String, ?> map) {
        List<sq7.a> listD;
        if (map != null) {
            try {
                listD = sq7.d(sq7.b(map));
            } catch (RuntimeException e) {
                return new l.b(h88.g.h("can't parse load balancer configuration").g(e));
            }
        } else {
            listD = null;
        }
        if (listD == null || listD.isEmpty()) {
            return null;
        }
        return sq7.c(listD, this.b);
    }
}
