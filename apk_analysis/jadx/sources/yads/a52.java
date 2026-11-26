package yads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class a52 implements qv5 {
    public final tq3 a;

    public a52(tq3 tq3Var) {
        this.a = tq3Var;
    }

    public final s42 a(i52 i52Var) {
        if (i52Var instanceof h52) {
            ((e52) this.a.z7.getValue()).getClass();
            return new r42(new b52());
        }
        if (i52Var instanceof g52) {
            ((w42) this.a.w7.getValue()).getClass();
            return new q42(new t42());
        }
        defpackage.me0.e();
        return null;
    }

    @Override // yads.qv5
    public final /* bridge */ /* synthetic */ Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        return a((i52) xq3Var);
    }
}
