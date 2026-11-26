package io.appmetrica.analytics.idsync.impl;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.aa4;
import defpackage.kn1;
import defpackage.kx2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class L implements Converter {
    public final String a = "request_state";
    public final String b = ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY;
    public final String c = "last_attempt";
    public final String d = "prev_attempt_result";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [kx2] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList] */
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String fromModel(List<K> list) throws JSONException {
        ?? arrayList;
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        String str = this.a;
        if (list != null) {
            arrayList = new ArrayList(kn1.q(list, 10));
            for (K k : list) {
                try {
                    jSONObject = new JSONObject();
                    jSONObject.put(this.b, k.a);
                    jSONObject.put(this.c, k.b);
                    jSONObject.put(this.d, k.c.a);
                } catch (Throwable unused) {
                    jSONObject = new JSONObject();
                }
                arrayList.add(jSONObject);
            }
        } else {
            arrayList = kx2.b;
        }
        jSONObject2.put(str, new JSONArray((Collection) arrayList));
        return jSONObject2.toString();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<K> toModel(String str) {
        JSONArray jSONArrayOptJSONArray;
        K kA;
        try {
            ArrayList arrayList = new ArrayList();
            if (str != null && (jSONArrayOptJSONArray = new JSONObject(str).optJSONArray(this.a)) != null) {
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null && (kA = a(jSONObjectOptJSONObject)) != null) {
                        arrayList.add(kA);
                    }
                }
            }
            return arrayList;
        } catch (Throwable unused) {
            return kx2.b;
        }
    }

    public final K a(JSONObject jSONObject) {
        F f;
        try {
            String string = jSONObject.getString(this.b);
            long j = jSONObject.getLong(this.c);
            E e = F.b;
            String string2 = jSONObject.getString(this.d);
            e.getClass();
            F[] fArrValues = F.values();
            int length = fArrValues.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    f = null;
                    break;
                }
                f = fArrValues[i];
                if (aa4.e(f.a, string2)) {
                    break;
                }
                i++;
            }
            if (f == null) {
                f = F.NONE;
            }
            return new K(string, j, f);
        } catch (Throwable unused) {
            return null;
        }
    }
}
