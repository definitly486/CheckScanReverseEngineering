package yads;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ah4 {
    public final e4 a;
    public final xh4 b;
    public final u64 c;
    public d9 d;

    public ah4(e4 e4Var) {
        xh4 xh4Var = new xh4();
        u64 u64Var = new u64();
        this.a = e4Var;
        this.b = xh4Var;
        this.c = u64Var;
    }

    public final h75 a() {
        h75 h75Var;
        h75 h75Var2 = new h75((Map) null, 3);
        d9 d9Var = this.d;
        if (d9Var == null) {
            return h75Var2;
        }
        h75 h75VarA = i75.a(h75Var2, this.b.a(this.a, d9Var, (vg4) d9Var.t));
        x54 x54Var = this.a.k;
        u64 u64Var = this.c;
        if (x54Var != null) {
            u64Var.getClass();
            h75Var = u64.a(x54Var);
        } else {
            u64Var.getClass();
            h75Var = new h75(new LinkedHashMap(), 2);
            h75Var.b(c75.a, "adapter");
        }
        return i75.a(h75VarA, h75Var);
    }
}
