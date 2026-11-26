package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class uc3 implements x85 {
    public final /* synthetic */ String a;
    public final /* synthetic */ zc3 b;

    public uc3(zc3 zc3Var, String str) {
        this.b = zc3Var;
        this.a = str;
    }

    @Override // yads.x85
    public final void a(hi6 hi6Var) {
        zc3 zc3Var = this.b;
        String str = this.a;
        wc3 wc3Var = (wc3) zc3Var.d.remove(str);
        if (wc3Var != null) {
            wc3Var.c = hi6Var;
            zc3Var.e.put(str, wc3Var);
            if (zc3Var.g == null) {
                vc3 vc3Var = new vc3(zc3Var);
                zc3Var.g = vc3Var;
                zc3Var.f.postDelayed(vc3Var, zc3Var.b);
            }
        }
    }
}
