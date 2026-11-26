package yads;

import defpackage.u96;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class t53 extends fi {
    public static final t53 c = new t53();
    public static final String d = "getOptDictFromArray";
    public static final List e = u96.i(new w13(xo2.ARRAY, 0), new w13(xo2.INTEGER, 0));

    public t53() {
        super(xo2.DICT);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object objB = gi.b(d, list, false);
        JSONObject jSONObject = objB instanceof JSONObject ? (JSONObject) objB : null;
        return jSONObject == null ? new JSONObject() : jSONObject;
    }

    @Override // yads.u13
    public final String c() {
        return d;
    }

    @Override // yads.fi, yads.u13
    public final List a() {
        return e;
    }
}
