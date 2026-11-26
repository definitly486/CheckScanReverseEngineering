package yads;

import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class zh4 {
    public final e4 a;
    public final String b;
    public final d9 c;
    public final vg4 d;
    public final li4 e;
    public gi4 f = null;

    public zh4(e4 e4Var, String str, d9 d9Var, vg4 vg4Var, li4 li4Var) {
        this.a = e4Var;
        this.b = str;
        this.c = d9Var;
        this.d = vg4Var;
        this.e = li4Var;
    }

    public final h75 a() {
        h75 h75VarA = this.e.a(this.a, this.c, this.d);
        gi4 gi4Var = this.f;
        if (gi4Var != null) {
            h75VarA.b(gi4Var.b, "bind_type");
        }
        h75VarA.a(this.b, "native_ad_type");
        sl5 sl5Var = this.a.d.a;
        if (sl5Var != null) {
            h75VarA.b(sl5Var.b().b, "size_type");
            h75VarA.b(Integer.valueOf(sl5Var.getWidth()), TJAdUnitConstants.String.WIDTH);
            h75VarA.b(Integer.valueOf(sl5Var.getHeight()), TJAdUnitConstants.String.HEIGHT);
        }
        h75VarA.b = this.c.i;
        return h75VarA;
    }
}
