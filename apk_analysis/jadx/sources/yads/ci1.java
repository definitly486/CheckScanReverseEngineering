package yads;

import defpackage.nl3;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ci1 implements ln0 {
    public final tq3 a;

    public ci1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final bi1 a(ys4 ys4Var, JSONObject jSONObject) {
        r36 r36Var = w36.d;
        nl3 nl3Var = bt4.d;
        l66 l66Var = fi1.i;
        xr2 xr2Var = fi1.a;
        as2 as2VarA = oq3.a(ys4Var, jSONObject, "alpha", r36Var, nl3Var, l66Var, xr2Var);
        as2 as2Var = as2VarA == null ? xr2Var : as2VarA;
        m36 m36Var = fi1.f;
        nl3 nl3Var2 = f11.d;
        xr2 xr2Var2 = fi1.b;
        l66 l66Var2 = uq3.a;
        as2 as2VarA2 = oq3.a(ys4Var, jSONObject, "content_alignment_horizontal", m36Var, nl3Var2, l66Var2, xr2Var2);
        if (as2VarA2 == null) {
            as2VarA2 = xr2Var2;
        }
        m36 m36Var2 = fi1.g;
        nl3 nl3Var3 = h11.d;
        xr2 xr2Var3 = fi1.c;
        as2 as2VarA3 = oq3.a(ys4Var, jSONObject, "content_alignment_vertical", m36Var2, nl3Var3, l66Var2, xr2Var3);
        if (as2VarA3 == null) {
            as2VarA3 = xr2Var3;
        }
        List listD = wq3.d(ys4Var, jSONObject, "filters", this.a.j3);
        as2 as2VarA4 = oq3.a(ys4Var, jSONObject, "image_url", w36.e, bt4.b, l66Var2);
        o36 o36Var = w36.a;
        nl3 nl3Var4 = bt4.c;
        xr2 xr2Var4 = fi1.d;
        as2 as2VarA5 = oq3.a(ys4Var, jSONObject, "preload_required", o36Var, nl3Var4, l66Var2, xr2Var4);
        as2 as2Var2 = as2VarA5 == null ? xr2Var4 : as2VarA5;
        m36 m36Var3 = fi1.h;
        nl3 nl3Var5 = vi1.d;
        xr2 xr2Var5 = fi1.e;
        as2 as2VarA6 = oq3.a(ys4Var, jSONObject, "scale", m36Var3, nl3Var5, l66Var2, xr2Var5);
        return new bi1(as2Var, as2VarA2, as2VarA3, listD, as2VarA4, as2Var2, as2VarA6 == null ? xr2Var5 : as2VarA6);
    }
}
