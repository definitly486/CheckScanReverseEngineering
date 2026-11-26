package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class jd0 {
    public final q84 a;
    public final h75 b;

    public jd0(q84 q84Var, h75 h75Var) {
        this.a = q84Var;
        this.b = h75Var;
    }

    public final void a(id0 id0Var) {
        this.b.b(id0Var.b, "log_type");
        e75 e75Var = e75.AD_LOADING_RESULT;
        h75 h75Var = this.b;
        Map map = h75Var.a;
        this.a.a(new g75("log", defpackage.n05.n(map), h75Var.b));
    }
}
