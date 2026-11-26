package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class r32 implements qv5 {
    public final tq3 a;

    public r32(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.qv5
    public final Object a(ys4 ys4Var, xq3 xq3Var, JSONObject jSONObject) {
        s32 s32Var = (s32) xq3Var;
        zw2 zw2Var = s32Var.a;
        tq3 tq3Var = this.a;
        k11 k11Var = (k11) qq3.b(ys4Var, zw2Var, jSONObject, "animation_in", tq3Var.s1, tq3Var.q1);
        zw2 zw2Var2 = s32Var.b;
        tq3 tq3Var2 = this.a;
        k11 k11Var2 = (k11) qq3.b(ys4Var, zw2Var2, jSONObject, "animation_out", tq3Var2.s1, tq3Var2.q1);
        zw2 zw2Var3 = s32Var.c;
        tq3 tq3Var3 = this.a;
        br0 br0Var = (br0) qq3.b(ys4Var, zw2Var3, jSONObject, TtmlNode.TAG_DIV, tq3Var3.u9, tq3Var3.s9);
        String str = (String) qq3.a(s32Var.d, jSONObject, "state_id");
        zw2 zw2Var4 = s32Var.e;
        tq3 tq3Var4 = this.a;
        return new y22(k11Var, k11Var2, br0Var, str, qq3.c(ys4Var, zw2Var4, jSONObject, "swipe_out_actions", tq3Var4.m1, tq3Var4.k1));
    }
}
