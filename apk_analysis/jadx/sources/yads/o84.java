package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class o84 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ q84 b;
    public final /* synthetic */ g75 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o84(q84 q84Var, g75 g75Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = q84Var;
        this.c = g75Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new o84(this.b, this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new o84(this.b, this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        try {
            p76.a((ho6) this.b.d.getValue(), this.c);
            q84 q84Var = this.b;
            g75 g75Var = this.c;
            String str = g75Var.a;
            Map map = g75Var.b;
            q84Var.getClass();
            q84.a(str, map);
            wg wgVar = this.b.a;
            g75 g75Var2 = this.c;
            if (wgVar.a.a()) {
                gj0 gj0Var = (gj0) wgVar.b.getValue();
                gj0Var.a.reportEvent(g75Var2.a, g75Var2.b);
            }
        } catch (Throwable unused) {
        }
        return j59.a;
    }
}
