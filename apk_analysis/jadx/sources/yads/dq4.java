package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class dq4 {
    public final rp4 a;
    public final sp4 b;
    public final eq4 c;
    public final Context d;

    public dq4(Context context, lo6 lo6Var) {
        sp4 sp4Var;
        rp4 rp4Var = new rp4(context, lo6Var);
        sp4 sp4Var2 = sp4.d;
        if (sp4Var2 == null) {
            synchronized (sp4.c) {
                sp4Var = sp4.d;
                if (sp4Var == null) {
                    sp4Var = new sp4();
                    sp4.d = sp4Var;
                }
            }
            sp4Var2 = sp4Var;
        }
        eq4 eq4Var = new eq4();
        this.a = rp4Var;
        this.b = sp4Var2;
        this.c = eq4Var;
        this.d = context.getApplicationContext();
    }
}
