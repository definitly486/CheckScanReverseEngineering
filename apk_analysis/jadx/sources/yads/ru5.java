package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ru5 implements fr {
    public final /* synthetic */ uu5 a;

    public ru5(uu5 uu5Var) {
        this.a = uu5Var;
    }

    @Override // yads.fr
    public final void a(kr krVar) {
        fq fqVar = this.a.I;
        if (fqVar == null) {
            return;
        }
        ((hq) fqVar).a.c.setCurrentItem(krVar.b);
    }

    @Override // yads.fr
    public final void b(kr krVar) {
        uu5 uu5Var = this.a;
        if (uu5Var.I == null) {
            return;
        }
        int i = krVar.b;
        List list = uu5Var.J;
        if (list != null) {
            kq kqVar = (kq) list.get(i);
            xr0 xr0Var = kqVar == null ? null : ((t02) kqVar).a.c;
            if (xr0Var != null) {
                e62 e62Var = ((hq) this.a.I).a.j;
                e62Var.getClass();
                if (xr0Var.e != null) {
                    int i2 = cr3.a;
                    vj5[] vj5VarArr = vj5.b;
                    int i3 = rv3.a;
                }
                tt ttVar = e62Var.a;
                vq0 vq0Var = ttVar.a;
                fs2 fs2Var = ttVar.b;
                bt0 bt0Var = e62Var.b;
                vq0 vq0Var2 = vq0Var != null ? vq0Var : null;
                lu0 lu0Var = vq0Var2 != null ? vq0Var2.R : null;
                bt0Var.getClass();
                if (((Boolean) xr0Var.b.a(fs2Var)).booleanValue()) {
                    bt0Var.a(vq0Var, fs2Var, xr0Var, lu0Var);
                }
            }
        }
    }
}
