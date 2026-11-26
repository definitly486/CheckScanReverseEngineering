package yads;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class cg1 implements kv5 {
    public final tq3 a;

    public cg1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.kv5, yads.ln0
    public final xq3 a(ys4 ys4Var, JSONObject jSONObject) {
        zw2 zw2VarA;
        boolean zD = ys4Var.d();
        tr4 tr4VarB = zs4.b(ys4Var);
        try {
            zw2VarA = new yw2(wq3.b(tr4VarB, jSONObject, TJAdUnitConstants.String.ARGUMENTS, this.a.F3), zD);
        } catch (ft4 e) {
            if (e.b != ht4.MISSING_VALUE || (zw2VarA = pq3.a(zD, pq3.a(tr4VarB, jSONObject, TJAdUnitConstants.String.ARGUMENTS), (zw2) null)) == null) {
                throw e;
            }
        }
        return new fg1(zw2VarA, pq3.a(tr4VarB, jSONObject, TtmlNode.TAG_BODY, zD, null), pq3.a(tr4VarB, jSONObject, "name", zD, (zw2) null, uq3.b, eg1.a), pq3.a(tr4VarB, jSONObject, "return_type", zD, (zw2) null, fd1.d, uq3.a));
    }
}
