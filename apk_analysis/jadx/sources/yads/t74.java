package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class t74 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ w74 c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ l24 e;
    public final /* synthetic */ nl3 f;
    public final /* synthetic */ x54 g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t74(w74 w74Var, Context context, l24 l24Var, nl3 nl3Var, x54 x54Var, String str, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = w74Var;
        this.d = context;
        this.e = l24Var;
        this.f = nl3Var;
        this.g = x54Var;
        this.h = str;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new t74(this.c, this.d, this.e, this.f, this.g, this.h, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((t74) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
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
        w74 w74Var = this.c;
        Context context = this.d;
        l24 l24Var = this.e;
        nl3 nl3Var = this.f;
        x54 x54Var = this.g;
        String str = this.h;
        this.b = 1;
        Object objA = w74Var.a(context, l24Var, nl3Var, x54Var, str, this);
        return objA == a32Var ? a32Var : objA;
    }
}
