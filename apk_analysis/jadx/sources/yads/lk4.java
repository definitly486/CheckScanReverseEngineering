package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class lk4 implements tq4 {
    public final gv5 a;
    public final zv3 b;

    public lk4(gv5 gv5Var) {
        zv3 zv3Var = new zv3();
        this.a = gv5Var;
        this.b = zv3Var;
    }

    @Override // yads.tq4
    public final void a(String str) {
        String strA = this.b.a(str, defpackage.mx2.b);
        if (strA.length() > 0) {
            this.a.a(strA);
        } else {
            d75 d75Var = d75.CUSTOM;
        }
    }
}
