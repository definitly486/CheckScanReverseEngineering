package yads;

import android.content.Context;
import defpackage.jd8;
import defpackage.r57;
import defpackage.rm9;
import defpackage.yv8;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class pd {
    public static final Object f = new Object();
    public static volatile pd g;
    public final yd a;
    public final ld b;
    public final qd c;
    public final zi0 d;
    public final defpackage.mk2 e;

    public pd(Context context) {
        i90 i90Var = new i90();
        jd8 jd8VarB = rm9.b();
        defpackage.oi2 oi2Var = defpackage.qo2.a;
        defpackage.kz1 kz1VarA = defpackage.z22.a(o22.a.C0306a.d(jd8VarB, defpackage.sh2.c).plus(i90Var));
        be beVar = new be(context);
        yd ydVar = new yd(context);
        ld ldVar = new ld(context);
        qd qdVar = new qd();
        this.a = ydVar;
        this.b = ldVar;
        this.c = qdVar;
        fe5 fe5VarA = beVar.a.a(beVar.b);
        Long l = fe5VarA != null ? fe5VarA.U0 : null;
        this.d = new zi0((l == null || l.longValue() <= 0) ? 1000L : l.longValue(), TimeUnit.MILLISECONDS);
        this.e = defpackage.av0.a(kz1VarA, null, defpackage.c32.LAZY, new md(this, null), 1);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.f02 f02Var) {
        nd ndVar;
        kd kdVar;
        id idVar;
        id idVar2;
        String str;
        String strC;
        String strC2;
        String strC3;
        if (f02Var instanceof nd) {
            ndVar = (nd) f02Var;
            int i = ndVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                ndVar.d = i - Integer.MIN_VALUE;
            } else {
                ndVar = new nd(this, f02Var);
            }
        } else {
            ndVar = new nd(this, f02Var);
        }
        Object objC = ndVar.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = ndVar.d;
        if (i2 == 0) {
            r57.b(objC);
            long jLongValue = ((Number) this.d.c.getValue()).longValue();
            od odVar = new od(this, null);
            ndVar.d = 1;
            objC = yv8.c(jLongValue, odVar, ndVar);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        kd kdVar2 = (kd) objC;
        ld ldVar = this.b;
        fe5 fe5VarA = ldVar.b.a(ldVar.c);
        boolean z = false;
        if (fe5VarA == null || !fe5VarA.T0) {
            kdVar = null;
        } else {
            gd gdVar = ldVar.a;
            gdVar.getClass();
            synchronized (gd.b) {
                strC = ((av3) gdVar.a).c("google_advertising_id_key");
                strC2 = ((av3) gdVar.a).c("huawei_advertising_id_key");
                strC3 = ((av3) gdVar.a).c("app_set_advertising_id_key");
            }
            kdVar = new kd(strC != null ? new id(strC, false) : null, strC2 != null ? new id(strC2, false) : null, false, strC3);
        }
        this.c.getClass();
        if (kdVar2 == null || (idVar = kdVar2.a) == null) {
            idVar = kdVar != null ? kdVar.a : null;
        }
        if (kdVar2 == null || (idVar2 = kdVar2.b) == null) {
            idVar2 = kdVar != null ? kdVar.b : null;
        }
        if (kdVar2 != null) {
            z = kdVar2.c;
        } else if (kdVar != null) {
            z = kdVar.c;
        }
        if (kdVar2 == null || (str = kdVar2.d) == null) {
            str = kdVar != null ? kdVar.d : null;
        }
        if (idVar == null && idVar2 == null && str == null) {
            return null;
        }
        return new kd(idVar, idVar2, z, str);
    }
}
