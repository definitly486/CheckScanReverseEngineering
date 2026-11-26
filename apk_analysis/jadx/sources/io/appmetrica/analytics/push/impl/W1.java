package io.appmetrica.analytics.push.impl;

import androidx.media3.exoplayer.offline.DownloadService;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class W1 {
    public final L1 a;

    public W1(L1 l1) {
        this.a = l1;
    }

    public final void a(String str, Integer num, String str2, boolean z) {
        LinkedList linkedListC = c();
        V1 v1 = new V1(str, num, str2, Boolean.valueOf(z));
        linkedListC.remove(v1);
        linkedListC.add(v1);
        if (linkedListC.size() > 50) {
            linkedListC.remove(0);
        }
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator it = linkedListC.iterator();
            while (it.hasNext()) {
                jSONArray.put(V1.a((V1) it.next()));
            }
        } catch (JSONException unused) {
        }
        this.a.a("refated_push_notification_info_list", jSONArray.toString());
    }

    public final LinkedList b() {
        L1 l1 = this.a;
        String string = l1.a.getSharedPreferences(l1.b, 0).getString("refated_push_notification_ids", "");
        LinkedList linkedList = new LinkedList();
        try {
            JSONArray jSONArray = new JSONArray(string);
            for (int i = 0; i < jSONArray.length(); i++) {
                linkedList.add(jSONArray.getJSONObject(i).getString("push_id"));
            }
        } catch (JSONException unused) {
        }
        return linkedList;
    }

    public final LinkedList c() {
        L1 l1 = this.a;
        String string = l1.a.getSharedPreferences(l1.b, 0).getString("refated_push_notification_info_list", "");
        LinkedList linkedList = new LinkedList();
        try {
            JSONArray jSONArray = new JSONArray(string);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                linkedList.add(new V1(jSONObject.getString("push_id"), Integer.valueOf(jSONObject.getInt("notification_id")), jSONObject.has("notification_tag") ? jSONObject.getString("notification_tag") : null, jSONObject.has(AppMeasurementSdk.ConditionalUserProperty.ACTIVE) ? Boolean.valueOf(jSONObject.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE)) : null));
            }
        } catch (JSONException unused) {
        }
        return linkedList;
    }

    public final void b(String str) {
        V1 v1;
        Iterator it = c().iterator();
        do {
            if (!it.hasNext()) {
                v1 = null;
                break;
            }
            v1 = (V1) it.next();
        } while (!v1.a.equals(str));
        if (v1 != null) {
            a(str, v1.b, v1.c, false);
        }
    }

    public final LinkedList a() {
        L1 l1 = this.a;
        String string = l1.a.getSharedPreferences(l1.b, 0).getString("refated_content_notification_ids", "");
        LinkedList linkedList = new LinkedList();
        try {
            JSONArray jSONArray = new JSONArray(string);
            for (int i = 0; i < jSONArray.length(); i++) {
                linkedList.add(jSONArray.getJSONObject(i).getString(DownloadService.KEY_CONTENT_ID));
            }
        } catch (JSONException unused) {
        }
        return linkedList;
    }

    public final LinkedList a(String str) {
        L1 l1 = this.a;
        l1.getClass();
        String string = l1.a.getSharedPreferences(l1.b, 0).getString("shown_times_millis_by_channel_id" + str, "");
        LinkedList linkedList = new LinkedList();
        try {
            JSONArray jSONArray = new JSONArray(string);
            for (int i = 0; i < jSONArray.length(); i++) {
                linkedList.add(Long.valueOf(jSONArray.getLong(i)));
            }
        } catch (JSONException unused) {
        }
        return linkedList;
    }
}
