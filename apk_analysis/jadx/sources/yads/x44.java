package yads;

import android.app.Activity;
import android.content.Context;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapterListener;
import defpackage.j59;
import defpackage.k57;
import defpackage.nl3;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class x44 implements o03 {
    public final b8 a;
    public final m24 b;
    public final z44 c;
    public final nl3 d;
    public final l34 e;
    public final w24 f;
    public na5 g;

    public x44(b8 b8Var, m24 m24Var, z44 z44Var, nl3 nl3Var, l34 l34Var, w24 w24Var) {
        this.a = b8Var;
        this.b = m24Var;
        this.c = z44Var;
        this.d = nl3Var;
        this.e = l34Var;
        this.f = w24Var;
    }

    @Override // yads.o03
    public final Object a(d13 d13Var, Activity activity) {
        Object aVar;
        l24 l24Var;
        ba5 ba5Var = (ba5) d13Var;
        try {
            MediatedRewardedAdapter mediatedRewardedAdapter = this.c.a;
            if (mediatedRewardedAdapter != null) {
                na5 na5Var = this.g;
                if (na5Var != null) {
                    e55 e55Var = na5Var.e;
                    defpackage.ze4 ze4Var = na5.h[0];
                    e55Var.getClass();
                    e55Var.a = new WeakReference(ba5Var);
                }
                b8 b8Var = this.a;
                if (b8Var.c()) {
                    ((i8) b8Var.i.getValue()).onAdDisplayed();
                }
                this.b.a();
                this.f.a(activity);
                try {
                    mediatedRewardedAdapter.showRewardedAd(activity);
                } catch (Exception e) {
                    this.f.a();
                    throw e;
                }
            }
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null && (l24Var = this.b.a) != null) {
            Context applicationContext = activity.getApplicationContext();
            Map mapSingletonMap = Collections.singletonMap("exception_in_adapter", thA.toString());
            mapSingletonMap.getClass();
            Map mapSingletonMap2 = Collections.singletonMap("reason", mapSingletonMap);
            mapSingletonMap2.getClass();
            this.e.a(applicationContext, e75.ADAPTER_INVALID, l24Var.b, l24Var.c.b().getNetworkName(), mapSingletonMap2);
        }
        return aVar;
    }

    @Override // yads.o03
    public final void a(Context context) {
        this.f.a();
        this.a.b();
        this.b.c.a(context);
    }

    @Override // yads.o03
    public final void a(Context context, d9 d9Var) {
        m24 m24Var = this.b;
        m24Var.c.a(context, new defpackage.tx(this, 6));
    }

    public static final MediatedRewardedAdapterListener a(x44 x44Var, q74 q74Var) {
        Object objInvoke = x44Var.d.invoke(q74Var);
        x44Var.g = (na5) objInvoke;
        return (MediatedRewardedAdapterListener) objInvoke;
    }
}
