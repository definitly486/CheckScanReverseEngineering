package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class n84 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ q84 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ Throwable d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n84(q84 q84Var, String str, Throwable th, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = q84Var;
        this.c = str;
        this.d = th;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new n84(this.b, this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((n84) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        try {
            q84 q84Var = this.b;
            String str = this.c;
            Throwable th = this.d;
            q84Var.getClass();
            q84.a(str, th);
            this.b.a.reportError(this.c, this.d);
        } catch (Throwable unused) {
        }
        return j59.a;
    }
}
