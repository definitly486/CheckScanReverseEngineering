package yads;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class b55 {
    public final d9 a;
    public final q84 b;
    public final sk c;
    public boolean d;

    public b55(Context context, bf5 bf5Var, n5 n5Var, n70 n70Var, d9 d9Var, String str) {
        bf5Var.getClass();
        q84 q84VarA = re.a(context, new lm6(((do6) bf5Var).a));
        sk skVar = new sk(n5Var, n70Var, str);
        this.a = d9Var;
        this.b = q84VarA;
        this.c = skVar;
        this.d = true;
    }

    public final void a() {
        if (this.d) {
            this.d = false;
            return;
        }
        h75 h75VarA = this.c.a();
        Map map = this.a.u;
        if (map != null) {
            h75VarA.a.putAll(map);
        }
        c cVar = this.a.i;
        h75VarA.b = cVar;
        e75 e75Var = e75.AD_LOADING_RESULT;
        this.b.a(new g75("rebind", defpackage.n05.n(h75VarA.a), cVar));
    }
}
