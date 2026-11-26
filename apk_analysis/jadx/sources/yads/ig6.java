package yads;

import android.view.View;
import com.yandex.mobile.ads.R$layout;
import defpackage.gn6;
import defpackage.j59;
import yads.ig6;
import yads.sh0;

/* JADX INFO: loaded from: classes6.dex */
public final class ig6 {
    public final an3 a;
    public final tf0 b;

    public ig6(an3 an3Var, tf0 tf0Var) {
        this.a = an3Var;
        this.b = tf0Var;
    }

    public static final j59 b(ig6 ig6Var, String str) {
        ig6Var.a.invoke(new tg0(str));
        return j59.a;
    }

    public final wh0 a(View view, int i) {
        if (i == R$layout.debug_panel_item_action_button) {
            return new v0(new gn6(7), view);
        }
        if (i == R$layout.debug_panel_item_switch) {
            return new zt5(view, new defpackage.bm3() { // from class: zy9
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                    return ig6.a(this.b, (sh0) obj, zBooleanValue);
                }
            });
        }
        if (i == R$layout.deubg_panel_item_header) {
            return new w83(view);
        }
        if (i == R$layout.deubg_panel_item_key_value) {
            return new er3(view);
        }
        if (i == R$layout.debug_panel_item_mediation_adapter) {
            return new x64(view, this.b, new defpackage.by0(this, 2), new defpackage.gj5(this, 2));
        }
        if (i == R$layout.debug_panel_item_ad_units) {
            return new wa(view, new defpackage.sg0(this, 3));
        }
        return i == R$layout.debug_panel_item_ad_unit ? new ua(new defpackage.v46(this, 2), view) : new kj2(view);
    }

    public static final j59 a(mh0 mh0Var) {
        int i = hg6.a[mh0Var.ordinal()];
        return j59.a;
    }

    public static final j59 a(ig6 ig6Var, sh0 sh0Var, boolean z) {
        if (hg6.b[sh0Var.ordinal()] == 1) {
            ig6Var.a.invoke(new wg0(z));
        }
        return j59.a;
    }

    public static final j59 a(ig6 ig6Var, rh0 rh0Var) {
        ig6Var.a.invoke(new xg0(rh0Var));
        return j59.a;
    }

    public static final j59 a(ig6 ig6Var, String str) {
        ig6Var.a.invoke(new zg0(str));
        return j59.a;
    }

    public static final j59 a(ig6 ig6Var) {
        ig6Var.a.invoke(ug0.a);
        return j59.a;
    }
}
