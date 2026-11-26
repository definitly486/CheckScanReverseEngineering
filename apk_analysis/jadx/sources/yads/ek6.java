package yads;

import android.content.Context;
import android.webkit.WebSettings;
import defpackage.j59;
import defpackage.k57;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class ek6 extends pg8 implements defpackage.bm3 {
    public /* synthetic */ Object b;
    public final /* synthetic */ Context c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ek6(Context context, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = context;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        ek6 ek6Var = new ek6(this.c, e02Var);
        ek6Var.b = obj;
        return ek6Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        ek6 ek6Var = new ek6(this.c, (defpackage.e02) obj2);
        ek6Var.b = (defpackage.y22) obj;
        return ek6Var.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object aVar;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        try {
            aVar = WebSettings.getDefaultUserAgent(this.c.getApplicationContext());
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        return new k57(aVar);
    }
}
