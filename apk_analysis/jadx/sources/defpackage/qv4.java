package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qv4 implements lv4 {
    public final kv a;
    public final g6 b;

    public qv4(kv kvVar, g6 g6Var) {
        this.a = kvVar;
        this.b = g6Var;
    }

    @Override // defpackage.lv4
    public final p08 a() {
        kv kvVar = this.a;
        c4 c4Var = kvVar.d;
        int i = 0;
        h08 h08Var = new h08(c4Var.b.a(), new q3(new g4(c4Var), i));
        iv ivVar = new iv(new ov(kvVar, 0), 0);
        rm3.e eVar = rm3.d;
        rm3.d dVar = rm3.c;
        oq1 oq1Var = new oq1(h08Var, ivVar, eVar, dVar, dVar);
        mz7 mz7VarA = kvVar.b.a();
        jv jvVar = new jv(new aw(kvVar, i), i);
        mz7VarA.getClass();
        int i2 = 1;
        return new p08(new yz7(oq1Var.d(new e08(mz7VarA, jvVar)), new tk1(new mv4(this), i2)), new zq(nv4.f, i2));
    }

    @Override // defpackage.lv4
    public final p08 g() {
        return new p08(new yz7(this.a.d(), new vk1(new ov4(this), 2)), new i7(pv4.f));
    }
}
