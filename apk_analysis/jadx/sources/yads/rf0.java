package yads;

import android.content.Context;
import com.yandex.mobile.ads.R$attr;
import com.yandex.mobile.ads.R$string;
import defpackage.ta8;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class rf0 {
    public final Context a;
    public final l54 b;
    public final q64 c;

    public rf0(Context context, l54 l54Var, q64 q64Var) {
        this.a = context;
        this.b = l54Var;
        this.c = q64Var;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0065  */
    /* JADX WARN: Code duplicated, block: B:16:0x0068  */
    /* JADX WARN: Code duplicated, block: B:18:0x006b  */
    /* JADX WARN: Code duplicated, block: B:21:0x0078  */
    /* JADX WARN: Code duplicated, block: B:24:0x0098  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d2  */
    /* JADX WARN: Instruction removed from duplicated block: B:21:0x0078, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:24:0x0098, please report this as an issue */
    public final void a(List list, le0 le0Var) {
        rg0 rg0Var;
        rg0 rg0Var2;
        ke0 ke0VarA;
        ie0 ie0Var;
        StringBuilder sb;
        String strB;
        int i;
        if (!(le0Var.a() instanceof je0)) {
            String strF = le0Var.f();
            if (strF == null || ta8.M(strF)) {
                rg0Var = new rg0(this.a.getString(R$string.debug_panel_sdk_undefined), 0, null, 0, 14);
            } else {
                String lowerCase = le0Var.f().toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                rg0Var2 = new rg0("SDK ".concat(lowerCase), 0, null, 0, 14);
            }
            ke0VarA = le0Var.a();
            if (ke0VarA instanceof ie0) {
                ie0Var = (ie0) ke0VarA;
            } else {
                ie0Var = null;
            }
            o64 o64Var = ie0Var != null ? o64.INVALID_MEDIATION_ADAPTER_VERSION : null;
            sb = new StringBuilder();
            if (le0Var.b() != null) {
                sb.append("Adapter " + le0Var.b() + "  ");
            }
            if (le0Var.c() != null) {
                sb.append("Latest " + le0Var.c());
            }
            String string = sb.toString();
            strB = le0Var.b();
            if (strB != null || ta8.M(strB) || this.b.a(le0Var.b(), le0Var.c())) {
                i = R$attr.debug_panel_label_secondary;
            } else {
                i = R$attr.debug_panel_color_orange;
            }
            list.add(new rh0(le0Var.e(), le0Var.d(), rg0Var, new af0(string, i), this.c.a(o64Var), null, null, null, null, null, le0Var.f(), 992));
        }
        rg0Var2 = new rg0(this.a.getString(R$string.debug_panel_not_integrated), 0, null, 0, 14);
        rg0Var = rg0Var2;
        ke0VarA = le0Var.a();
        if (ke0VarA instanceof ie0) {
            ie0Var = (ie0) ke0VarA;
        } else {
            ie0Var = null;
        }
        if (ie0Var != null) {
        }
        sb = new StringBuilder();
        if (le0Var.b() != null) {
            sb.append("Adapter " + le0Var.b() + "  ");
        }
        if (le0Var.c() != null) {
            sb.append("Latest " + le0Var.c());
        }
        String string2 = sb.toString();
        strB = le0Var.b();
        if (strB != null) {
            i = R$attr.debug_panel_label_secondary;
        } else {
            i = R$attr.debug_panel_label_secondary;
        }
        list.add(new rh0(le0Var.e(), le0Var.d(), rg0Var, new af0(string2, i), this.c.a(o64Var), null, null, null, null, null, le0Var.f(), 992));
    }

    public final rg0 a(Boolean bool) {
        if (defpackage.aa4.e(bool, Boolean.TRUE)) {
            return new rg0(this.a.getString(R$string.debug_panel_yes), 0, null, 0, 14);
        }
        if (defpackage.aa4.e(bool, Boolean.FALSE)) {
            return new rg0(this.a.getString(R$string.debug_panel_no), 0, null, 0, 14);
        }
        if (bool == null) {
            return new rg0(this.a.getString(R$string.debug_panel_no_value_set), 0, null, 0, 14);
        }
        defpackage.me0.e();
        return null;
    }
}
