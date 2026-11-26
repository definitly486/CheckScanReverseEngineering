package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.r57;
import defpackage.zya;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class il4 {
    public final defpackage.y22 a;
    public final sl0 b;
    public final ix2 c;
    public final le4 d;

    public il4(Context context, defpackage.y22 y22Var, e4 e4Var, t5 t5Var, bf5 bf5Var) {
        sl0 sl0Var = new sl0(context, t5Var);
        ix2 ix2Var = new ix2(context, t5Var);
        le4 le4Var = new le4(context, e4Var, t5Var, bf5Var);
        this.a = y22Var;
        this.b = sl0Var;
        this.c = ix2Var;
        this.d = le4Var;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    public final Object a(boolean z, Context context, ee4 ee4Var, jd0 jd0Var, defpackage.f02 f02Var) {
        fl4 fl4Var;
        boolean z2;
        Object obj;
        Context context2;
        jd0 jd0Var2;
        if (f02Var instanceof fl4) {
            fl4Var = (fl4) f02Var;
            int i = fl4Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                fl4Var.g = i - Integer.MIN_VALUE;
            } else {
                fl4Var = new fl4(this, f02Var);
            }
        } else {
            fl4Var = new fl4(this, f02Var);
        }
        fl4 fl4Var2 = fl4Var;
        Object obj2 = fl4Var2.e;
        Object obj3 = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = fl4Var2.g;
        if (i2 == 0) {
            r57.b(obj2);
            le4 le4Var = this.d;
            fl4Var2.c = context;
            fl4Var2.d = jd0Var;
            fl4Var2.b = z;
            fl4Var2.g = 1;
            Object objA = le4Var.a(context, ee4Var, fl4Var2);
            if (objA != obj3) {
                z2 = z;
                obj = objA;
                context2 = context;
                jd0Var2 = jd0Var;
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ee4 ee4Var2 = (ee4) fl4Var2.c;
            r57.b(obj2);
            return ee4Var2;
        }
        z2 = fl4Var2.b;
        jd0 jd0Var3 = fl4Var2.d;
        Context context3 = (Context) fl4Var2.c;
        r57.b(obj2);
        obj = obj2;
        context2 = context3;
        jd0Var2 = jd0Var3;
        ee4 ee4Var3 = (ee4) obj;
        if (ee4Var3 == null) {
            return null;
        }
        if (!z2) {
            return ee4Var3;
        }
        d9 d9Var = ee4Var3.b;
        if (d9Var.E) {
            defpackage.av0.c(this.a, null, null, new gl4(this, context2, d9Var, ee4Var3, jd0Var2, null), 3);
            return ee4Var3;
        }
        if (!d9Var.x) {
            return ee4Var3;
        }
        fl4Var2.c = ee4Var3;
        fl4Var2.d = null;
        fl4Var2.g = 2;
        return a(context2, d9Var, ee4Var3, jd0Var2, fl4Var2) == obj3 ? obj3 : ee4Var3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(Context context, d9 d9Var, ee4 ee4Var, jd0 jd0Var, defpackage.f02 f02Var) throws Throwable {
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(f02Var));
        c31Var.u();
        hl4 hl4Var = new hl4(c31Var);
        boolean zA = yt2.a(context, xt2.FIRST_VIDEO_PRELOADING_STRATEGY);
        ql4[] ql4VarArr = ql4.b;
        if ("first_video_preloading_strategy".equals(d9Var.v) && zA) {
            ix2 ix2Var = this.c;
            synchronized (ix2Var.d) {
                try {
                    List listA = ix2Var.c.a(ee4Var.a);
                    if (listA.isEmpty()) {
                        hl4Var.a();
                    } else {
                        gx2 gx2Var = new gx2(ix2Var.a, hl4Var, ix2Var.b, defpackage.qn1.O(listA, 1).iterator(), jd0Var);
                        ix2Var.a.a(s5.VIDEO_CACHING, null);
                        defpackage.b36 b36Var = (defpackage.b36) defpackage.qn1.T(listA);
                        ix2Var.b.a((String) b36Var.b, gx2Var, (String) b36Var.c);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            this.b.a(ee4Var, hl4Var, jd0Var);
        }
        Object objS = c31Var.s();
        return objS == defpackage.a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }
}
