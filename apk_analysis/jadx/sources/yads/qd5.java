package yads;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class qd5 {
    public final e4 a;
    public final bf5 b;
    public final u8 c;

    public qd5(e4 e4Var, bf5 bf5Var) {
        u8 u8Var = new u8();
        new yg4();
        new rd5();
        this.a = e4Var;
        this.b = bf5Var;
        this.c = u8Var;
    }

    public final void a(Context context, d9 d9Var, e75 e75Var, h75 h75Var) {
        sd4 sd4Var;
        f95 f95Var;
        h75 h75VarA = this.c.a(this.a.e);
        h75VarA.b(d9Var.e, "ad_unit_id");
        String str = c75.a;
        h75VarA.b(str, "adapter");
        n70 n70Var = d9Var.a;
        h75VarA.b(n70Var != null ? n70Var.b : null, "ad_type");
        vg4 vg4Var = (vg4) d9Var.t;
        if (vg4Var != null) {
            List list = vg4Var.a;
            String str2 = (list == null || (sd4Var = (sd4) defpackage.qn1.V(list)) == null || (f95Var = sd4Var.a) == null) ? null : f95Var.c;
            if (str2 == null) {
                str2 = "";
            }
            h75VarA.b(str2, "native_ad_type");
        }
        h75VarA.b(d9Var.l, FirebaseAnalytics.Param.AD_SOURCE);
        h75 h75VarA2 = i75.a(h75VarA, h75Var);
        Map map = h75VarA2.a;
        c cVar = h75VarA2.b;
        String str3 = e75Var.b;
        LinkedHashMap linkedHashMapN = defpackage.n05.n(map);
        g75 g75Var = new g75(str3, linkedHashMapN, cVar);
        this.b.getClass();
        re.a(context, new lm6(((do6) this.b).a)).a(g75Var);
        new le(context).a(e75Var, linkedHashMapN, str, null);
    }

    public final void a(Context context, d9 d9Var, wh4 wh4Var) {
        h75 h75Var = new h75((Map) null, 3);
        f75 f75Var = f75.SUCCESS;
        h75Var.b(FirebaseAnalytics.Param.SUCCESS, NotificationCompat.CATEGORY_STATUS);
        a(context, d9Var, e75.ADAPTER_RESPONSE, h75Var);
    }

    public final void a(Context context, d9 d9Var, vh4 vh4Var) {
        Map mapSingletonMap;
        h75 h75Var = new h75((Map) null, 3);
        if (vh4Var != null) {
            List list = vh4Var.a.b.c;
            List list2 = list.isEmpty() ? null : list;
            if (list2 != null) {
                mapSingletonMap = Collections.singletonMap("image_sizes", defpackage.qn1.t0(list2));
                mapSingletonMap.getClass();
            } else {
                mapSingletonMap = defpackage.mx2.b;
            }
            h75Var.a.putAll(mapSingletonMap);
        }
        a(context, d9Var, e75.ADAPTER_REQUEST, h75Var);
    }
}
