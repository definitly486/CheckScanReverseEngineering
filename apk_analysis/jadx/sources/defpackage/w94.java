package defpackage;

import com.google.common.collect.j;
import io.grpc.d;

/* JADX INFO: loaded from: classes5.dex */
public final class w94 implements Runnable {
    public final /* synthetic */ p94.f b;

    public w94(p94.f fVar) {
        this.b = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p94.f fVar = this.b;
        p94 p94Var = p94.this;
        p94Var.p = null;
        if (p94Var.z != null) {
            o8.s(p94Var.x == null, "Unexpected non-null activeTransport");
            p94.f fVar2 = this.b;
            fVar2.a.e(p94.this.z);
            return;
        }
        p94.c cVar = p94Var.w;
        p94.c cVar2 = fVar.a;
        if (cVar == cVar2) {
            p94Var.x = cVar2;
            p94 p94Var2 = p94.this;
            p94Var2.w = null;
            p94Var2.n.a();
            p94.this.f(cx1.READY);
            p94 p94Var3 = p94.this;
            rb8 rb8Var = p94Var3.A;
            String str = p94Var3.B;
            String strB = p94.f.b(p94Var3.n.a());
            String str2 = (String) p94.this.n.a().a.get(d.e);
            if (str2 == null) {
                str2 = "";
            }
            String strA = p94.f.a((fl7) p94.this.n.a().a.get(us3.a));
            rb8Var.a.a(rb8.c, j.s(str), j.t(strB, str2));
            rb8Var.a.b(rb8.e, 1L, j.s(str), j.u(strA, strB, str2));
        }
    }
}
