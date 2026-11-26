package defpackage;

import io.grpc.d;
import io.grpc.h;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class rj3 extends h.j {
    @Override // io.grpc.h.j
    public final List<d> b() {
        return j().b();
    }

    @Override // io.grpc.h.j
    public final n91 d() {
        return j().d();
    }

    @Override // io.grpc.h.j
    public final Object e() {
        return j().e();
    }

    @Override // io.grpc.h.j
    public final void f() {
        j().f();
    }

    @Override // io.grpc.h.j
    public void g() {
        j().g();
    }

    @Override // io.grpc.h.j
    public void i(List<d> list) {
        j().i(list);
    }

    public abstract h.j j();

    public String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(j(), "delegate");
        return aVarB.toString();
    }
}
