package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class s83 {
    public final vw a;

    public s83(vw vwVar) {
        this.a = vwVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Serializable a(f02 f02Var) {
        r83 r83Var;
        if (f02Var instanceof r83) {
            r83Var = (r83) f02Var;
            int i = r83Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                r83Var.n = i - Integer.MIN_VALUE;
            } else {
                r83Var = new r83(this, f02Var);
            }
        } else {
            r83Var = new r83(this, f02Var);
        }
        Object objF = r83Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = r83Var.n;
        if (i2 == 0) {
            r57.b(objF);
            r83Var.n = 1;
            objF = this.a.f(r83Var);
            if (objF == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objF);
        }
        p99 p99Var = (p99) objF;
        ub.a aVar = ub.a.USER;
        String strB = p99Var.b();
        if (strB == null) {
            strB = "";
        }
        b36 b36Var = new b36(aVar, new ub(aVar, strB, false));
        ub.a aVar2 = ub.a.SMS;
        String strA = p99Var.a();
        return (Serializable) n05.e(b36Var, new b36(aVar2, new ub(aVar2, strA != null ? strA : "", false)));
    }
}
