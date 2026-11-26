package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class od5 implements g9 {
    public final d9 a;

    public od5(d9 d9Var) {
        this.a = d9Var;
    }

    @Override // yads.g9
    public final h75 a() {
        h75 h75Var = new h75(defpackage.mx2.b, (c) null);
        h75Var.b(this.a.l, FirebaseAnalytics.Param.AD_SOURCE);
        h75Var.b(this.a.b, "ad_type_format");
        h75Var.b(this.a.e, "ad_unit_id");
        h75Var.b(this.a.d, "product_type");
        h75Var.a(this.a.o, "server_log_id");
        h75Var.b(this.a.c().a.b, "size_type");
        h75Var.b(Integer.valueOf(this.a.c().c), TJAdUnitConstants.String.WIDTH);
        h75Var.b(Integer.valueOf(this.a.c().d), TJAdUnitConstants.String.HEIGHT);
        h75Var.b = this.a.i;
        return h75Var;
    }
}
