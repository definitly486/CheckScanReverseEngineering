package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class xn4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ ao4 c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ sl5 e;
    public final /* synthetic */ x54 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xn4(ao4 ao4Var, Context context, sl5 sl5Var, x54 x54Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = ao4Var;
        this.d = context;
        this.e = sl5Var;
        this.f = x54Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new xn4(this.c, this.d, this.e, this.f, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((xn4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        ao4 ao4Var = this.c;
        Context context = this.d;
        sl5 sl5Var = this.e;
        x54 x54Var = this.f;
        this.b = 1;
        Object objA = ao4.a(ao4Var, context, sl5Var, x54Var, this);
        return objA == a32Var ? a32Var : objA;
    }
}
