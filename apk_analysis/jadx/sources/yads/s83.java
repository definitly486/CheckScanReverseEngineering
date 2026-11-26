package yads;

import android.content.Context;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class s83 {
    public final e4 a;
    public final bf5 b;

    public s83(e4 e4Var, bf5 bf5Var) {
        this.a = e4Var;
        this.b = bf5Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Context context, dt dtVar, defpackage.f02 f02Var) throws Throwable {
        r83 r83Var;
        if (f02Var instanceof r83) {
            r83Var = (r83) f02Var;
            int i = r83Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                r83Var.d = i - Integer.MIN_VALUE;
            } else {
                r83Var = new r83(this, f02Var);
            }
        } else {
            r83Var = new r83(this, f02Var);
        }
        Object objA = r83Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = r83Var.d;
        if (i2 == 0) {
            r57.b(objA);
            jn2 jn2Var = new jn2(this.a, this.b, dtVar);
            r83Var.d = 1;
            objA = jn2Var.a(context, r83Var);
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
