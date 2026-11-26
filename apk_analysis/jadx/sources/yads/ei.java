package yads;

import defpackage.u96;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ei extends u13 {
    public final List a = u96.i(new w13(xo2.DICT, 0), new w13(xo2.STRING));
    public final xo2 b = xo2.ARRAY;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = jo0.a(c(), list, f());
        JSONArray jSONArray = objA instanceof JSONArray ? (JSONArray) objA : null;
        if (jSONArray != null) {
            return jSONArray;
        }
        jo0.a(c(), list, this.b, objA, f());
        throw null;
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.b;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    public boolean f() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return this.a;
    }
}
