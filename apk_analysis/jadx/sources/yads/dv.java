package yads;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes6.dex */
public final class dv {
    public final bf5 a;
    public final q84 b;
    public final cv c;

    public dv(bf5 bf5Var) {
        do6 do6Var = (do6) bf5Var;
        Context context = do6Var.a;
        q84 q84VarA = mw.a(context, context);
        do6Var.getClass();
        cv cvVar = new cv(new eo6());
        this.a = bf5Var;
        this.b = q84VarA;
        this.c = cvVar;
    }

    public final boolean a(Context context, e4 e4Var, d9 d9Var, h9 h9Var, String str) {
        h2 h2VarA = g2.a();
        long jA = qb3.a();
        Intent intentA = this.c.a(context, str, jA);
        h2VarA.a(jA, new f2(d9Var, e4Var, h9Var, this.a, null, 0, null, 112));
        try {
            context.startActivity(intentA);
            return true;
        } catch (Exception e) {
            h2VarA.a(jA);
            e.toString();
            this.b.reportError("Failed to show Browser", e);
            return false;
        }
    }
}
