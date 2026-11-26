package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class sk {
    public final n70 a;
    public final String b;
    public final y2 c;
    public final g9 d;
    public zh4 e;

    public sk(n5 n5Var, n70 n70Var, String str) {
        y2 y2VarA = n5Var.a();
        g9 g9VarB = n5Var.b();
        this.a = n70Var;
        this.b = str;
        this.c = y2VarA;
        this.d = g9VarB;
    }

    public final h75 a() {
        h75 h75VarA = this.d.a();
        h75VarA.b(this.a.b, "ad_type");
        h75VarA.a(this.b, "ad_id");
        h75VarA.a.putAll(this.c.a());
        zh4 zh4Var = this.e;
        return zh4Var != null ? i75.a(h75VarA, zh4Var.a()) : h75VarA;
    }
}
