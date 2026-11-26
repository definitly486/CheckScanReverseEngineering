package yads;

import android.view.View;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ym5 implements id1 {
    public final q84 a;
    public final ConcurrentHashMap b = new ConcurrentHashMap();

    public ym5(q84 q84Var) {
        this.a = q84Var;
    }

    @Override // yads.id1
    public final void a(vq0 vq0Var, View view, p41 p41Var) {
        Integer numValueOf;
        cn5 cn5Var = (cn5) this.b.get(vq0Var.Q);
        if (cn5Var != null) {
            view.setVisibility(8);
            cn5Var.d.getClass();
            gd1 gd1VarA = md1.a(p41Var, "view");
            if (gd1VarA != null) {
                cn5Var.e.getClass();
                JSONObject jSONObject = gd1VarA.b;
                if (jSONObject != null) {
                    try {
                        numValueOf = Integer.valueOf(jSONObject.getInt("position"));
                    } catch (JSONException unused) {
                        numValueOf = null;
                    }
                } else {
                    numValueOf = null;
                }
                if (numValueOf != null) {
                    ArrayList arrayListK = cn5Var.a.k();
                    if (numValueOf.intValue() < 0 || numValueOf.intValue() >= arrayListK.size()) {
                        return;
                    }
                    pg4 pg4Var = (pg4) arrayListK.get(numValueOf.intValue());
                    ih4 ih4VarA = cn5Var.f.a(view, new dp4(numValueOf.intValue()));
                    try {
                        ak5 ak5VarA = xq0.a(vq0Var);
                        nn0 nn0Var = cn5Var.c;
                        pz pzVar = (pz) ak5VarA.a.b.get(numValueOf);
                        if (pzVar == null) {
                            pzVar = new pz(nn0Var);
                            ak5VarA.a.a.put(numValueOf, pzVar);
                        }
                        pg4Var.a(ih4VarA, pzVar);
                        view.setVisibility(0);
                    } catch (yf4 e) {
                        cn5Var.b.reportError("Failed to bind DivKit Slider Inner Ad", e);
                    }
                }
            }
        }
    }

    public final void a(fo1 fo1Var, ni4 ni4Var) {
        this.b.put(fo1Var.e, new cn5(ni4Var, this.a, fo1Var.h));
    }

    @Override // yads.id1
    public final boolean a(p41 p41Var) {
        Integer numValueOf;
        gd1 gd1VarA = md1.a(p41Var, "view");
        if (gd1VarA == null) {
            return false;
        }
        JSONObject jSONObject = gd1VarA.b;
        String string = null;
        if (jSONObject != null) {
            try {
                numValueOf = Integer.valueOf(jSONObject.getInt("position"));
            } catch (JSONException unused) {
                numValueOf = null;
            }
        } else {
            numValueOf = null;
        }
        JSONObject jSONObject2 = gd1VarA.b;
        if (jSONObject2 != null) {
            try {
                string = jSONObject2.getString("view_name");
            } catch (JSONException unused2) {
            }
        }
        return numValueOf != null && "native_ad_view".equals(string);
    }

    @Override // yads.id1
    public final void a(vq0 vq0Var, View view) {
    }
}
