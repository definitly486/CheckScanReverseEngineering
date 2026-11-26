package yads;

import android.content.Context;
import android.os.Build;
import defpackage.jd8;
import defpackage.rm9;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class zh {
    public static final AtomicBoolean a = new AtomicBoolean(false);
    public static volatile xh b;

    public static void a(Context context, q84 q84Var) {
        j90 j90Var = new j90(q84Var);
        jd8 jd8VarB = rm9.b();
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        defpackage.kz1 kz1VarA = defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.sh2.c).plus(j90Var));
        if (Build.VERSION.SDK_INT >= 30 && !a.getAndSet(true)) {
            defpackage.av0.c(kz1VarA, null, null, new yh(context, q84Var, kz1VarA, null), 3);
        }
    }
}
