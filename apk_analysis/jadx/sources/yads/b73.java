package yads;

import defpackage.u96;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b73 extends u13 {
    public final List a = u96.h(new w13(xo2.DICT, 0));
    public final xo2 b = xo2.ARRAY;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        JSONObject jSONObject = (JSONObject) obj;
        JSONArray jSONArray = new JSONArray();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            jSONArray.put(jSONObject.get(itKeys.next()));
        }
        return jSONArray;
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.b;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return this.a;
    }
}
