package yads;

import android.content.Context;
import defpackage.k57;
import defpackage.r57;
import defpackage.zya;

/* JADX INFO: loaded from: classes6.dex */
public final class b65 {
    public final Context a;
    public final a85 b;
    public final vh0 c;

    public b65(Context context, a85 a85Var, vh0 vh0Var, dh3 dh3Var) {
        this.a = context;
        this.b = a85Var;
        this.c = vh0Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.f02 f02Var) throws Throwable {
        y55 y55Var;
        if (f02Var instanceof y55) {
            y55Var = (y55) f02Var;
            int i = y55Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                y55Var.d = i - Integer.MIN_VALUE;
            } else {
                y55Var = new y55(this, f02Var);
            }
        } else {
            y55Var = new y55(this, f02Var);
        }
        Object objS = y55Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = y55Var.d;
        if (i2 == 0) {
            r57.b(objS);
            y55Var.d = 1;
            defpackage.c31 c31Var = new defpackage.c31(1, zya.b(y55Var));
            c31Var.u();
            bn3 bn3Var = new bn3(this.a, this.c.a(), this.b, this.c.a.c, new ch3(new z55(c31Var), new a65(c31Var)));
            z75 z75VarA = y75.a();
            Context context = this.a;
            synchronized (z75VarA) {
                qn4.a(context).a(bn3Var);
            }
            objS = c31Var.s();
            if (objS == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objS);
        }
        return ((k57) objS).b;
    }
}
