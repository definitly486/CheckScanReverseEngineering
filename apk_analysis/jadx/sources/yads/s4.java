package yads;

import android.content.Context;
import defpackage.nl3;
import defpackage.zya;

/* JADX INFO: loaded from: classes6.dex */
public final class s4 {
    public final z75 a;
    public final String b;
    public final Context c;

    public s4(Context context) {
        z75 z75Var;
        z75 z75Var2 = z75.b;
        if (z75Var2 == null) {
            synchronized (z75.a) {
                z75Var = z75.b;
                if (z75Var == null) {
                    z75Var = new z75();
                    z75.b = z75Var;
                }
            }
            z75Var2 = z75Var;
        }
        this.a = z75Var2;
        int i = ya.b;
        String string = toString();
        this.b = string == null ? "" : string;
        this.c = context.getApplicationContext();
    }

    public final Object a(nl3 nl3Var, ep epVar) {
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(epVar));
        c31Var.u();
        cp cpVar = (cp) nl3Var.invoke(new r4(c31Var));
        cpVar.q = this.b;
        z75 z75Var = this.a;
        Context context = this.c;
        synchronized (z75Var) {
            qn4.a(context).a(cpVar);
        }
        c31Var.n(new q4(this));
        Object objS = c31Var.s();
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        return objS;
    }
}
