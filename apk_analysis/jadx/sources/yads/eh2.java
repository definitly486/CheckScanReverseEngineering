package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class eh2 implements qv5 {
    public final tq3 a;

    public eh2(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        kh2 kh2Var = (kh2) xq3Var;
        as2 as2VarB = qq3.b(ys4Var, kh2Var.a, jSONObject, "bitrate", w36.b, bt4.e);
        as2 as2VarA = qq3.a(ys4Var, kh2Var.b, jSONObject, "mime_type", w36.c);
        zw2 zw2Var = kh2Var.c;
        tq3 tq3Var = this.a;
        return new ah2(as2VarB, as2VarA, (zg2) qq3.b(ys4Var, zw2Var, jSONObject, "resolution", tq3Var.i9, tq3Var.g9), qq3.a(ys4Var, kh2Var.d, jSONObject, "url", w36.e, bt4.b));
    }
}
