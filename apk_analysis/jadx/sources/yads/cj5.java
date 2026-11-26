package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class cj5 {
    public final gj5 a;

    public cj5(gj5 gj5Var) {
        this.a = gj5Var;
    }

    public final void a(Map map, boolean z) {
        oa3 oa3Var = oa3.AD_SESSION_DATA;
        String strB = v83.b(map, oa3Var);
        if (strB == null && z) {
            return;
        }
        oa3Var.a();
        this.a.a(strB);
    }
}
