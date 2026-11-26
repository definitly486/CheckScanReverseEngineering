package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class mq7 implements lq7 {
    public final /* synthetic */ kq7 a;

    public mq7(kq7 kq7Var) {
        this.a = kq7Var;
    }

    @Override // defpackage.lq7
    public final <Base> void a(ne4<Base> ne4Var, nl3<? super Base, ? extends xp7<? super Base>> nl3Var) {
        this.a.h(ne4Var, nl3Var, true);
    }

    @Override // defpackage.lq7
    public final <Base> void b(ne4<Base> ne4Var, nl3<? super String, ? extends xl2<? extends Base>> nl3Var) {
        this.a.g(ne4Var, nl3Var, true);
    }

    @Override // defpackage.lq7
    public final <Base, Sub extends Base> void c(ne4<Base> ne4Var, ne4<Sub> ne4Var2, df4<Sub> df4Var) {
        this.a.i(ne4Var, ne4Var2, df4Var, true);
    }

    @Override // defpackage.lq7
    public final <T> void d(ne4<T> ne4Var, df4<T> df4Var) {
        df4Var.getClass();
        this.a.j(ne4Var, new d02.a(df4Var), true);
    }

    @Override // defpackage.lq7
    public final <T> void e(ne4<T> ne4Var, nl3<? super List<? extends df4<?>>, ? extends df4<?>> nl3Var) {
        ne4Var.getClass();
        nl3Var.getClass();
        this.a.j(ne4Var, new d02.b(nl3Var), true);
    }
}
