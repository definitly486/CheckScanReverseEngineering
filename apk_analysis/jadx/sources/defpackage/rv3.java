package defpackage;

import io.grpc.h;
import java.util.IdentityHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class rv3 extends kj3 {
    public final h.e a;

    public static final class a extends h.k {
        public final h.k a;

        public a(h.k kVar) {
            this.a = kVar;
        }

        @Override // io.grpc.h.k
        public final h.g a(l86 l86Var) {
            h.g gVarA = this.a.a(l86Var);
            h.j jVar = gVarA.a;
            if (!(jVar instanceof b)) {
                return gVarA;
            }
            h.j jVar2 = ((b) jVar).a;
            o8.l(jVar2, "subchannel");
            return new h.g(jVar2, gVarA.b, gVarA.c, gVarA.d);
        }
    }

    public static final class b extends rj3 {
        public final h.j a;
        public final h.l b;

        public class a implements h.l {
            public final /* synthetic */ h.l a;

            public a(h.l lVar) {
                this.a = lVar;
            }

            @Override // io.grpc.h.l
            public final void a(dx1 dx1Var) {
                this.a.a(dx1Var);
                b.this.b.a(dx1Var);
            }
        }

        public b(h.j jVar, h.l lVar) {
            o8.l(jVar, "delegate");
            this.a = jVar;
            o8.l(lVar, "healthListener");
            this.b = lVar;
        }

        @Override // io.grpc.h.j
        public final io.grpc.a c() {
            io.grpc.a aVarC = this.a.c();
            aVarC.getClass();
            io.grpc.a.b<Boolean> bVar = h.d;
            Boolean bool = Boolean.TRUE;
            IdentityHashMap<io.grpc.a.b<?>, Object> identityHashMap = aVarC.a;
            IdentityHashMap identityHashMap2 = new IdentityHashMap(identityHashMap.size() + 1);
            identityHashMap2.putAll(identityHashMap);
            identityHashMap2.put(bVar, bool);
            return new io.grpc.a(identityHashMap2);
        }

        @Override // io.grpc.h.j
        public final void h(h.l lVar) {
            this.a.h(new a(lVar));
        }

        @Override // defpackage.rj3
        public final h.j j() {
            return this.a;
        }
    }

    public rv3(h.e eVar) {
        o8.l(eVar, "helper");
        this.a = eVar;
    }

    @Override // defpackage.kj3, io.grpc.h.e
    public final h.j a(h.b bVar) {
        h.l lVar = (h.l) bVar.a(h.b);
        h.j jVarA = super.a(bVar);
        if (lVar != null) {
            io.grpc.a aVarC = jVarA.c();
            if (aVarC.a.get(h.d) == null) {
                return new b(jVarA, lVar);
            }
        }
        return jVarA;
    }

    @Override // io.grpc.h.e
    public final void f(cx1 cx1Var, h.k kVar) {
        this.a.f(cx1Var, new a(kVar));
    }

    @Override // defpackage.kj3
    public final h.e g() {
        return this.a;
    }
}
