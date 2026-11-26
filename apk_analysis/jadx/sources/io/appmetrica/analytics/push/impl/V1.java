package io.appmetrica.analytics.push.impl;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class V1 {
    public final String a;
    public final Integer b;
    public final String c;
    public final Boolean d;

    public V1(String str, Integer num, String str2, Boolean bool) {
        this.a = str;
        this.b = num;
        this.c = str2;
        this.d = bool;
    }

    public static JSONObject a(V1 v1) {
        v1.getClass();
        return new JSONObject().put("push_id", v1.a).put("notification_id", v1.b).put("notification_tag", v1.c).put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, v1.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && V1.class == obj.getClass()) {
            V1 v1 = (V1) obj;
            if (!this.b.equals(v1.b)) {
                return false;
            }
            String str = this.c;
            String str2 = v1.c;
            if (str != null) {
                return str.equals(str2);
            }
            if (str2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() * 31;
        String str = this.c;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}
