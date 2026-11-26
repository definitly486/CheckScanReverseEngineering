package yads;

import android.content.Context;
import com.monetization.ads.mediation.base.MediatedBidderTokenLoader;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class wn4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ ao4 c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ sl5 e;
    public final /* synthetic */ x54 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wn4(ao4 ao4Var, Context context, sl5 sl5Var, x54 x54Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = ao4Var;
        this.d = context;
        this.e = sl5Var;
        this.f = x54Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new wn4(this.c, this.d, this.e, this.f, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((wn4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        Object objA = null;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        g64 g64Var = this.c.a;
        Context context = this.d;
        sl5 sl5Var = this.e;
        x54 x54Var = this.f;
        this.b = 1;
        com.monetization.ads.mediation.base.a aVarA = g64Var.a.a(context, x54Var, com.monetization.ads.mediation.base.a.class);
        if (aVarA != 0) {
            g64Var.d.getClass();
            o24 o24Var = new o24(aVarA);
            if (aVarA instanceof MediatedBidderTokenLoader) {
                objA = g64Var.a(context, sl5Var, x54Var, o24Var, (MediatedBidderTokenLoader) aVarA, this);
            } else {
                g64Var.a(context, x54Var, o24Var, "Can't create bidder token loader.", null);
            }
        }
        return objA == a32Var ? a32Var : objA;
    }
}
