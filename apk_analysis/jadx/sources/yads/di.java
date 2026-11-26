package yads;

import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public abstract class di extends fi {
    public di() {
        super(xo2.ARRAY);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objB = gi.b(c(), list, f());
        JSONArray jSONArray = objB instanceof JSONArray ? (JSONArray) objB : null;
        if (jSONArray != null) {
            return jSONArray;
        }
        gi.a(c(), list, this.a, objB, f());
        throw null;
    }
}
