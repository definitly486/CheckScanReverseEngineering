package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ak5 extends lu0 {
    public final qz a = new qz();
    public kn1 b;

    @Override // yads.lu0
    public final boolean a(r02 r02Var, vq0 vq0Var, fs2 fs2Var) {
        if (super.a(r02Var, vq0Var, fs2Var)) {
            return true;
        }
        kn1 kn1Var = this.b;
        return kn1Var != null ? kn1Var.a(r02Var, vq0Var, fs2Var) : false;
    }

    public final void a(kn1 kn1Var) {
        kn1 kn1Var2 = this.b;
        if (kn1Var2 != null) {
            kn1Var2.c.b = null;
        }
        if (kn1Var != null) {
            kn1Var.c.b = this.a;
        }
        this.b = kn1Var;
    }

    @Override // yads.lu0
    public final boolean a(xr0 xr0Var, vh2 vh2Var, fs2 fs2Var) {
        if (super.a(xr0Var, vh2Var, fs2Var)) {
            return true;
        }
        kn1 kn1Var = this.b;
        return kn1Var != null ? kn1Var.a(xr0Var, vh2Var, fs2Var) : false;
    }
}
