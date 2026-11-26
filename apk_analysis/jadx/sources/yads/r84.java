package yads;

import android.content.Context;
import com.yandex.varioqub.appmetricaadapter.AppMetricaAdapter;
import defpackage.fh8;
import defpackage.j59;
import defpackage.ll3;
import yads.r84;

/* JADX INFO: loaded from: classes6.dex */
public abstract class r84 {
    public static final zg5 a;
    public static volatile q84 b;

    static {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        a = zg5Var2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002c  */
    public static q84 a(final Context context, fe5 fe5Var, lm6 lm6Var) {
        boolean z;
        final io6 io6Var = io6.a;
        ng ngVar = new ng();
        wg wgVarA = dg.a(context).a(context, za.a(context) ? "322a737a-a0ca-44e0-bc85-649b1c7c1db6" : "478cb909-6ad1-4e12-84cc-b3629a789f93", lm6Var);
        fh8 fh8Var = new fh8(new ll3() { // from class: p7a
            @Override // defpackage.ll3
            public final Object invoke() {
                return r84.a(io6Var, context);
            }
        });
        if (fe5Var != null) {
            z = fe5Var.i0;
        }
        q84 q84Var = new q84(wgVarA, fh8Var, z);
        ge5 ge5Var = new ge5(context, ngVar);
        pe5 pe5Var = ge5Var.b;
        he5 he5Var = ge5Var.a;
        pe5Var.getClass();
        synchronized (pe5.b) {
            try {
                if (!pe5Var.a.containsKey(he5Var)) {
                    pe5Var.a.put(he5Var, null);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return q84Var;
    }

    public static final ho6 a(io6 io6Var, Context context) {
        ho6 ho6Var;
        io6Var.getClass();
        ho6 ho6Var2 = io6.c;
        if (ho6Var2 != null) {
            return ho6Var2;
        }
        synchronized (io6.b) {
            try {
                ho6Var = io6.c;
                if (ho6Var == null) {
                    String str = za.a(context) ? "322a737a-a0ca-44e0-bc85-649b1c7c1db6" : "478cb909-6ad1-4e12-84cc-b3629a789f93";
                    eg egVar = new eg(new lg(context), context);
                    try {
                        wm0 wm0Var = (wm0) egVar.a.getValue(egVar, eg.b[0]);
                        if (wm0Var != null) {
                            AppMetricaAdapter appMetricaAdapter = wm0Var.a;
                            appMetricaAdapter.b.a(appMetricaAdapter.a, str);
                        }
                    } catch (Throwable unused) {
                    }
                    ho6Var = new ho6(context, egVar);
                    io6.c = ho6Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return ho6Var;
    }
}
