package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class lg {
    public final zg5 a;
    public final Context b;

    public lg(Context context) {
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
        this.a = zg5Var2;
        this.b = w60.a(context);
    }

    public final boolean a() {
        Boolean bool = (Boolean) gw3.a(this.b, hw3.APPMETRICA_ANALYTICS_ENABLED.b);
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    public final boolean b() {
        fe5 fe5VarA = this.a.a(this.b);
        boolean z = fe5VarA != null && fe5VarA.u0;
        Boolean bool = (Boolean) gw3.a(this.b, hw3.APPMETRICA_EASY_INTEGRATION_ENABLED.b);
        return a() && !z && (bool != null ? bool.booleanValue() : true);
    }

    public final boolean c() {
        fe5 fe5VarA = this.a.a(this.b);
        return a() && (fe5VarA != null && fe5VarA.L);
    }
}
