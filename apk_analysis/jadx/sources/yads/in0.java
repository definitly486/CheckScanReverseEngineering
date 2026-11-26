package yads;

import android.content.Context;
import android.content.Intent;
import com.yandex.mobile.ads.common.AdActivity;
import defpackage.j59;
import defpackage.k57;
import defpackage.zya;

/* JADX INFO: loaded from: classes6.dex */
public final class in0 {
    public final q84 a;
    public final w1 b;
    public final r2 c;

    public in0(e4 e4Var, bf5 bf5Var, d9 d9Var) {
        do6 do6Var = (do6) bf5Var;
        Context context = do6Var.a;
        q84 q84VarA = mw.a(context, context);
        w1 w1Var = new w1(e4Var, bf5Var, d9Var);
        do6Var.getClass();
        r2 r2Var = new r2(new eo6());
        this.a = q84VarA;
        this.b = w1Var;
        this.c = r2Var;
    }

    public final Object a(Context context, Intent intent, fy4 fy4Var) throws Throwable {
        Object aVar;
        h2 h2Var;
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(fy4Var));
        c31Var.u();
        long andIncrement = qb3.a.getAndIncrement();
        eo6 eo6Var = this.c.a;
        Intent intent2 = new Intent(context, (Class<?>) AdActivity.class);
        intent2.putExtra("window_type", "window_type_activity_result");
        intent2.putExtra("data_identifier", andIncrement);
        w1 w1Var = this.b;
        gn0 gn0Var = new gn0(c31Var);
        hn0 hn0Var = new hn0(c31Var);
        w1Var.getClass();
        f2 f2Var = new f2(w1Var.c, w1Var.a, new h9(), w1Var.b, null, 0, new en0(intent, gn0Var, hn0Var), 48);
        h2 h2Var2 = h2.c;
        if (h2Var2 == null) {
            synchronized (h2.b) {
                h2Var = h2.c;
                if (h2Var == null) {
                    h2Var = new h2();
                    h2.c = h2Var;
                }
            }
            h2Var2 = h2Var;
        }
        h2Var2.a(andIncrement, f2Var);
        c31Var.n(new fn0(h2Var2, andIncrement));
        try {
            context.startActivity(intent2);
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null) {
            h2Var2.a(andIncrement);
            this.a.reportError("Failed to launch AdActivity for result", thA);
            if (c31Var.t() instanceof defpackage.no5) {
                c31Var.resumeWith(new k57.a(thA));
            }
        }
        Object objS = c31Var.s();
        return objS == defpackage.a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }
}
