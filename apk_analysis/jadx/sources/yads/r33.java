package yads;

import defpackage.r57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class r33 {
    public final kg0 a;

    public r33(kg0 kg0Var) {
        this.a = kg0Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.f02 f02Var) throws Throwable {
        q33 q33Var;
        pg0 pg0Var;
        if (f02Var instanceof q33) {
            q33Var = (q33) f02Var;
            int i = q33Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                q33Var.d = i - Integer.MIN_VALUE;
            } else {
                q33Var = new q33(this, f02Var);
            }
        } else {
            q33Var = new q33(this, f02Var);
        }
        Object objD = q33Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = q33Var.d;
        if (i2 == 0) {
            r57.b(objD);
            kg0 kg0Var = this.a;
            q33Var.d = 1;
            objD = defpackage.av0.d(kg0Var.d, new jg0(kg0Var, null), q33Var);
            if (objD == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objD);
        }
        ef0 ef0Var = (ef0) objD;
        List list = ef0Var.h;
        we0 we0Var = ef0Var.a;
        ng0 ng0Var = ef0Var.b;
        if (ng0Var.b) {
            pg0Var = ng0Var.c.isEmpty() ? pg0.SUCCESS : pg0.WARNING;
        } else {
            pg0Var = pg0.ERROR;
        }
        return new pf0(list, we0Var, new og0(ng0Var.a, new qg0(pg0Var, ng0Var.c)), ef0Var.c, ef0Var.d, ef0Var.e, ef0Var.f);
    }
}
