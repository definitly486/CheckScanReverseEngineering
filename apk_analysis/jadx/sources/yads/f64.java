package yads;

import android.content.Context;
import com.monetization.ads.mediation.base.MediatedBidderTokenLoader;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.zya;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class f64 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ g64 c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ HashMap e;
    public final /* synthetic */ MediatedBidderTokenLoader f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f64(g64 g64Var, Context context, HashMap map, MediatedBidderTokenLoader mediatedBidderTokenLoader, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = g64Var;
        this.d = context;
        this.e = map;
        this.f = mediatedBidderTokenLoader;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new f64(this.c, this.d, this.e, this.f, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((f64) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
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
        g64 g64Var = this.c;
        Context context = this.d;
        HashMap map = this.e;
        MediatedBidderTokenLoader mediatedBidderTokenLoader = this.f;
        this.b = 1;
        g64Var.getClass();
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(this));
        c31Var.u();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        try {
            mediatedBidderTokenLoader.loadBidderToken(context, map, new d64(atomicBoolean, c31Var));
        } catch (Throwable th) {
            a64 a64Var = new a64(th.toString());
            if (atomicBoolean.compareAndSet(false, true)) {
                c31Var.resumeWith(a64Var);
            }
        }
        Object objS = c31Var.s();
        defpackage.a32 a32Var2 = defpackage.a32.COROUTINE_SUSPENDED;
        return objS == a32Var ? a32Var : objS;
    }
}
