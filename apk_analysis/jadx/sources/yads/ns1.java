package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ns1 implements ln0 {
    public final tq3 a;

    public ns1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [yads.zw2] */
    /* JADX WARN: Type inference failed for: r8v0, types: [yads.zw2] */
    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        JSONObject jSONObject2;
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        ss1 ss1Var = xq3Var instanceof ss1 ? (ss1) xq3Var : null;
        if (ss1Var != null) {
            if (ss1Var instanceof rs1) {
                strA = "percentage";
            } else if (ss1Var instanceof ps1) {
                strA = "fixed";
            } else {
                if (!(ss1Var instanceof qs1)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "wrap_content";
            }
        }
        int iHashCode = strA.hashCode();
        if (iHashCode != -921832806) {
            if (iHashCode != 97445748) {
                if (iHashCode == 343327108 && strA.equals("wrap_content")) {
                    nq1 nq1Var = (nq1) this.a.f5.getValue();
                    nq1Var.getClass();
                    return new qs1(new pq1());
                }
            } else if (strA.equals("fixed")) {
                xp1 xp1Var = (xp1) this.a.W4.getValue();
                zp1 zp1Var = (zp1) (ss1Var != null ? ss1Var.a() : null);
                xp1Var.getClass();
                return new ps1(new zp1(pq3.a(zs4.b(ys4Var), jSONObject, "neighbour_page_width", ys4Var.d(), (zw2) (zp1Var != null ? zp1Var.a : null), xp1Var.a.w3)));
            }
            jSONObject2 = jSONObject;
        } else {
            jSONObject2 = jSONObject;
            if (strA.equals("percentage")) {
                sq1 sq1Var = (sq1) this.a.i5.getValue();
                uq1 uq1Var = (uq1) (ss1Var != null ? ss1Var.a() : null);
                sq1Var.getClass();
                return new rs1(new uq1(pq3.a(zs4.b(ys4Var), jSONObject2, "page_width", ys4Var.d(), (zw2) (uq1Var != null ? uq1Var.a : null), sq1Var.a.D5)));
            }
        }
        throw gt4.b(jSONObject2, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
