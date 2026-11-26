package yads;

import android.content.Context;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class bz2 {
    public final vy2 a;
    public final rz2 b;

    public bz2(Context context) {
        vy2 vy2Var = new vy2(context);
        rz2 rz2Var = new rz2(context);
        this.a = vy2Var;
        this.b = rz2Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0074, code lost:
    
        if (defpackage.av0.d(defpackage.sh2.c, new yads.az2((byte[]) r10, r8, r2, null), r0) == r1) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(c65 c65Var, defpackage.f02 f02Var) throws Throwable {
        xy2 xy2Var;
        if (f02Var instanceof xy2) {
            xy2Var = (xy2) f02Var;
            int i = xy2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                xy2Var.e = i - Integer.MIN_VALUE;
            } else {
                xy2Var = new xy2(this, f02Var);
            }
        } else {
            xy2Var = new xy2(this, f02Var);
        }
        Object objA = xy2Var.c;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = xy2Var.e;
        boolean z = false;
        try {
            if (i2 == 0) {
                r57.b(objA);
                if (this.b.a(c65Var.a()) != null) {
                    return Boolean.TRUE;
                }
                vy2 vy2Var = this.a;
                String strB = c65Var.b();
                xy2Var.b = c65Var;
                xy2Var.e = 1;
                objA = vy2Var.a(strB, xy2Var);
                if (objA == a32Var) {
                }
                return a32Var;
            }
            if (i2 == 1) {
                c65Var = xy2Var.b;
                r57.b(objA);
            } else {
                if (i2 != 2) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                c65Var = xy2Var.b;
                r57.b(objA);
            }
            if (this.b.a(c65Var.a()) != null) {
                z = true;
            } else {
                c65Var.a().name();
            }
            return Boolean.valueOf(z);
            cz2 cz2VarA = c65Var.a();
            xy2Var.b = c65Var;
            xy2Var.e = 2;
            defpackage.oi2 oi2Var = defpackage.qo2.a;
        } catch (Exception unused) {
        }
    }
}
