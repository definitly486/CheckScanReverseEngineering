package defpackage;

import android.content.Intent;
import com.warefly.checkscan.presentation.a;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.presentation.AppLauncher$handlePushIntent$1", f = "AppLauncher.kt", l = {405}, m = "invokeSuspend")
public final class tp extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ a m;
    public final /* synthetic */ Intent n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tp(a aVar, Intent intent, e02<? super tp> e02Var) {
        super(2, e02Var);
        this.m = aVar;
        this.n = intent;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new tp(this.m, this.n, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((tp) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object objB;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            mu6 mu6Var = this.m.e;
            this.l = 1;
            String stringExtra = this.n.getStringExtra("push_id");
            Long lQ = stringExtra != null ? qa8.q(stringExtra) : null;
            if (lQ == null || (objB = mu6Var.a.b(lQ.longValue(), this)) != a32Var) {
                objB = j59.a;
            }
            if (objB == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
