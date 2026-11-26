package yads;

import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class va1 implements oa1 {
    @Override // yads.oa1
    public final View a(ka1 ka1Var, vq0 vq0Var, fs2 fs2Var, n32 n32Var) {
        pq0 pq0Var = vq0Var.l;
        r46 r46Var = un4.d.a(pq0Var).c;
        JSONObject jSONObject = ka1Var.i;
        Object obj = jSONObject != null ? jSONObject.get("on_image_url") : null;
        String str = obj instanceof String ? (String) obj : null;
        JSONObject jSONObject2 = ka1Var.i;
        Object obj2 = jSONObject2 != null ? jSONObject2.get("off_image_url") : null;
        String str2 = obj2 instanceof String ? (String) obj2 : null;
        yx5 yx5Var = new yx5(pq0Var);
        if (str != null) {
            yx5Var.setCheckedIcon(new BitmapDrawable(pq0Var.getResources(), r46Var.a(str)));
        }
        if (str2 != null) {
            yx5Var.setUncheckedIcon(new BitmapDrawable(pq0Var.getResources(), r46Var.a(str2)));
        }
        JSONObject jSONObject3 = ka1Var.i;
        if (jSONObject3 != null && jSONObject3.has("is_focusable")) {
            yx5Var.setFocusable(jSONObject3.optBoolean("is_focusable"));
        }
        return yx5Var;
    }

    @Override // yads.oa1
    public final boolean a(String str) {
        return "mute_button".equals(str);
    }
}
