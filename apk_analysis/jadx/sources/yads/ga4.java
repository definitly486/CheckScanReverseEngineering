package yads;

import android.content.Context;
import android.os.Build;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class ga4 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ bf5 b;
    public final /* synthetic */ Context c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ga4(bf5 bf5Var, Context context, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = bf5Var;
        this.c = context;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ga4(this.b, this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new ga4(this.b, this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        Context context = ((do6) this.b).a;
        q84 q84VarA = mw.a(context, context);
        g46.a(this.c, q84VarA);
        nf.a(this.c, q84VarA);
        if (Build.VERSION.SDK_INT >= 30) {
            AtomicBoolean atomicBoolean = zh.a;
            zh.a(this.c, q84VarA);
        }
        return j59.a;
    }
}
