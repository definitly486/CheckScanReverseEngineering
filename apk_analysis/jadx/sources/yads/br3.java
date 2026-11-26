package yads;

import defpackage.k57;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class br3 {
    public static final String a(String str, JSONObject jSONObject) {
        Object aVar;
        try {
            aVar = jSONObject.getString(str);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (String) aVar;
    }
}
