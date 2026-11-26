package defpackage;

import io.grpc.b;
import io.grpc.c;

/* JADX INFO: loaded from: classes5.dex */
public final class j53 implements em1 {
    public final h88 a;
    public final dm1.a b;

    public j53(h88 h88Var, dm1.a aVar) {
        o8.f(!h88Var.f(), "error must not be OK");
        this.a = h88Var;
        this.b = aVar;
    }

    @Override // defpackage.em1
    public final cm1 b(ra5<?, ?> ra5Var, la5 la5Var, b bVar, c[] cVarArr) {
        return new i53(this.a, this.b, cVarArr);
    }

    @Override // defpackage.l94
    public final m94 c() {
        throw new UnsupportedOperationException("Not a real transport");
    }
}
