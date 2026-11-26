package yads;

import android.content.Context;
import defpackage.u96;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class l34 {
    public static final List g = u96.i(e75.RENDERING_START, e75.DSP_RENDERING_START);
    public static final List h = u96.i(e75.IMPRESSION_TRACKING_START, e75.IMPRESSION_TRACKING_SUCCESS, e75.DSP_IMPRESSION_TRACKING_START, e75.DSP_IMPRESSION_TRACKING_SUCCESS);
    public final e4 a;
    public final bf5 b;
    public final d9 c;
    public final k34 d;
    public final u64 e;
    public final w95 f;

    public l34(e4 e4Var, bf5 bf5Var, d9 d9Var) {
        k34 k34Var = new k34();
        u64 u64Var = new u64();
        w95 w95Var = new w95();
        this.a = e4Var;
        this.b = bf5Var;
        this.c = d9Var;
        this.d = k34Var;
        this.e = u64Var;
        this.f = w95Var;
    }

    public final void a(Context context, e75 e75Var, x54 x54Var, String str, Map map) {
        h75 h75VarA;
        k34 k34Var = this.d;
        d9 d9Var = this.c;
        e4 e4Var = this.a;
        k34Var.getClass();
        if ((d9Var != null ? d9Var.m : null) == p60.NATIVE) {
            Object obj = d9Var.t;
            h75VarA = k34Var.b.a(e4Var, d9Var, obj instanceof vg4 ? (vg4) obj : null);
        } else {
            h75VarA = k34Var.a.a(e4Var, d9Var);
        }
        this.e.getClass();
        h75 h75VarA2 = i75.a(h75VarA, u64.a(x54Var));
        h75VarA2.a.putAll(map);
        g75 g75Var = new g75(e75Var, h75VarA2.a, h75VarA2.b);
        this.b.getClass();
        re.a(context, new lm6(((do6) this.b).a)).a(g75Var);
        new le(context).a(e75Var, g75Var.b, str, x54Var.g);
    }

    public final void a(Context context, x54 x54Var, Map map) {
        a(context, e75.ADAPTER_INVALID, x54Var, null, map);
    }
}
