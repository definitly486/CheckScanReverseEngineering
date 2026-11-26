package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class vj4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ xj4 c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ ee4 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vj4(xj4 xj4Var, Context context, ee4 ee4Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = xj4Var;
        this.d = context;
        this.e = ee4Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new vj4(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((vj4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            om4 om4Var = this.c.b;
            Context context = this.d;
            ee4 ee4Var = this.e;
            this.b = 1;
            if (om4Var.a(context, ee4Var, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
