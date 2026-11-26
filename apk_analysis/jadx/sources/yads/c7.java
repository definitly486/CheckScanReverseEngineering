package yads;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class c7 {
    public final e40 a;
    public final xh4 b;
    public final g34 c;

    public c7() {
        e40 e40Var = new e40();
        xh4 xh4Var = new xh4();
        g34 g34Var = new g34();
        this.a = e40Var;
        this.b = xh4Var;
        this.c = g34Var;
    }

    public final h75 a(d9 d9Var, e4 e4Var, String str, l24 l24Var) {
        h75 h75VarA;
        if ((d9Var != null ? d9Var.m : null) == p60.NATIVE) {
            Object obj = d9Var.t;
            h75VarA = this.b.a(e4Var, d9Var, obj instanceof vg4 ? (vg4) obj : null);
        } else {
            h75VarA = this.a.a(e4Var, d9Var);
        }
        h75VarA.a(str, "verification_network");
        if (l24Var != null) {
            h75VarA.a(l24Var.b.b, "adapter");
            g34 g34Var = this.c;
            o24 o24Var = l24Var.c;
            g34Var.getClass();
            Map mapA = g34.a(o24Var);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : mapA.entrySet()) {
                if (!defpackage.aa4.e((String) entry.getValue(), "null")) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                h75VarA.a((String) entry2.getValue(), (String) entry2.getKey());
            }
        }
        return h75VarA;
    }
}
