package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class yt {
    public final d9 a;
    public final q84 b;
    public final sk c;

    public yt(n5 n5Var, n70 n70Var, d9 d9Var, String str, q84 q84Var) {
        sk skVar = new sk(n5Var, n70Var, str);
        this.a = d9Var;
        this.b = q84Var;
        this.c = skVar;
    }

    public final void a(String str) {
        h75 h75VarA = this.c.a();
        h75VarA.b("no_view_for_asset", "reason");
        h75VarA.b(str, "asset_name");
        Map map = this.a.u;
        if (map != null) {
            h75VarA.a.putAll(map);
        }
        c cVar = this.a.i;
        h75VarA.b = cVar;
        e75 e75Var = e75.AD_LOADING_RESULT;
        this.b.a(new g75("binding_failure", defpackage.n05.n(h75VarA.a), cVar));
    }
}
