package yads;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class v5 {
    public final e4 a;
    public final q84 b;
    public final u5 c;
    public final le d;
    public g85 e;
    public ah4 f;
    public boolean g;

    public v5(Context context, e4 e4Var, t5 t5Var, bf5 bf5Var) {
        bf5Var.getClass();
        q84 q84VarA = re.a(context, new lm6(((do6) bf5Var).a));
        u5 u5Var = new u5(t5Var);
        le leVar = new le(context);
        this.a = e4Var;
        this.b = q84VarA;
        this.c = u5Var;
        this.d = leVar;
    }

    public final void a(HashMap map) {
        h75 h75Var = new h75(map, 2);
        g85 g85Var = this.e;
        if (g85Var != null) {
            h75Var.a.putAll(g85Var.a());
        }
        ah4 ah4Var = this.f;
        if (ah4Var != null) {
            h75Var = i75.a(h75Var, ah4Var.a());
        }
        e75 e75Var = e75.AD_LOADING_RESULT;
        Map map2 = h75Var.a;
        c cVar = h75Var.b;
        LinkedHashMap linkedHashMapN = defpackage.n05.n(map2);
        this.b.a(new g75("ad_loading_result", linkedHashMapN, cVar));
        if (defpackage.aa4.e(map.get(NotificationCompat.CATEGORY_STATUS), FirebaseAnalytics.Param.SUCCESS)) {
            le leVar = this.d;
            e75 e75Var2 = e75.AD_LOADING_RESULT;
            String str = this.a.l;
            if (str == null) {
                str = c75.a;
            }
            leVar.a(e75Var2, linkedHashMapN, str, null);
        }
    }

    public final void a(String str, String str2) {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_STATUS, "error");
        map.put("failure_reason", str);
        map.put("reason", str2);
        map.put("durations", this.c.a());
        map.put("load_listener_available", Boolean.valueOf(this.g));
        a(map);
    }

    public final void a() {
        HashMap map = new HashMap();
        map.put(NotificationCompat.CATEGORY_STATUS, FirebaseAnalytics.Param.SUCCESS);
        map.put("durations", this.c.a());
        map.put("load_listener_available", Boolean.valueOf(this.g));
        a(map);
    }

    public final void a(Object... objArr) {
        boolean z = false;
        for (Object obj : objArr) {
            if (obj != null) {
                z = true;
                break;
            }
        }
        this.g = z;
    }
}
