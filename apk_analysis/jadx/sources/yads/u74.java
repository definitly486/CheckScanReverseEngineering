package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class u74 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ w74 c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ nl3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u74(w74 w74Var, Context context, nl3 nl3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = w74Var;
        this.d = context;
        this.e = nl3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new u74(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((u74) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            w74 w74Var = this.c;
            Context context = this.d;
            nl3 nl3Var = this.e;
            this.b = 1;
            if (w74.a(w74Var, context, nl3Var, this) == a32Var) {
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
