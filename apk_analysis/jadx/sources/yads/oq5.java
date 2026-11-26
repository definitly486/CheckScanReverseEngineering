package yads;

import defpackage.jd4;
import defpackage.k57;
import java.util.Map;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class oq5 {
    public static String a(Map map) {
        Object aVar;
        try {
            defpackage.ld4 ld4Var = new defpackage.ld4();
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                str.getClass();
                defpackage.i54 i54Var = defpackage.rc4.a;
                ld4Var.a(str, str2 == null ? defpackage.gd4.INSTANCE : new defpackage.cd4(str2, true));
            }
            aVar = new jd4(ld4Var.a).toString();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (String) aVar;
    }

    public static Map a(String str) {
        Object aVar;
        try {
            aVar = a(new JSONObject(str));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (Map) aVar;
    }

    public static Map a(JSONObject jSONObject) {
        Object aVar;
        try {
            aVar = zq3.a(jSONObject);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            Objects.toString(jSONObject);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (Map) aVar;
    }
}
