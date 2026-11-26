package defpackage;

import io.grpc.b;
import io.grpc.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class gz4<ReqT> extends k67<ReqT> {
    public final /* synthetic */ ra5 G;
    public final /* synthetic */ b H;
    public final /* synthetic */ ky1 I;
    public final /* synthetic */ ez4.e J;

    /* JADX WARN: Illegal instructions before constructor call */
    public gz4(ez4.e eVar, ra5 ra5Var, la5 la5Var, b bVar, q67 q67Var, sv3 sv3Var, ky1 ky1Var) {
        this.J = eVar;
        this.G = ra5Var;
        this.H = bVar;
        this.I = ky1Var;
        ez4 ez4Var = ez4.this;
        k67.p pVar = ez4Var.T;
        long j = ez4Var.U;
        long j2 = ez4Var.V;
        Executor executor = bVar.b;
        super(ra5Var, la5Var, pVar, j, j2, executor == null ? ez4Var.i : executor, ez4Var.g.b.A(), q67Var, sv3Var, eVar.a);
    }

    @Override // defpackage.k67
    public final cm1 s(la5 la5Var, k67.k kVar, int i, boolean z, boolean z2) {
        b bVar = this.H;
        bVar.getClass();
        List<c.a> list = bVar.d;
        ArrayList arrayList = new ArrayList(list.size() + 1);
        arrayList.addAll(list);
        arrayList.add(kVar);
        b.a aVarC = b.c(bVar);
        aVarC.d = Collections.unmodifiableList(arrayList);
        b bVar2 = new b(aVarC);
        c[] cVarArrC = vs3.c(bVar2, la5Var, i, z, z2);
        ky1 ky1Var = this.I;
        ky1 ky1VarA = ky1Var.a();
        try {
            return ez4.this.D.b(this.G, la5Var, bVar2, cVarArrC);
        } finally {
            ky1Var.c(ky1VarA);
        }
    }

    @Override // defpackage.k67
    public final void t() {
        h88 h88Var;
        ez4.q qVar = ez4.this.E;
        synchronized (qVar.a) {
            try {
                qVar.b.remove(this);
                if (qVar.b.isEmpty()) {
                    h88Var = qVar.c;
                    qVar.b = new HashSet();
                } else {
                    h88Var = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (h88Var != null) {
            ez4.this.D.e(h88Var);
        }
    }

    @Override // defpackage.k67
    public final h88 u() {
        ez4.q qVar = ez4.this.E;
        synchronized (qVar.a) {
            try {
                h88 h88Var = qVar.c;
                if (h88Var != null) {
                    return h88Var;
                }
                qVar.b.add(this);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
