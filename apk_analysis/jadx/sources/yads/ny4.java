package yads;

import android.content.Context;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class ny4 {
    public final e4 a;
    public final bf5 b;

    public ny4(e4 e4Var, bf5 bf5Var) {
        this.a = e4Var;
        this.b = bf5Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Context context, dt dtVar, defpackage.f02 f02Var) throws Throwable {
        my4 my4Var;
        if (f02Var instanceof my4) {
            my4Var = (my4) f02Var;
            int i = my4Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                my4Var.d = i - Integer.MIN_VALUE;
            } else {
                my4Var = new my4(this, f02Var);
            }
        } else {
            my4Var = new my4(this, f02Var);
        }
        Object objA = my4Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = my4Var.d;
        if (i2 == 0) {
            r57.b(objA);
            ln2 ln2Var = new ln2(this.a, this.b, dtVar);
            my4Var.d = 1;
            objA = ln2Var.a(context, my4Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        return (String) objA;
    }
}
