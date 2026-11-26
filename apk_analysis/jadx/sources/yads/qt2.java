package yads;

import android.content.Context;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qt2 {
    public final zu3 a;
    public final ot2 b;

    public qt2(Context context) {
        zu3 zu3VarA = bv3.a(context, "FalseClickDataStorage");
        ot2 ot2Var = new ot2();
        this.a = zu3VarA;
        this.b = ot2Var;
    }

    public final void a(nt2 nt2Var) throws JSONException {
        String string;
        String strValueOf = String.valueOf(nt2Var.b);
        this.b.getClass();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("ad_type", nt2Var.a.b);
        jSONObject.put("start_time", nt2Var.b);
        jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, nt2Var.c.b);
        mt2 mt2Var = nt2Var.d;
        String string2 = null;
        if (mt2Var != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("interval", mt2Var.c);
            jSONObject2.put("url", mt2Var.b);
            string = jSONObject2.toString();
        } else {
            string = null;
        }
        jSONObject.put("false_click", string);
        jSONObject.put("report_data", new JSONObject(nt2Var.e));
        c cVar = nt2Var.f;
        if (cVar != null) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("experiments", cVar.a);
            jSONObject3.put("test_ids", cVar.b);
            string2 = jSONObject3.toString();
        }
        jSONObject.put("ab_experiments", string2);
        ((av3) this.a).a(strValueOf, jSONObject.toString());
    }

    public final void a(long j) {
        ((av3) this.a).d(String.valueOf(j));
    }
}
