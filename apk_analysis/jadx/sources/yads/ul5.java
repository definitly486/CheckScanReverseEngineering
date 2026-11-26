package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ul5 {
    /* JADX WARN: Code duplicated, block: B:25:0x0050  */
    /* JADX WARN: Code duplicated, block: B:26:0x0052  */
    public static final boolean a(Context context, d9 d9Var, wx2 wx2Var, ao aoVar, sl5 sl5Var) {
        boolean z;
        aoVar.getClass();
        boolean z2 = wx2Var.c(context) > 0 && wx2Var.a(context) > 0;
        boolean z3 = d9Var.z;
        Context applicationContext = context.getApplicationContext();
        int iC = sl5Var.c(applicationContext);
        int iA = sl5Var.a(applicationContext);
        int iC2 = wx2Var.c(applicationContext);
        int iA2 = wx2Var.a(applicationContext);
        int iOrdinal = sl5Var.b().ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                if (iC2 <= iC || iC <= 0 || (iA2 > iA && iA != 0)) {
                    z = false;
                } else {
                    z = true;
                }
            } else if (iOrdinal == 2) {
                z = true;
            } else {
                if (iOrdinal != 3) {
                    defpackage.me0.e();
                    return false;
                }
                if (iC2 <= iC) {
                }
                z = false;
            }
        } else if (iC2 > iC || iC <= 0 || iA2 > iA) {
            z = false;
        } else {
            z = true;
        }
        return z3 || (z2 && (z && (wx2Var.c(applicationContext) <= eh6.d(applicationContext) && wx2Var.a(applicationContext) <= eh6.b(applicationContext))));
    }
}
