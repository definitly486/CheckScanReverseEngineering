package yads;

import android.content.Context;
import defpackage.r57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wi0 {
    public final lf4 a;
    public final nk4 b;
    public final hy4 c;

    public wi0(e4 e4Var, bf5 bf5Var, d9 d9Var, l00 l00Var, lf4 lf4Var, h16 h16Var, nk4 nk4Var) {
        hy4 hy4Var = new hy4(e4Var, bf5Var, d9Var, h16Var, l00Var);
        this.a = lf4Var;
        this.b = nk4Var;
        this.c = hy4Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Context context, pi0 pi0Var, defpackage.f02 f02Var) {
        vi0 vi0Var;
        fv5 fv5VarA;
        if (f02Var instanceof vi0) {
            vi0Var = (vi0) f02Var;
            int i = vi0Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                vi0Var.e = i - Integer.MIN_VALUE;
            } else {
                vi0Var = new vi0(this, f02Var);
            }
        } else {
            vi0Var = new vi0(this, f02Var);
        }
        Object objA = vi0Var.c;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = vi0Var.e;
        fv5 fv5Var = null;
        if (i2 == 0) {
            r57.b(objA);
            List list = pi0Var.d;
            hy4 hy4Var = this.c;
            vi0Var.b = pi0Var;
            vi0Var.e = 1;
            objA = hy4Var.a(context, list, vi0Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            pi0Var = vi0Var.b;
            r57.b(objA);
        }
        by4 by4Var = (by4) objA;
        if (by4Var != null) {
            lf4 lf4Var = this.a;
            lf4Var.a.b();
            lf4Var.b.f.c();
        } else {
            nk4 nk4Var = this.b;
            String str = pi0Var.b;
            List list2 = pi0Var.c;
            if (list2 == null) {
                list2 = defpackage.kx2.b;
            }
            nk4Var.getClass();
            if (str.length() <= 0) {
                str = null;
            }
            defpackage.mx2 mx2Var = defpackage.mx2.b;
            if (str != null) {
                lk4 lk4Var = nk4Var.a;
                String strA = lk4Var.b.a(str, mx2Var);
                fv5VarA = strA.length() > 0 ? lk4Var.a.a(strA) : new dv5(d75.UNKNOWN);
            } else {
                fv5VarA = null;
            }
            nk4Var.b.a(list2, pe4.a((by4) null, fv5VarA), mx2Var);
            fv5Var = fv5VarA;
        }
        return new n83(by4Var, fv5Var);
    }
}
