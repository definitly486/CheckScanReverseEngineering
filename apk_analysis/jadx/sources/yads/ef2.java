package yads;

import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class ef2 {
    public final HashMap a;
    public final cf2 b;

    public ef2(HashMap map, cf2 cf2Var) {
        this.a = map;
        this.b = cf2Var;
    }

    public final cf2 a(String str) {
        cf2 cf2Var;
        return (str == null || (cf2Var = (cf2) this.a.get(str)) == null) ? this.b : cf2Var;
    }
}
