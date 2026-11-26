package yads;

import android.content.Context;
import androidx.camera.core.RetryPolicy;
import defpackage.rm9;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class nf {
    public static void a(Context context, q84 q84Var) {
        lf lfVar;
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        defpackage.sh2 sh2Var = defpackage.sh2.c;
        defpackage.kz1 kz1VarA = defpackage.z22.a(o22.a.C0306a.d(rm9.b(), sh2Var).plus(new j90(q84Var)));
        df dfVar = new df(sh2Var);
        Cif cif = new Cif(q84Var);
        rw5 rw5Var = new rw5();
        fe5 fe5VarA = yg5.a().a(context);
        if (fe5VarA == null || !fe5VarA.j0) {
            return;
        }
        Long l = fe5VarA.k0;
        long jLongValue = l != null ? l.longValue() : 1000L;
        Long l2 = fe5VarA.l0;
        long jLongValue2 = l2 != null ? l2.longValue() : RetryPolicy.DEFAULT_RETRY_TIMEOUT_IN_MILLIS;
        Set set = fe5VarA.r0;
        if (set == null) {
            set = defpackage.ox2.b;
        }
        Set set2 = set;
        lf lfVar2 = lf.k;
        if (lfVar2 == null) {
            synchronized (lf.j) {
                lfVar = lf.k;
                if (lfVar == null) {
                    lf lfVar3 = new lf(jLongValue, jLongValue2, set2, kz1VarA, dfVar, cif, rw5Var);
                    lf.k = lfVar3;
                    lfVar = lfVar3;
                }
            }
            lfVar2 = lfVar;
        }
        lfVar2.a();
    }
}
