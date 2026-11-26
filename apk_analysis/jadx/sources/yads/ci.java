package yads;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ci extends fi {
    public ci() {
        super(xo2.DICT);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objB = gi.b(c(), list, f());
        JSONObject jSONObject = objB instanceof JSONObject ? (JSONObject) objB : null;
        if (jSONObject != null) {
            return jSONObject;
        }
        gi.a(c(), list, this.a, objB, f());
        throw null;
    }
}
