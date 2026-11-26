package yads;

import android.content.Context;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class xg6 {
    public final u8 a;
    public final q84 b;
    public final cr4 c;

    public xg6(Context context, bf5 bf5Var) {
        u8 u8Var = new u8();
        bf5Var.getClass();
        q84 q84VarA = re.a(context, new lm6(((do6) bf5Var).a));
        cr4 cr4Var = new cr4();
        this.a = u8Var;
        this.b = q84VarA;
        this.c = cr4Var;
    }

    public final void a(vg6 vg6Var, e4 e4Var) {
        String str;
        rl5 rl5VarB;
        n8 n8Var = e4Var.e;
        h75 h75VarA = n8Var != null ? this.a.a(n8Var) : new h75((Map) null, 3);
        n8 n8Var2 = e4Var.e;
        if (n8Var2 != null) {
            i75.a(h75VarA, this.a.a(n8Var2));
        }
        h75VarA.b(e4Var.c.a, "ad_unit_id");
        cr4 cr4Var = this.c;
        int i = e4Var.n;
        cr4Var.getClass();
        if (i != 1) {
            str = i != 2 ? StringUtils.UNDEFINED : TJAdUnitConstants.String.LANDSCAPE;
        } else {
            str = TJAdUnitConstants.String.PORTRAIT;
        }
        h75VarA.b(str, TJAdUnitConstants.String.ORIENTATION);
        sl5 sl5Var = e4Var.d.a;
        h75VarA.a((sl5Var == null || (rl5VarB = sl5Var.b()) == null) ? null : rl5VarB.b, "size_type");
        sl5 sl5Var2 = e4Var.d.a;
        h75VarA.a(sl5Var2 != null ? Integer.valueOf(sl5Var2.getWidth()) : null, "size_info_width");
        sl5 sl5Var3 = e4Var.d.a;
        h75VarA.a(sl5Var3 != null ? Integer.valueOf(sl5Var3.getHeight()) : null, "size_info_height");
        h75VarA.b(Integer.valueOf(vg6Var.a.a), "view_width");
        h75VarA.b(Integer.valueOf(vg6Var.a.b), "view_height");
        h75VarA.a(vg6Var.b.a, "layout_width");
        h75VarA.a(vg6Var.b.b, "layout_height");
        h75VarA.b(Integer.valueOf(vg6Var.c.a.a), "measured_width");
        String strName = vg6Var.c.a.b.name();
        Locale locale = Locale.ROOT;
        String lowerCase = strName.toLowerCase(locale);
        lowerCase.getClass();
        h75VarA.b(lowerCase, "measured_width_mode");
        h75VarA.b(Integer.valueOf(vg6Var.c.b.a), "measured_height");
        String lowerCase2 = vg6Var.c.b.b.name().toLowerCase(locale);
        lowerCase2.getClass();
        h75VarA.b(lowerCase2, "measured_height_mode");
        e75 e75Var = e75.AD_LOADING_RESULT;
        this.b.a(new g75("ad_view_size_info", defpackage.n05.n(h75VarA.a), h75VarA.b));
    }
}
