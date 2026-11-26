package defpackage;

import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class m6a {
    public static JSONObject a(a aVar) throws JSONException {
        zs9 zs9Var = aVar.a;
        HashMap map = aVar.b;
        JSONArray jSONArray = new JSONArray();
        for (Map.Entry entry : map.entrySet()) {
            z8a z8aVar = (z8a) entry.getKey();
            l5a.a aVar2 = (l5a.a) entry.getValue();
            if (!aVar2.a.isEmpty()) {
                jSONArray.put(b(z8aVar, null, aVar2.a));
            }
            for (Map.Entry entry2 : aVar2.b.entrySet()) {
                jSONArray.put(b(z8aVar, ((pp9) entry2.getKey()).b, ((l5a.b) entry2.getValue()).a));
            }
        }
        JSONObject jSONObject = new JSONObject();
        Objects.requireNonNull(zs9Var);
        jSONObject.put("sdk_version", "5.52.5");
        jSONObject.put("sdk_version_int", 5052005);
        jSONObject.put("app_bundle_id", zs9Var.f);
        jSONObject.put("app_version", zs9Var.g);
        jSONObject.put("app_build", zs9Var.h);
        jSONObject.put("sdk_instance_id", zs9Var.i);
        jSONObject.put("os", "Android");
        String str = zs9Var.a;
        if (str == null) {
            str = "";
        }
        jSONObject.put(CommonUrlParts.OS_VERSION, str);
        jSONObject.put("os_version_int", zs9Var.b);
        String str2 = zs9Var.c;
        if (str2 == null) {
            str2 = "";
        }
        jSONObject.put("device", str2);
        String str3 = zs9Var.d;
        if (str3 == null) {
            str3 = "";
        }
        jSONObject.put(CommonUrlParts.MODEL, str3);
        String str4 = zs9Var.e;
        jSONObject.put(CommonUrlParts.MANUFACTURER, str4 != null ? str4 : "");
        jSONObject.put("logs", jSONArray);
        return jSONObject;
    }

    public static JSONObject b(z8a z8aVar, zm9 zm9Var, List list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            l5a.c cVar = (l5a.c) it.next();
            JSONObject jSONObject = new JSONObject();
            if (zm9Var != null) {
                List list2 = zm9Var.f;
                jSONObject.put("banner_id", zm9Var.a);
                String str = zm9Var.b;
                if (str != null) {
                    jSONObject.put("impression_id", str);
                }
                String str2 = zm9Var.c;
                if (str2 != null) {
                    jSONObject.put("pad_id", str2);
                }
                String str3 = zm9Var.d;
                if (str3 != null) {
                    jSONObject.put("pattern_id", str3);
                }
                Integer num = zm9Var.e;
                if (num != null) {
                    jSONObject.put("dsp_id", num);
                }
                if (list2 != null && !list2.isEmpty()) {
                    JSONArray jSONArray2 = new JSONArray();
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        jSONArray2.put(((Integer) it2.next()).intValue());
                    }
                    jSONObject.put("labels", jSONArray2);
                }
            }
            int i = cVar.b;
            String str4 = cVar.f;
            String str5 = cVar.e;
            jSONObject.put("stage", i);
            jSONObject.put(FirebaseAnalytics.Param.LEVEL, cVar.c);
            jSONObject.put("code", cVar.d);
            if (!TextUtils.isEmpty(str5)) {
                jSONObject.put(TJAdUnitConstants.String.MESSAGE, str5);
            }
            jSONObject.put("client_timestamp", cVar.a);
            if (!TextUtils.isEmpty(str4)) {
                jSONObject.put("add_data", str4);
            }
            jSONArray.put(jSONObject);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(FirebaseAnalytics.Param.AD_FORMAT, z8aVar.c);
        jSONObject2.put("cache_policy", z8aVar.g);
        jSONObject2.put("tag", (Object) null);
        Integer num2 = z8aVar.d;
        if (num2.intValue() != -1) {
            jSONObject2.put("slot_id", num2.intValue());
        }
        jSONObject2.put("ad_id", z8aVar.a);
        Object obj = z8aVar.b;
        if (obj != null) {
            jSONObject2.put("handle_data_id", obj);
        }
        jSONObject2.put("source_type", z8aVar.e);
        jSONObject2.put("events", jSONArray);
        return jSONObject2;
    }

    public static final class a {
        public final zs9 a;
        public final HashMap b;

        public a(zs9 zs9Var, z8a z8aVar, pp9 pp9Var, List list) {
            l5a.b bVar = new l5a.b();
            bVar.a.addAll(list);
            l5a.a aVar = new l5a.a();
            aVar.b.put(pp9Var, bVar);
            HashMap map = new HashMap();
            map.put(z8aVar, aVar);
            this.a = zs9Var;
            this.b = map;
        }

        public a(zs9 zs9Var, z8a z8aVar, List list) {
            l5a.a aVar = new l5a.a();
            aVar.a.addAll(list);
            HashMap map = new HashMap();
            map.put(z8aVar, aVar);
            this.a = zs9Var;
            this.b = map;
        }
    }
}
