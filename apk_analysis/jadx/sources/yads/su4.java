package yads;

import android.content.Context;
import defpackage.jd8;
import defpackage.rm9;

/* JADX INFO: loaded from: classes6.dex */
public final class su4 {
    public final uu4 a(Context context) {
        uu4 uu4Var;
        uu4 uu4Var2 = uu4.i;
        if (uu4Var2 != null) {
            return uu4Var2;
        }
        synchronized (this) {
            Context applicationContext = context.getApplicationContext();
            i90 i90Var = new i90();
            jd8 jd8VarB = rm9.b();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            defpackage.kz1 kz1VarA = defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.sh2.c).plus(i90Var));
            uu4Var = uu4.i;
            if (uu4Var == null) {
                uu4Var = new uu4(applicationContext, kz1VarA);
                uu4.i = uu4Var;
            }
        }
        return uu4Var;
    }
}
