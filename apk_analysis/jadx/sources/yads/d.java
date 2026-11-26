package yads;

import defpackage.k57;
import java.util.LinkedHashSet;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class d {
    public static LinkedHashSet a(JSONArray jSONArray) {
        Object aVar;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                aVar = Boolean.valueOf(linkedHashSet.add(Long.valueOf(jSONArray.getLong(i))));
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (k57.a(aVar) != null) {
                Objects.toString(jSONArray.get(i));
            }
        }
        return linkedHashSet;
    }

    public static c a(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new c(jSONObject.getString("experiments"), a(jSONObject.getJSONArray("test_ids")));
        } catch (Throwable unused) {
            return null;
        }
    }
}
