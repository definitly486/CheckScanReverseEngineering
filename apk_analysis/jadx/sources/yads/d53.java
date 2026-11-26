package yads;

import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class d53 {
    public final kg0 a;

    public d53(kg0 kg0Var) {
        this.a = kg0Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, defpackage.f02 f02Var) throws Throwable {
        c53 c53Var;
        if (f02Var instanceof c53) {
            c53Var = (c53) f02Var;
            int i = c53Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                c53Var.e = i - Integer.MIN_VALUE;
            } else {
                c53Var = new c53(this, f02Var);
            }
        } else {
            c53Var = new c53(this, f02Var);
        }
        Object objD = c53Var.c;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = c53Var.e;
        if (i2 == 0) {
            r57.b(objD);
            kg0 kg0Var = this.a;
            c53Var.b = str;
            c53Var.e = 1;
            objD = defpackage.av0.d(kg0Var.d, new jg0(kg0Var, null), c53Var);
            if (objD == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str = c53Var.b;
            r57.b(objD);
        }
        for (Object obj : ((ef0) objD).d.a) {
            if (defpackage.aa4.e(((le0) obj).a, str)) {
                return obj;
            }
        }
        return null;
    }
}
