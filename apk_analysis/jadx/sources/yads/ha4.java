package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.jd8;
import defpackage.ll3;
import defpackage.rm9;
import java.util.concurrent.atomic.AtomicBoolean;
import yads.ha4;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ha4 {
    public static final j59 a(Context context, bf5 bf5Var, t70 t70Var) {
        if (!new bn().a()) {
            i90 i90Var = new i90();
            jd8 jd8VarB = rm9.b();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            defpackage.av0.c(defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.sh2.c).plus(i90Var)), null, null, new ga4(bf5Var, context, null), 3);
            new ck6().a();
            Context applicationContext = context.getApplicationContext();
            AtomicBoolean atomicBoolean = new AtomicBoolean();
            if (za.a(applicationContext) && !rw5.a() && !atomicBoolean.getAndSet(true)) {
                jn3.c("SDK API usage from a background thread detected. Please, use SDK API only from the main thread.", new Object[0]);
            }
            k94.a(bf5Var).a(context, t70Var);
        }
        return j59.a;
    }

    public static final j59 b(Context context, bf5 bf5Var, t70 t70Var) {
        i90 i90Var = new i90();
        jd8 jd8VarB = rm9.b();
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        defpackage.av0.c(defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.sh2.c).plus(i90Var)), null, null, new ga4(bf5Var, context, null), 3);
        t70Var.onInitializationCompleted();
        return j59.a;
    }

    public static final void b(boolean z) {
        zg5 zg5VarA = yg5.a();
        synchronized (zg5.k) {
            zg5VarA.c = Boolean.valueOf(z);
            j59 j59Var = j59.a;
        }
    }

    public static final void a(final Context context, final do6 do6Var, final t70 t70Var) {
        new ut2().a(new ll3() { // from class: ww9
            @Override // defpackage.ll3
            public final Object invoke() {
                return ha4.a(context, do6Var, t70Var);
            }
        }, new ll3() { // from class: xw9
            @Override // defpackage.ll3
            public final Object invoke() {
                return ha4.b(context, do6Var, t70Var);
            }
        });
    }

    public static final void a(boolean z) {
        oa4 oa4Var;
        cp3.a = z;
        jn3.c = z;
        if (z) {
            return;
        }
        oa4 oa4Var2 = oa4.b;
        if (oa4Var2 == null) {
            synchronized (oa4.c) {
                oa4Var = oa4.b;
                if (oa4Var == null) {
                    oa4Var = new oa4();
                    oa4.b = oa4Var;
                }
            }
            oa4Var2 = oa4Var;
        }
        oa4Var2.a();
        y94.a().a();
    }
}
