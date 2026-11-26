package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class qv3 {
    public final ov3 a;
    public final bu4 b;
    public pv3 c;

    public qv3(Context context, String str) {
        ov3 ov3Var = new ov3(context, str);
        bu4 bu4Var = new bu4(context);
        this.a = ov3Var;
        this.b = bu4Var;
        this.c = null;
    }

    public final pv3 a() {
        Class<?> cls;
        Object objA;
        Object objA2;
        ov3 ov3Var = this.a;
        g55 g55Var = ov3Var.b;
        try {
            cls = Class.forName(ov3Var.a);
        } catch (Throwable unused) {
            cls = null;
        }
        d23 d23Var = (cls == null || (objA2 = g55.a(cls, "getFusedLocationProviderClient", ov3Var.c)) == null) ? null : new d23(objA2);
        if (d23Var == null) {
            return null;
        }
        boolean zA = this.b.a("android.permission.ACCESS_COARSE_LOCATION");
        boolean zA2 = this.b.a("android.permission.ACCESS_FINE_LOCATION");
        if ((zA || zA2) && (objA = f55.a(d23Var.a, "getLastLocation", new Object[0])) != null) {
            return new pv3(objA);
        }
        return null;
    }
}
