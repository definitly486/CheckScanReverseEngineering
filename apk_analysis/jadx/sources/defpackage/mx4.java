package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class mx4 implements ox4.a {
    public final /* synthetic */ ox4 a;
    public final /* synthetic */ float b;

    public /* synthetic */ mx4(ox4 ox4Var, float f) {
        this.a = ox4Var;
        this.b = f;
    }

    @Override // ox4.a
    public final void run() {
        ox4 ox4Var = this.a;
        nw4 nw4Var = ox4Var.b;
        float f = this.b;
        if (nw4Var == null) {
            ox4Var.h.add(new mx4(ox4Var, f));
        } else {
            ox4Var.u((int) hb5.f(nw4Var.l, nw4Var.m, f));
        }
    }
}
