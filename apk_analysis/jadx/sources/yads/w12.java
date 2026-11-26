package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class w12 {
    public final as2 a;
    public final as2 b;
    public final as2 c;
    public final as2 d;
    public final as2 e;
    public final as2 f;
    public final as2 g;
    public final nv1 h;
    public final as2 i;

    static {
        wr2.a(12L);
        wr2.a(g12.SP);
        wr2.a(Double.valueOf(0.0d));
        wr2.a(-16777216);
    }

    public w12(as2 as2Var, as2 as2Var2, as2 as2Var3, as2 as2Var4, as2 as2Var5, as2 as2Var6, as2 as2Var7, nv1 nv1Var, as2 as2Var8) {
        this.a = as2Var;
        this.b = as2Var2;
        this.c = as2Var3;
        this.d = as2Var4;
        this.e = as2Var5;
        this.f = as2Var6;
        this.g = as2Var7;
        this.h = nv1Var;
        this.i = as2Var8;
    }

    public final boolean a(w12 w12Var, fs2 fs2Var, fs2 fs2Var2) {
        boolean zA;
        if (w12Var == null) {
            return false;
        }
        as2 as2Var = this.a;
        String str = as2Var != null ? (String) as2Var.a(fs2Var) : null;
        as2 as2Var2 = w12Var.a;
        if (defpackage.aa4.e(str, as2Var2 != null ? (String) as2Var2.a(fs2Var2) : null) && ((Number) this.b.a(fs2Var)).longValue() == ((Number) w12Var.b.a(fs2Var2)).longValue() && this.c.a(fs2Var) == w12Var.c.a(fs2Var2)) {
            as2 as2Var3 = this.d;
            JSONObject jSONObject = as2Var3 != null ? (JSONObject) as2Var3.a(fs2Var) : null;
            as2 as2Var4 = w12Var.d;
            if (defpackage.aa4.e(jSONObject, as2Var4 != null ? (JSONObject) as2Var4.a(fs2Var2) : null)) {
                as2 as2Var5 = this.e;
                tf1 tf1Var = as2Var5 != null ? (tf1) as2Var5.a(fs2Var) : null;
                as2 as2Var6 = w12Var.e;
                if (tf1Var == (as2Var6 != null ? (tf1) as2Var6.a(fs2Var2) : null)) {
                    as2 as2Var7 = this.f;
                    Long l = as2Var7 != null ? (Long) as2Var7.a(fs2Var) : null;
                    as2 as2Var8 = w12Var.f;
                    if (defpackage.aa4.e(l, as2Var8 != null ? (Long) as2Var8.a(fs2Var2) : null) && ((Number) this.g.a(fs2Var)).doubleValue() == ((Number) w12Var.g.a(fs2Var2)).doubleValue()) {
                        nv1 nv1Var = this.h;
                        nv1 nv1Var2 = w12Var.h;
                        if (nv1Var != null) {
                            zA = nv1Var.a(nv1Var2, fs2Var, fs2Var2);
                        } else {
                            zA = nv1Var2 == null;
                        }
                        if (zA && ((Number) this.i.a(fs2Var)).intValue() == ((Number) w12Var.i.a(fs2Var2)).intValue()) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }
}
