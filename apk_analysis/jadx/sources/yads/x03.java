package yads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import defpackage.j59;
import defpackage.k57;

/* JADX INFO: loaded from: classes6.dex */
public final class x03 {
    public final q84 a;
    public final w03 b;

    public x03(bf5 bf5Var) {
        do6 do6Var = (do6) bf5Var;
        Context context = do6Var.a;
        q84 q84VarA = mw.a(context, context);
        do6Var.getClass();
        w03 w03Var = new w03(new eo6());
        this.a = q84VarA;
        this.b = w03Var;
    }

    public final Object a(Activity activity, f2 f2Var) {
        Object aVar;
        long jA = qb3.a();
        Intent intentA = this.b.a(activity, jA);
        h2 h2VarA = g2.a();
        h2VarA.a(jA, f2Var);
        try {
            activity.startActivity(intentA);
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null) {
            h2VarA.a(jA);
            jn3.a("Failed to show Fullscreen Ad. Exception: " + thA, new Object[0]);
            this.a.reportError("Failed to show Fullscreen Ad", thA);
        }
        return aVar;
    }
}
