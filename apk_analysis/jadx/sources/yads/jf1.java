package yads;

import android.view.View;
import com.yandex.mobile.ads.R$dimen;

/* JADX INFO: loaded from: classes6.dex */
public final class jf1 {
    public final bt0 a;

    public jf1(bt0 bt0Var) {
        this.a = bt0Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(tt ttVar, f51 f51Var, View view) {
        if (view instanceof s51) {
            ((s51) view).setBorder(ttVar, f51Var, view);
        } else {
            view.setElevation((f51Var != null && !a(f51Var) && ((Boolean) f51Var.c.a(ttVar.b)).booleanValue() && f51Var.d == null) ? view.getResources().getDimension(R$dimen.monetization_ads_divkit_div_shadow_elevation) : 0.0f);
        }
    }

    public static boolean a(f51 f51Var) {
        if (f51Var == null) {
            return true;
        }
        return f51Var.a == null && f51Var.b == null && defpackage.aa4.e(f51Var.c, new xr2(Boolean.FALSE)) && f51Var.d == null && f51Var.e == null;
    }
}
