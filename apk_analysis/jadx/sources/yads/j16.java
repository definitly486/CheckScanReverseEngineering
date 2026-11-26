package yads;

import defpackage.k57;
import defpackage.u96;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public final class j16 {
    public static List a(JSONArray jSONArray) {
        Object aVar;
        defpackage.ar4 ar4VarE = u96.e();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                aVar = jSONArray.getString(i);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (!(aVar instanceof k57.a)) {
                ar4VarE.add((String) aVar);
            }
        }
        return u96.d(ar4VarE);
    }
}
