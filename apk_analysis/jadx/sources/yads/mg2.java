package yads;

import android.net.Uri;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class mg2 {
    public static final u66 a(uf2 uf2Var, gs2 gs2Var) {
        if (uf2Var instanceof mf2) {
            pu puVar = ((mf2) uf2Var).a;
            return new n66(puVar.a, ((Boolean) puVar.b.a((fs2) gs2Var)).booleanValue());
        }
        if (uf2Var instanceof pf2) {
            pm3 pm3Var = ((pf2) uf2Var).a;
            return new r66(pm3Var.a, ((Number) pm3Var.b.a((fs2) gs2Var)).longValue());
        }
        if (uf2Var instanceof qf2) {
            yo4 yo4Var = ((qf2) uf2Var).a;
            return new q66(yo4Var.a, ((Number) yo4Var.b.a((fs2) gs2Var)).doubleValue());
        }
        if (uf2Var instanceof sf2) {
            ur5 ur5Var = ((sf2) uf2Var).a;
            return new s66(ur5Var.a, (String) ur5Var.b.a((fs2) gs2Var));
        }
        if (uf2Var instanceof nf2) {
            t30 t30Var = ((nf2) uf2Var).a;
            return new o66(t30Var.a, ((Number) t30Var.b.a((fs2) gs2Var)).intValue());
        }
        if (uf2Var instanceof tf2) {
            k56 k56Var = ((tf2) uf2Var).a;
            return new t66((Uri) k56Var.b.a((fs2) gs2Var), k56Var.a);
        }
        if (uf2Var instanceof of2) {
            cp0 cp0Var = ((of2) uf2Var).a;
            return new p66(cp0Var.a, (JSONObject) cp0Var.b.a((fs2) gs2Var));
        }
        if (uf2Var instanceof lf2) {
            jj jjVar = ((lf2) uf2Var).a;
            return new m66(jjVar.a, (JSONArray) jjVar.b.a((fs2) gs2Var));
        }
        if (uf2Var instanceof rf2) {
            throw new defpackage.oo5("An operation is not implemented: Support property variables");
        }
        defpackage.me0.e();
        return null;
    }
}
