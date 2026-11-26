package yads;

import defpackage.r57;
import defpackage.yv8;

/* JADX INFO: loaded from: classes6.dex */
public final class cl0 {
    public final g1 a;
    public final defpackage.qm3 b;

    /* JADX WARN: Multi-variable type inference failed */
    public cl0(g1 g1Var, defpackage.bm3 bm3Var) {
        this.a = g1Var;
        this.b = (defpackage.qm3) bm3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
    
        if (r10 == r1) goto L29;
     */
    /* JADX WARN: Type inference failed for: r10v2, types: [bm3, qm3] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(n8 n8Var, long j, defpackage.f02 f02Var) {
        bl0 bl0Var;
        if (f02Var instanceof bl0) {
            bl0Var = (bl0) f02Var;
            int i = bl0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                bl0Var.f = i - Integer.MIN_VALUE;
            } else {
                bl0Var = new bl0(this, f02Var);
            }
        } else {
            bl0Var = new bl0(this, f02Var);
        }
        Object objInvoke = bl0Var.d;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = bl0Var.f;
        if (i2 == 0) {
            r57.b(objInvoke);
            ?? r10 = this.b;
            bl0Var.b = n8Var;
            bl0Var.c = j;
            bl0Var.f = 1;
            objInvoke = r10.invoke(n8Var, bl0Var);
            if (objInvoke != a32Var) {
            }
            return a32Var;
        }
        if (i2 == 1) {
            j = bl0Var.c;
            n8Var = bl0Var.b;
            r57.b(objInvoke);
        } else {
            if (i2 != 2) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objInvoke);
        }
        if (objInvoke == null) {
            return null;
        }
        return objInvoke;
        if (objInvoke != null) {
            return objInvoke;
        }
        g1 g1Var = this.a;
        if (!g1Var.a.containsKey(g1Var.b.a(n8Var))) {
            return null;
        }
        g1 g1Var2 = this.a;
        bl0Var.b = null;
        bl0Var.f = 2;
        defpackage.xp1 xp1Var = (defpackage.xp1) g1Var2.a.get(g1Var2.b.a(n8Var));
        objInvoke = xp1Var == null ? null : yv8.c(j, new f1(xp1Var, null), bl0Var);
    }
}
