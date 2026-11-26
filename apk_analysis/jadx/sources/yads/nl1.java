package yads;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class nl1 implements ln0 {
    public final tq3 a;

    public nl1(tq3 tq3Var) {
        this.a = tq3Var;
    }

    @Override // yads.ln0
    public final Object a(ys4 ys4Var, JSONObject jSONObject) {
        String strA = wq3.a(jSONObject);
        xq3 xq3Var = ys4Var.b().get(strA);
        sl1 sl1Var = xq3Var instanceof sl1 ? (sl1) xq3Var : null;
        if (sl1Var != null) {
            if (sl1Var instanceof ql1) {
                strA = "fixed_length";
            } else if (sl1Var instanceof pl1) {
                strA = FirebaseAnalytics.Param.CURRENCY;
            } else {
                if (!(sl1Var instanceof rl1)) {
                    defpackage.me0.e();
                    return null;
                }
                strA = "phone";
            }
        }
        int iHashCode = strA.hashCode();
        if (iHashCode != 106642798) {
            if (iHashCode != 393594385) {
                if (iHashCode == 575402001 && strA.equals(FirebaseAnalytics.Param.CURRENCY)) {
                    ha1 ha1Var = (ha1) this.a.z2.getValue();
                    ja1 ja1Var = (ja1) (sl1Var != null ? sl1Var.a() : null);
                    ha1Var.getClass();
                    boolean zD = ys4Var.d();
                    tr4 tr4VarB = zs4.b(ys4Var);
                    return new pl1(new ja1(pq3.b(tr4VarB, jSONObject, CommonUrlParts.LOCALE, w36.c, zD, ja1Var != null ? ja1Var.a : null), pq3.a(tr4VarB, jSONObject, "raw_text_variable", zD, ja1Var != null ? ja1Var.b : null)));
                }
            } else if (strA.equals("fixed_length")) {
                return new ql1(((re1) this.a.q3.getValue()).a(ys4Var, (ze1) (sl1Var != null ? sl1Var.a() : null), jSONObject));
            }
        } else if (strA.equals("phone")) {
            mu1 mu1Var = (mu1) this.a.G5.getValue();
            ou1 ou1Var = (ou1) (sl1Var != null ? sl1Var.a() : null);
            mu1Var.getClass();
            return new rl1(new ou1(pq3.a(zs4.b(ys4Var), jSONObject, "raw_text_variable", ys4Var.d(), ou1Var != null ? ou1Var.a : null)));
        }
        throw gt4.b(jSONObject, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, strA);
    }
}
