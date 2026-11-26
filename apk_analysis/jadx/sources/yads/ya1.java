package yads;

import android.view.View;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ya1 implements oa1 {
    @Override // yads.oa1
    public final View a(ka1 ka1Var, vq0 vq0Var, fs2 fs2Var, n32 n32Var) {
        f45 f45Var = new f45(vq0Var.l);
        JSONObject jSONObject = ka1Var.i;
        if (jSONObject != null) {
            if (jSONObject.has("is_focusable")) {
                f45Var.setFocusable(jSONObject.optBoolean("is_focusable"));
            }
            if (jSONObject.has("descendant_focusability")) {
                f45Var.setDescendantFocusability(jSONObject.optInt("descendant_focusability"));
            }
        }
        return f45Var;
    }

    @Override // yads.oa1
    public final boolean a(String str) {
        return "rating".equals(str);
    }
}
