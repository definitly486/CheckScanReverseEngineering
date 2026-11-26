package yads;

import android.content.Context;
import defpackage.r57;
import defpackage.zya;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wm4 {
    public final na6 a;
    public final sc6 b;

    public wm4(Context context, e4 e4Var, t5 t5Var, bf5 bf5Var) {
        na6 na6Var = new na6(context, new pl4());
        sc6 sc6Var = new sc6(context, e4Var, bf5Var, new zk4(e4Var), new hr4(), t5Var);
        this.a = na6Var;
        this.b = sc6Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(wm4 wm4Var, List list, defpackage.f02 f02Var) throws Throwable {
        tm4 tm4Var;
        wm4Var.getClass();
        if (f02Var instanceof tm4) {
            tm4Var = (tm4) f02Var;
            int i = tm4Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                tm4Var.d = i - Integer.MIN_VALUE;
            } else {
                tm4Var = new tm4(wm4Var, f02Var);
            }
        } else {
            tm4Var = new tm4(wm4Var, f02Var);
        }
        Object objS = tm4Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = tm4Var.d;
        if (i2 == 0) {
            r57.b(objS);
            sc6 sc6Var = wm4Var.b;
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((ja6) it.next()).b);
            }
            tm4Var.d = 1;
            sc6Var.getClass();
            defpackage.c31 c31Var = new defpackage.c31(1, zya.b(tm4Var));
            c31Var.u();
            rc6 rc6Var = new rc6(c31Var);
            nc6 nc6Var = sc6Var.a;
            Object obj = new Object();
            nc6Var.c.getClass();
            kc6 kc6VarA = lc6.a(arrayList);
            nc6Var.d.addAll(kc6VarA.a);
            nc6Var.b.a(nc6Var.a, kc6VarA.b, new mc6(nc6Var, rc6Var, obj), obj);
            objS = c31Var.s();
            defpackage.a32 a32Var2 = defpackage.a32.COROUTINE_SUSPENDED;
            if (objS == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objS);
        }
        qc6 qc6Var = (qc6) objS;
        if (qc6Var instanceof oc6) {
            return defpackage.kx2.b;
        }
        if (qc6Var instanceof pc6) {
            return wm4Var.a.a(((pc6) qc6Var).a);
        }
        defpackage.me0.e();
        return null;
    }
}
