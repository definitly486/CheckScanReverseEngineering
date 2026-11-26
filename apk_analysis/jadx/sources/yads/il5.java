package yads;

import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class il5 implements li4 {
    public final sd4 a;
    public final e95 b;
    public final u8 c;
    public final o50 d;

    public il5(sd4 sd4Var) {
        e95 e95Var = new e95();
        u8 u8Var = new u8();
        o50 o50Var = new o50();
        this.a = sd4Var;
        this.b = e95Var;
        this.c = u8Var;
        this.d = o50Var;
    }

    @Override // yads.li4
    public final h75 a(e4 e4Var, d9 d9Var, vg4 vg4Var) {
        e95 e95Var = this.b;
        sd4 sd4Var = this.a;
        h75 h75VarA = e95Var.a(e4Var, d9Var);
        if (vg4Var != null) {
            List listA = e95Var.b.a(vg4Var);
            if (!listA.isEmpty()) {
                h75VarA.a(listA, "image_sizes");
            }
        }
        h75VarA.b(sd4Var.c, "ad_id");
        LinkedHashMap linkedHashMap = sd4Var.k.a;
        if (linkedHashMap != null) {
            h75VarA.a.putAll(linkedHashMap);
        }
        h75 h75VarA2 = this.c.a(e4Var.e);
        return i75.a(i75.a(h75VarA, h75VarA2), this.d.a(e4Var));
    }
}
