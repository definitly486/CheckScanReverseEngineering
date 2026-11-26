package yads;

import android.content.Context;
import defpackage.r57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class le4 {
    public final zg5 a;
    public final wm4 b;
    public final rm4 c;

    public le4(Context context, e4 e4Var, t5 t5Var, bf5 bf5Var) {
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
        wm4 wm4Var = new wm4(context, e4Var, t5Var, bf5Var);
        rm4 rm4Var = new rm4();
        this.a = zg5Var2;
        this.b = wm4Var;
        this.c = rm4Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(le4 le4Var, ak akVar, defpackage.f02 f02Var) throws Throwable {
        he4 he4Var;
        ak akVar2;
        if (f02Var instanceof he4) {
            he4Var = (he4) f02Var;
            int i = he4Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                he4Var.e = i - Integer.MIN_VALUE;
            } else {
                he4Var = new he4(le4Var, f02Var);
            }
        } else {
            he4Var = new he4(le4Var, f02Var);
        }
        Object obj = he4Var.c;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = he4Var.e;
        if (i2 == 0) {
            r57.b(obj);
            ak akVar3 = akVar.c instanceof v14 ? akVar : null;
            if (akVar3 == null) {
                return akVar;
            }
            wm4 wm4Var = le4Var.b;
            r96 r96Var = ((v14) akVar3.c).b;
            he4Var.b = akVar3;
            he4Var.e = 1;
            wm4Var.getClass();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            Object objD = defpackage.av0.d(defpackage.sh2.c, new sm4(r96Var, wm4Var, null), he4Var);
            if (objD == a32Var) {
                return a32Var;
            }
            ak akVar4 = akVar3;
            obj = objD;
            akVar2 = akVar4;
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            akVar2 = he4Var.b;
            r57.b(obj);
        }
        r96 r96Var2 = (r96) obj;
        if (r96Var2 == null) {
            v14 v14Var = (v14) akVar2.c;
            if (v14Var.c == null && v14Var.a == null) {
                return null;
            }
        }
        v14 v14Var2 = (v14) akVar2.c;
        return new ak(akVar2.a, akVar2.b, new v14(v14Var2.a, r96Var2, v14Var2.c), akVar2.d, akVar2.e, akVar2.f, akVar2.g);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object a(Context context, ee4 ee4Var, defpackage.f02 f02Var) {
        ie4 ie4Var;
        ee4 ee4Var2;
        if (f02Var instanceof ie4) {
            ie4Var = (ie4) f02Var;
            int i = ie4Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                ie4Var.e = i - Integer.MIN_VALUE;
            } else {
                ie4Var = new ie4(this, f02Var);
            }
        } else {
            ie4Var = new ie4(this, f02Var);
        }
        Object objD = ie4Var.c;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = ie4Var.e;
        if (i2 == 0) {
            r57.b(objD);
            fe5 fe5VarA = this.a.a(context);
            if (fe5VarA == null || !fe5VarA.E0) {
                return ee4Var;
            }
            List list = ee4Var.a.a;
            ie4Var.b = ee4Var;
            ie4Var.e = 1;
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            objD = defpackage.av0.d(defpackage.sh2.c, new ke4(list, this, null), ie4Var);
            if (objD == a32Var) {
                return a32Var;
            }
            ee4Var2 = ee4Var;
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ee4Var2 = ie4Var.b;
            r57.b(objD);
        }
        List list2 = (List) objD;
        if (list2 == null) {
            return null;
        }
        vg4 vg4Var = ee4Var2.a;
        vg4 vg4Var2 = new vg4(list2, vg4Var.b, vg4Var.c, vg4Var.d, vg4Var.e, vg4Var.f, vg4Var.g, vg4Var.h, vg4Var.i, vg4Var.j);
        return new ee4(ee4Var2.c, ee4Var2.b, vg4Var2);
    }
}
