package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class m84 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ q84 b;
    public final /* synthetic */ Map c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m84(q84 q84Var, Map map, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = q84Var;
        this.c = map;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new m84(this.b, this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new m84(this.b, this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        try {
            q84 q84Var = this.b;
            Map map = this.c;
            q84Var.getClass();
            q84.a(map);
            wg wgVar = this.b.a;
            Map<Thread, StackTraceElement[]> map2 = this.c;
            if (wgVar.a.a()) {
                ((gj0) wgVar.b.getValue()).a.reportAnr(map2);
            }
        } catch (Throwable unused) {
        }
        return j59.a;
    }
}
