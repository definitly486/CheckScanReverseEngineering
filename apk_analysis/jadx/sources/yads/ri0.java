package yads;

import android.content.Context;
import android.view.View;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class ri0 implements w0 {
    public final wi0 a;

    public ri0(wi0 wi0Var) {
        this.a = wi0Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(View view, pi0 pi0Var, defpackage.f02 f02Var) {
        qi0 qi0Var;
        if (f02Var instanceof qi0) {
            qi0Var = (qi0) f02Var;
            int i = qi0Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                qi0Var.d = i - Integer.MIN_VALUE;
            } else {
                qi0Var = new qi0(this, f02Var);
            }
        } else {
            qi0Var = new qi0(this, f02Var);
        }
        Object objA = qi0Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = qi0Var.d;
        if (i2 == 0) {
            r57.b(objA);
            Context context = view.getContext();
            wi0 wi0Var = this.a;
            qi0Var.d = 1;
            objA = wi0Var.a(context, pi0Var, qi0Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        return new m83(true, (n83) objA);
    }

    @Override // yads.w0
    public final /* bridge */ /* synthetic */ Object a(View view, u0 u0Var, c1 c1Var) {
        return a(view, (pi0) u0Var, (defpackage.f02) c1Var);
    }
}
