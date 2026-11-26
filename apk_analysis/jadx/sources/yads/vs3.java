package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class vs3 {
    public final Context a;
    public final zg5 b;
    public final ct3 c;
    public final os3 d;
    public final ts3 e;

    public vs3(Context context) {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        ct3 ct3Var = new ct3(context);
        os3 os3VarA = ns3.a();
        ts3 ts3Var = new ts3(context, null, 126);
        this.a = context;
        this.b = zg5Var2;
        this.c = ct3Var;
        this.d = os3VarA;
        this.e = ts3Var;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x009b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x009c  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:52:0x00af  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b9 A[ADDED_TO_REGION, REMOVE] */
    /* JADX WARN: Code duplicated, block: B:61:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:62:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ec A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.f02 f02Var) throws Throwable {
        us3 us3Var;
        Object objZ;
        String str;
        ts3 ts3Var;
        defpackage.xp1 xp1Var;
        Object objZ2;
        fe5 fe5VarA;
        String str2;
        if (f02Var instanceof us3) {
            us3Var = (us3) f02Var;
            int i = us3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                us3Var.d = i - Integer.MIN_VALUE;
            } else {
                us3Var = new us3(this, f02Var);
            }
        } else {
            us3Var = new us3(this, f02Var);
        }
        Object objD = us3Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = us3Var.d;
        Object objD2 = null;
        if (i2 == 0) {
            r57.b(objD);
            os3 os3Var = this.d;
            us3Var.d = 1;
            defpackage.xp1 xp1Var2 = os3Var.a;
            if (xp1Var2 == null || (objZ = xp1Var2.Z(us3Var)) != a32Var) {
                objZ = j59.a;
            }
            if (objZ != a32Var) {
            }
            return a32Var;
        }
        if (i2 == 1) {
            r57.b(objD);
        } else {
            if (i2 == 2) {
                r57.b(objD);
                str = (String) objD;
                if (str != null) {
                    return str;
                }
                ts3Var = this.e;
                us3Var.d = 3;
                if (ts3Var.a(us3Var) != a32Var) {
                    os3 os3Var2 = this.d;
                    us3Var.d = 4;
                    xp1Var = os3Var2.a;
                    if (xp1Var != null) {
                        objZ2 = j59.a;
                    } else {
                        objZ2 = j59.a;
                    }
                    if (objZ2 != a32Var) {
                    }
                }
                return a32Var;
            }
            if (i2 == 3) {
                r57.b(objD);
                os3 os3Var3 = this.d;
                us3Var.d = 4;
                xp1Var = os3Var3.a;
                if (xp1Var != null || (objZ2 = xp1Var.Z(us3Var)) != a32Var) {
                    objZ2 = j59.a;
                }
                if (objZ2 != a32Var) {
                }
                return a32Var;
            }
            if (i2 != 4) {
                if (i2 == 5) {
                    r57.b(objD);
                    return objD;
                }
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objD);
        }
        us3Var.d = 5;
        fe5VarA = this.b.a(this.a);
        if (fe5VarA != null) {
            str2 = fe5VarA.y;
        } else {
            str2 = null;
        }
        if (str2 != null && str2.length() != 0) {
            ct3 ct3Var = this.c;
            ct3Var.getClass();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            objD2 = defpackage.av0.d(defpackage.sh2.c, new xs3(ct3Var, null), us3Var);
        }
        if (objD2 != a32Var) {
            return a32Var;
        }
        return objD2;
        us3Var.d = 2;
        fe5 fe5VarA2 = this.b.a(this.a);
        String str3 = fe5VarA2 != null ? fe5VarA2.y : null;
        if (str3 == null || str3.length() == 0) {
            objD = null;
        } else {
            ct3 ct3Var2 = this.c;
            ct3Var2.getClass();
            defpackage.oi2 oi2Var2 = defpackage.qo2.a;
            objD = defpackage.av0.d(defpackage.sh2.c, new xs3(ct3Var2, null), us3Var);
        }
        if (objD != a32Var) {
            str = (String) objD;
            if (str != null) {
                return str;
            }
            ts3Var = this.e;
            us3Var.d = 3;
            if (ts3Var.a(us3Var) != a32Var) {
                os3 os3Var4 = this.d;
                us3Var.d = 4;
                xp1Var = os3Var4.a;
                if (xp1Var != null) {
                    objZ2 = j59.a;
                } else {
                    objZ2 = j59.a;
                }
                if (objZ2 != a32Var) {
                    us3Var.d = 5;
                    fe5VarA = this.b.a(this.a);
                    if (fe5VarA != null) {
                        str2 = fe5VarA.y;
                    } else {
                        str2 = null;
                    }
                    if (str2 != null) {
                        ct3 ct3Var3 = this.c;
                        ct3Var3.getClass();
                        defpackage.oi2 oi2Var3 = defpackage.qo2.a;
                        objD2 = defpackage.av0.d(defpackage.sh2.c, new xs3(ct3Var3, null), us3Var);
                    }
                    if (objD2 != a32Var) {
                        return objD2;
                    }
                }
            }
        }
        return a32Var;
    }
}
