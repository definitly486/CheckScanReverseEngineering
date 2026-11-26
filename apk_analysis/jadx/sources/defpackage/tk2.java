package defpackage;

import android.text.TextUtils;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.internal.p001authapiphone.zzag;
import com.google.android.gms.internal.p001authapiphone.zzh;
import com.google.android.gms.internal.p001authapiphone.zzq;
import com.google.android.gms.internal.p001authapiphone.zzr;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class tk2 implements rxa, RemoteCall {
    public static final /* synthetic */ tk2 c = new tk2(3);
    public static final /* synthetic */ tk2 d = new tk2(4);
    public static final /* synthetic */ tk2 e = new tk2(5);
    public static final /* synthetic */ tk2 f = new tk2(6);
    public final /* synthetic */ int b;

    public /* synthetic */ tk2(int i) {
        this.b = i;
    }

    public static pp9 a(z8a z8aVar, JSONObject jSONObject) {
        int iOptInt;
        return new pp9(z8aVar, new zm9(jSONObject.getString("banner_id"), y14.s(jSONObject, "impression_id"), y14.s(jSONObject, "pad_id"), y14.s(jSONObject, "pattern_id"), (!jSONObject.has("dsp_id") || jSONObject.isNull("dsp_id") || (iOptInt = jSONObject.optInt("dsp_id", -1)) == -1) ? null : Integer.valueOf(iOptInt), y14.q(jSONObject)));
    }

    public static String b(i7a i7aVar) {
        z8a z8aVar = i7aVar.a;
        if (z8aVar.f != l4a.b && z8aVar.h == 1) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ad_context", d(i7aVar.a));
                pp9 pp9Var = i7aVar.b;
                if (pp9Var != null) {
                    jSONObject.put("banner_context", c(pp9Var));
                }
                jSONObject.put("stage", i7aVar.c);
                jSONObject.put("stat_description", i7aVar.d);
                return jSONObject.toString();
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("MonitoringSerializer: seriailize exception - "), th);
            }
        }
        return "";
    }

    public static JSONObject c(pp9 pp9Var) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        zm9 zm9Var = pp9Var.b;
        String str = zm9Var.a;
        List list = zm9Var.f;
        jSONObject.put("banner_id", str);
        jSONObject.put("impression_id", zm9Var.b);
        jSONObject.put("pad_id", zm9Var.c);
        jSONObject.put("pattern_id", zm9Var.d);
        Integer num = zm9Var.e;
        if (num != null) {
            jSONObject.put("dsp_id", num);
        }
        if (list != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Integer) it.next()).intValue());
            }
            jSONObject.put("labels", jSONArray);
        }
        return jSONObject;
    }

    public static JSONObject d(z8a z8aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("ad_id", z8aVar.a);
        jSONObject.putOpt("handle_data_id", z8aVar.b);
        jSONObject.put(FirebaseAnalytics.Param.AD_FORMAT, z8aVar.c);
        jSONObject.putOpt("slot_id", z8aVar.d);
        jSONObject.put(FirebaseAnalytics.Param.AD_SOURCE, z8aVar.e);
        jSONObject.put("cache_policy", z8aVar.g);
        jSONObject.put("tag", (Object) null);
        return jSONObject;
    }

    public static i7a e(String str) {
        if (TextUtils.isEmpty(str)) {
            return i7a.e;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            z8a z8aVarF = f(jSONObject.getJSONObject("ad_context"));
            return new i7a(z8aVarF, jSONObject.has("banner_context") ? a(z8aVarF, jSONObject.getJSONObject("banner_context")) : null, jSONObject.getInt("stage"), jSONObject.getString("stat_description"));
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("MonitoringSerializer: deseriailize exception - "), th);
            return i7a.e;
        }
    }

    public static z8a f(JSONObject jSONObject) throws Exception {
        z8a z8aVar;
        z8a z8aVar2;
        String string = jSONObject.getString("ad_id");
        String string2 = jSONObject.has("handle_data_id") ? jSONObject.getString("handle_data_id") : null;
        int i = jSONObject.getInt(FirebaseAnalytics.Param.AD_FORMAT);
        Integer numValueOf = jSONObject.has("slot_id") ? Integer.valueOf(jSONObject.getInt("slot_id")) : null;
        int i2 = jSONObject.getInt(FirebaseAnalytics.Param.AD_SOURCE);
        int i3 = jSONObject.getInt("cache_policy");
        if (i2 != 0 || numValueOf == null) {
            if (i2 == 1) {
                z8aVar = new z8a(string, string2, -1, i, 1, l4a.a);
            } else {
                if (i2 != 2) {
                    throw new Exception("Unknown json format or content");
                }
                z8aVar = new z8a(string, null, -1, i, 2, l4a.a);
            }
            z8aVar2 = z8aVar;
        } else {
            z8aVar2 = new z8a(string, null, numValueOf, i, 0, l4a.a);
        }
        if (z8aVar2.h == 0) {
            z8aVar2.f.c(z8aVar2, true, new r8a(0, z8aVar2, true));
        }
        z8aVar2.g = i3;
        return z8aVar2;
    }

    public static final /* synthetic */ Integer h(int i) {
        Integer numValueOf = Integer.valueOf(i);
        if (i != Integer.MIN_VALUE) {
            return numValueOf;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        zzag zzagVar = (zzag) obj;
        Logger logger = zzr.a;
        zzagVar.getClass();
        taskCompletionSource.getClass();
        ((zzh) zzagVar.getService()).zzd(new zzq(taskCompletionSource));
    }

    public boolean g() {
        Boolean bool = Boolean.FALSE;
        return (bool.equals(null) || bool.equals(null) || bool.equals(null)) ? false : true;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 3:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzah());
            case 4:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzags.zzr());
            default:
                List list3 = zzfy.a;
                return Boolean.valueOf(zzaif.zzg());
        }
    }
}
