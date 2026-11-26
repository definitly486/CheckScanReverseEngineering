package yads;

import android.content.Context;
import androidx.autofill.HintConstants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class v34 {
    public final e4 a;
    public final qi5 b;

    public v34(e4 e4Var) {
        qi5 qi5Var = new qi5();
        this.a = e4Var;
        this.b = qi5Var;
    }

    public Map a(Context context) {
        zg5 zg5Var;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        n8 n8Var = this.a.e;
        if (n8Var != null) {
            Map map = n8Var.g;
            if (map != null) {
                linkedHashMap.putAll(map);
            }
            String str = n8Var.b;
            if (str != null) {
                linkedHashMap.put("age", str);
            }
            List list = n8Var.e;
            if (list != null) {
                linkedHashMap.put("context_tags", list);
            }
            String str2 = n8Var.c;
            if (str2 != null) {
                linkedHashMap.put(HintConstants.AUTOFILL_HINT_GENDER, str2);
            }
            zg5 zg5Var2 = zg5.l;
            if (zg5Var2 == null) {
                synchronized (zg5.k) {
                    zg5Var = zg5.l;
                    if (zg5Var == null) {
                        zg5Var = new zg5();
                        zg5.l = zg5Var;
                    }
                }
                zg5Var2 = zg5Var;
            }
            Boolean boolC = zg5Var2.c();
            if (boolC != null) {
                linkedHashMap.put("age_restricted_user", boolC);
            }
            a(context, linkedHashMap);
        }
        id idVar = this.a.b.b.a;
        boolean zB = this.b.b(context);
        if (idVar != null) {
            boolean z = idVar.b;
            String str3 = idVar.a;
            if (!zB && !z && str3 != null) {
                linkedHashMap.put("google_aid", str3);
            }
        }
        linkedHashMap.put("gms_available", Boolean.valueOf(this.a.b.a.f));
        linkedHashMap.put("sdk_version", "8.2.0");
        return linkedHashMap;
    }

    public static void a(Context context, LinkedHashMap linkedHashMap) {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        Boolean bool = fe5VarA != null ? fe5VarA.a0 : null;
        if (bool != null) {
            linkedHashMap.put("user_consent", bool);
        }
    }
}
