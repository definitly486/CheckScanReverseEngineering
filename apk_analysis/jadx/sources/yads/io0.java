package yads;

import defpackage.u96;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class io0 extends u13 {
    public final List a;
    public final xo2 b;

    public io0() {
        xo2 xo2Var = xo2.DICT;
        this.a = u96.i(new w13(xo2Var, 0), new w13(xo2.STRING));
        this.b = xo2Var;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objA = jo0.a(c(), list, f());
        JSONObject jSONObject = objA instanceof JSONObject ? (JSONObject) objA : null;
        if (jSONObject != null) {
            return jSONObject;
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
