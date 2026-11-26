package yads;

import defpackage.dp7;
import defpackage.k57;
import defpackage.zo7;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qe {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [k57$a] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.LinkedHashMap, java.util.Map] */
    /* JADX WARN: Type inference failed for: r1v7 */
    public static Map a(String str) {
        ?? aVar;
        try {
            JSONObject jSONObject = new JSONObject(str);
            zo7 zo7VarF = dp7.f(jSONObject.keys());
            aVar = new LinkedHashMap();
            for (Object obj : (defpackage.lx1) zo7VarF) {
                aVar.put(obj, jSONObject.get((String) obj));
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        boolean z = aVar instanceof k57.a;
        ?? r1 = aVar;
        if (z) {
            r1 = 0;
        }
        Map map = (Map) r1;
        return map == null ? defpackage.mx2.b : map;
    }
}
