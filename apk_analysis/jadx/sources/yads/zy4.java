package yads;

import android.app.Activity;
import android.content.Context;
import com.monetization.ads.mediation.base.prefetch.MediatedAdapterPrefetcher;
import com.tapjoy.TJAdUnitConstants;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ta8;
import defpackage.zya;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class zy4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ fz4 c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ sl5 e;
    public final /* synthetic */ x54 f;
    public final /* synthetic */ MediatedAdapterPrefetcher g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zy4(fz4 fz4Var, Context context, sl5 sl5Var, x54 x54Var, MediatedAdapterPrefetcher mediatedAdapterPrefetcher, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = fz4Var;
        this.d = context;
        this.e = sl5Var;
        this.f = x54Var;
        this.g = mediatedAdapterPrefetcher;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new zy4(this.c, this.d, this.e, this.f, this.g, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((zy4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0084  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        String str;
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
        uy4 uy4Var = this.c.d;
        Context context = this.d;
        sl5 sl5Var = this.e;
        x54 x54Var = this.f;
        MediatedAdapterPrefetcher mediatedAdapterPrefetcher = this.g;
        this.b = 1;
        uy4Var.getClass();
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(this));
        c31Var.u();
        try {
            Activity activityA = s1.a();
            if (activityA != null) {
                context = activityA;
            }
            HashMap map = new HashMap(x54Var.c);
            if (sl5Var != null) {
                map.put(TJAdUnitConstants.String.WIDTH, String.valueOf(sl5Var.getWidth()));
                map.put(TJAdUnitConstants.String.HEIGHT, String.valueOf(sl5Var.getHeight()));
            }
            mediatedAdapterPrefetcher.prefetchAd(context, map, new ty4(uy4Var, x54Var, c31Var));
        } catch (Exception e) {
            if (c31Var.t() instanceof defpackage.no5) {
                mediatedAdapterPrefetcher.onInvalidate();
                String message = e.getMessage();
                if (message == null) {
                    str = "Prefetch failed with exception";
                } else {
                    str = ta8.M(message) ? null : message;
                    if (str == null) {
                        str = "Prefetch failed with exception";
                    }
                }
                c31Var.resumeWith(ry4.a(x54Var.b, str, new Integer(1004)));
            }
        }
        Object objS = c31Var.s();
        defpackage.a32 a32Var2 = defpackage.a32.COROUTINE_SUSPENDED;
        return objS == a32Var ? a32Var : objS;
    }
}
