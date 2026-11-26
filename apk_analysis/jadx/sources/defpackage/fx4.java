package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class fx4 implements ox4.a {
    public final /* synthetic */ ox4 a;
    public final /* synthetic */ float b;

    public /* synthetic */ fx4(ox4 ox4Var, float f) {
        this.a = ox4Var;
        this.b = f;
    }

    @Override // ox4.a
    public final void run() {
        ox4 ox4Var = this.a;
        nw4 nw4Var = ox4Var.b;
        float f = this.b;
        if (nw4Var == null) {
            ox4Var.h.add(new fx4(ox4Var, f));
            return;
        }
        ay4 ay4Var = ox4Var.c;
        ay4Var.q(ay4Var.k, hb5.f(nw4Var.l, nw4Var.m, f));
    }
}
