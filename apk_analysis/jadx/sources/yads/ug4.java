package yads;

import androidx.core.app.NotificationCompat;
import com.tapjoy.TJAdUnitConstants;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ug4 implements h85 {
    public final u8 a;
    public final f9 b;
    public final yg4 c;
    public final ii6 d;

    public ug4() {
        gk4 gk4Var = new gk4();
        yg4 yg4Var = new yg4();
        ii6 ii6Var = new ii6();
        this.a = new u8();
        this.b = new f9(gk4Var);
        this.c = yg4Var;
        this.d = ii6Var;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007c  */
    @Override // yads.h85
    public final g75 a(z85 z85Var, int i, Object obj, hi6 hi6Var) {
        String str;
        f75 f75Var;
        d9 d9Var;
        e4 e4Var = (e4) obj;
        gk4 gk4Var = this.b.a;
        String str2 = null;
        d9 d9Var2 = z85Var != null ? (d9) z85Var.a : null;
        h75 h75VarA = gk4Var.a.a(e4Var, d9Var2, d9Var2 != null ? (vg4) d9Var2.t : null);
        sl5 sl5Var = e4Var.d.a;
        if (sl5Var != null) {
            h75VarA.b(sl5Var.b().b, "size_type");
            h75VarA.b(Integer.valueOf(sl5Var.getWidth()), TJAdUnitConstants.String.WIDTH);
            h75VarA.b(Integer.valueOf(sl5Var.getHeight()), TJAdUnitConstants.String.HEIGHT);
            so soVarA = sl5Var.a();
            h75VarA.a(soVarA != null ? soVarA.b : null, "banner_size_calculation_type");
        }
        h75VarA.b(Integer.valueOf(i), i == -1 ? "error_code" : "code");
        if (z85Var == null || (d9Var = (d9) z85Var.a) == null) {
            str = "empty";
        } else if (d9Var.q != null) {
            str = "mediation";
        } else if (d9Var.t != null) {
            str = "ad";
        } else {
            str = "empty";
        }
        h75VarA.b(str, "response_type");
        if (z85Var != null) {
            d9 d9Var3 = (d9) z85Var.a;
            h75VarA.b = d9Var3 != null ? d9Var3.i : null;
        }
        d9 d9Var4 = z85Var != null ? (d9) z85Var.a : null;
        if (204 == i) {
            f75Var = f75.NO_ADS;
        } else if (d9Var4 == null || i != 200) {
            f75Var = f75.ERROR;
        } else {
            this.c.getClass();
            vg4 vg4Var = (vg4) d9Var4.t;
            if (vg4Var != null) {
                f75Var = (f75) vg4Var.e.get(NotificationCompat.CATEGORY_STATUS);
            } else {
                f75Var = d9Var4.q == null ? f75.ERROR : null;
            }
        }
        if (f75Var != null) {
            h75VarA.b(f75Var.b, NotificationCompat.CATEGORY_STATUS);
        }
        if (hi6Var != null) {
            this.d.getClass();
            if (hi6Var instanceof i4) {
                str2 = p4.a(e4Var, ((i4) hi6Var).c).b;
            }
        }
        h75VarA.a(str2, "error_description");
        e75 e75Var = e75.AD_LOADING_RESULT;
        return new g75("ad_response", defpackage.n05.n(h75VarA.a), h75VarA.b);
    }

    @Override // yads.h85
    public final g75 a(Object obj) {
        e4 e4Var = (e4) obj;
        h75 h75Var = new h75(new HashMap(), 2);
        n8 n8Var = e4Var.e;
        if (n8Var != null) {
            h75Var = i75.a(h75Var, this.a.a(n8Var));
        }
        h75Var.b(e4Var.c.a, "ad_unit_id");
        h75Var.b(e4Var.a.b, "ad_type");
        sl5 sl5Var = e4Var.d.a;
        if (sl5Var != null) {
            h75Var.b(sl5Var.b().b, "size_type");
            h75Var.b(Integer.valueOf(sl5Var.getWidth()), TJAdUnitConstants.String.WIDTH);
            h75Var.b(Integer.valueOf(sl5Var.getHeight()), TJAdUnitConstants.String.HEIGHT);
            so soVarA = sl5Var.a();
            h75Var.a(soVarA != null ? soVarA.b : null, "banner_size_calculation_type");
        }
        h75Var.b(Boolean.valueOf(e4Var.g == s46.PASSBACK), "is_passback");
        h75Var.b(Boolean.valueOf(e4Var.m), "image_loading_automatically");
        List list = e4Var.b.c;
        if (!list.isEmpty()) {
            h75Var.b(list, "image_sizes");
        }
        e75 e75Var = e75.AD_LOADING_RESULT;
        return new g75("ad_request", defpackage.n05.n(h75Var.a), h75Var.b);
    }
}
