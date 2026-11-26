package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class e95 {
    public final g95 a;
    public final yg4 b;

    public e95() {
        g95 g95Var = new g95();
        yg4 yg4Var = new yg4();
        this.a = g95Var;
        this.b = yg4Var;
    }

    public final h75 a(e4 e4Var, d9 d9Var) {
        String str;
        String str2;
        Map map;
        n70 n70Var;
        h75 h75Var = new h75(new LinkedHashMap(), 2);
        if (d9Var == null || !d9Var.y) {
            h75Var.b(d9Var != null ? d9Var.b : null, "ad_type_format");
            h75Var.b(d9Var != null ? d9Var.d : null, "product_type");
        }
        if (d9Var == null || (str = d9Var.e) == null) {
            str = e4Var.c.a;
        }
        h75Var.b(str, "ad_unit_id");
        h75Var.b(d9Var != null ? d9Var.l : null, FirebaseAnalytics.Param.AD_SOURCE);
        h75Var.b((d9Var == null || (n70Var = d9Var.a) == null) ? e4Var.a.b : n70Var.b, "ad_type");
        h75Var.a(d9Var != null ? d9Var.k : null, "design");
        List list = d9Var != null ? d9Var.h : null;
        if (list != null && (!list.isEmpty())) {
            h75Var.a.put("active_experiments", list);
        }
        h75Var.a(d9Var != null ? d9Var.o : null, "server_log_id");
        this.a.getClass();
        if ((d9Var != null ? d9Var.q : null) != null) {
            str2 = "mediation";
        } else {
            str2 = (d9Var != null ? d9Var.t : null) != null ? "ad" : "empty";
        }
        h75Var.b(str2, "response_type");
        if (d9Var != null && (map = d9Var.u) != null) {
            h75Var.a.putAll(map);
        }
        h75Var.b = d9Var != null ? d9Var.i : null;
        return h75Var;
    }

    public final h75 b(e4 e4Var, d9 d9Var) {
        List listB;
        h75 h75VarA = a(e4Var, d9Var);
        vg4 vg4Var = d9Var != null ? (vg4) d9Var.t : null;
        if (vg4Var != null) {
            this.b.getClass();
            listB = yg4.b(vg4Var);
        } else {
            listB = defpackage.kx2.b;
        }
        h75VarA.b(defpackage.qn1.V(listB), "ad_id");
        h75VarA.b(listB.isEmpty() ? null : listB, "ad_ids");
        return h75VarA;
    }
}
