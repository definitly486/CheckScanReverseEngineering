package yads;

import defpackage.r57;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class m23 {
    public final kg0 a;

    public m23(kg0 kg0Var) {
        this.a = kg0Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.f02 f02Var) throws Throwable {
        l23 l23Var;
        if (f02Var instanceof l23) {
            l23Var = (l23) f02Var;
            int i = l23Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                l23Var.d = i - Integer.MIN_VALUE;
            } else {
                l23Var = new l23(this, f02Var);
            }
        } else {
            l23Var = new l23(this, f02Var);
        }
        Object objD = l23Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = l23Var.d;
        if (i2 == 0) {
            r57.b(objD);
            kg0 kg0Var = this.a;
            l23Var.d = 1;
            objD = defpackage.av0.d(kg0Var.d, new jg0(kg0Var, null), l23Var);
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
        List<od0> list = ((ef0) objD).g;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        for (od0 od0Var : list) {
            arrayList.add(new sd0(od0Var.a, od0Var.b, od0Var.c));
        }
        return new fe0(arrayList);
    }
}
