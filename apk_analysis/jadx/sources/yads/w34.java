package yads;

import android.content.Context;
import defpackage.nl3;
import yads.q74;
import yads.w34;

/* JADX INFO: loaded from: classes6.dex */
public final class w34 implements p03 {
    public final d9 a;
    public final o54 b;
    public final Context c;

    public w34(Context context, d9 d9Var, o54 o54Var) {
        this.a = d9Var;
        this.b = o54Var;
        this.c = w60.a(context);
    }

    public static final na5 b(s03 s03Var, dp dpVar, m24 m24Var, w24 w24Var, q74 q74Var) {
        return new na5(s03Var, dpVar.d, m24Var, w24Var, q74Var);
    }

    @Override // yads.p03
    public final o03 a(final ea5 ea5Var, final dp dpVar) {
        final w24 w24Var = new w24();
        z44 z44Var = new z44();
        e4 e4Var = dpVar.b;
        bf5 bf5Var = dpVar.c;
        v34 v34Var = new v34(e4Var);
        l34 l34Var = new l34(e4Var, bf5Var, this.a);
        e34 e34Var = new e34(l34Var);
        y44 y44Var = new y44(new x24(this.b.b, v34Var, l34Var, new f34(e34Var, new d54(e34Var, this.a)), 16));
        final m24 m24Var = new m24(this.c, e4Var, bf5Var, this.a, dpVar.a, z44Var, l34Var, y44Var, new mt4(ea5Var, this.b));
        return new x44(dpVar.d, m24Var, z44Var, new nl3() { // from class: tfa
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return w34.b(ea5Var, dpVar, m24Var, w24Var, (q74) obj);
            }
        }, new l34(dpVar.b, dpVar.c, this.a), w24Var);
    }

    public static final com.monetization.ads.mediation.interstitial.a a(s03 s03Var, dp dpVar, m24 m24Var, w24 w24Var, q74 q74Var) {
        return new com.monetization.ads.mediation.interstitial.a(s03Var, dpVar, m24Var, w24Var, q74Var);
    }

    @Override // yads.p03
    public final o03 a(dh dhVar, dp dpVar) {
        return com.monetization.ads.mediation.appopenad.c.a(this.c, dhVar, this.a, this.b, dpVar);
    }

    @Override // yads.p03
    public final o03 a(final ip3 ip3Var, final dp dpVar) {
        final w24 w24Var = new w24();
        com.monetization.ads.mediation.interstitial.b bVar = new com.monetization.ads.mediation.interstitial.b();
        e4 e4Var = dpVar.b;
        bf5 bf5Var = dpVar.c;
        v34 v34Var = new v34(e4Var);
        l34 l34Var = new l34(e4Var, bf5Var, this.a);
        z34 z34Var = new z34(new x24(this.b.b, v34Var, l34Var, null, 24));
        final m24 m24Var = new m24(this.c, e4Var, bf5Var, this.a, dpVar.a, bVar, l34Var, z34Var, new mt4(ip3Var, this.b));
        return new com.monetization.ads.mediation.interstitial.c(dpVar, m24Var, bVar, new nl3() { // from class: ufa
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return w34.a(ip3Var, dpVar, m24Var, w24Var, (q74) obj);
            }
        }, new l34(dpVar.b, dpVar.c, this.a), w24Var);
    }
}
