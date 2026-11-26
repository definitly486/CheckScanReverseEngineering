package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class iy4 extends gy4<kf4, e47<?>> {
    public kz2 d;

    @Override // defpackage.gy4
    public final int b(e47<?> e47Var) {
        e47<?> e47Var2 = e47Var;
        if (e47Var2 == null) {
            return 1;
        }
        return e47Var2.getSize();
    }

    @Override // defpackage.gy4
    public final void c(kf4 kf4Var, e47<?> e47Var) {
        e47<?> e47Var2 = e47Var;
        kz2 kz2Var = this.d;
        if (kz2Var == null || e47Var2 == null) {
            return;
        }
        kz2Var.e.a(e47Var2, true);
    }
}
