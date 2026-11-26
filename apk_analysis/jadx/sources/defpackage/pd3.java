package defpackage;

import com.warefly.checkscan.component.logger.CrashlyticsException;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.util.FlowExtKt$logCrashlytics$2", f = "FlowExt.kt", l = {}, m = "invokeSuspend")
public final class pd3 extends pg8 implements dm3<id3<Object>, Throwable, e02<? super j59>, Object> {
    public /* synthetic */ Throwable l;
    public final /* synthetic */ String m;
    public final /* synthetic */ nl3<Throwable, j59> n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public pd3(String str, nl3<? super Throwable, j59> nl3Var, e02<? super pd3> e02Var) {
        super(3, e02Var);
        this.m = str;
        this.n = nl3Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(id3<Object> id3Var, Throwable th, e02<? super j59> e02Var) {
        pd3 pd3Var = new pd3(this.m, this.n, e02Var);
        pd3Var.l = th;
        return pd3Var.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        Throwable th = this.l;
        s0.d(new CrashlyticsException.Flow("Flow: ".concat(this.m + ", " + i13.a(th))));
        this.n.invoke(th);
        return j59.a;
    }
}
