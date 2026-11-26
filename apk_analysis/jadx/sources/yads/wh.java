package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wh extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ xh b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wh(xh xhVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = xhVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new wh(this.b, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new wh(this.b, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        try {
            long jB = ((av3) this.b.e.a).b("ExitInfoAnrLastReportedTimestamp");
            xh xhVar = this.b;
            uh uhVar = xhVar.c;
            mf mfVar = xhVar.a;
            List listA = uhVar.a(mfVar.b, mfVar.c, jB);
            if (listA.isEmpty()) {
                return j59.a;
            }
            gf gfVar = this.b.g;
            ArrayList arrayListA = gf.a(listA);
            if (arrayListA.isEmpty()) {
                return j59.a;
            }
            ArrayList arrayListA2 = this.b.g.a(arrayListA);
            if (arrayListA2.isEmpty()) {
                return j59.a;
            }
            this.b.d.a(arrayListA2);
            xh.a(this.b, arrayListA2);
            return j59.a;
        } finally {
            this.b.h.set(false);
        }
    }
}
