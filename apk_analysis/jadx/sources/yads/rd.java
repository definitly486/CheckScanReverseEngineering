package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class rd extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ Context c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rd(Context context, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = context;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new rd(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new rd(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        pd pdVar;
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
        Context contextA = w60.a(this.c);
        pd pdVar2 = pd.g;
        if (pdVar2 == null) {
            synchronized (pd.f) {
                pdVar = pd.g;
                if (pdVar == null) {
                    pdVar = new pd(contextA);
                    pd.g = pdVar;
                }
            }
            pdVar2 = pdVar;
        }
        this.b = 1;
        Object objA = pdVar2.a(this);
        return objA == a32Var ? a32Var : objA;
    }
}
