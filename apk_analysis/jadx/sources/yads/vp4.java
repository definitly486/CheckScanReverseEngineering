package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vp4 implements y85, x85 {
    public final String a;
    public final yp4 b;
    public final /* synthetic */ wp4 c;

    public vp4(wp4 wp4Var, String str, yp4 yp4Var) {
        this.c = wp4Var;
        this.a = str;
        this.b = yp4Var;
    }

    @Override // yads.y85
    public final void a(Object obj) {
        ((av3) this.c.b.a).a("YmadOmSdkJs", (String) obj);
        aq4 aq4Var = this.c.b;
        ((av3) aq4Var.a).a("YmadOmSdkJsUrl", this.a);
        this.b.a();
    }

    @Override // yads.x85
    public final void a(hi6 hi6Var) {
        this.b.a();
    }
}
