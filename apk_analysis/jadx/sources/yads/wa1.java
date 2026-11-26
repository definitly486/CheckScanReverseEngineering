package yads;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.view.View;
import android.widget.ProgressBar;
import defpackage.k57;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class wa1 implements oa1 {
    @Override // yads.oa1
    public final View a(ka1 ka1Var, vq0 vq0Var, fs2 fs2Var, n32 n32Var) {
        ProgressBar progressBar = new ProgressBar(vq0Var.l, null, R.attr.progressBarStyleHorizontal);
        Integer numA = a(ka1Var, "progress_color");
        if (numA != null) {
            progressBar.setProgressTintList(ColorStateList.valueOf(numA.intValue()));
        }
        Integer numA2 = a(ka1Var, "background_color");
        if (numA2 != null) {
            progressBar.setProgressBackgroundTintList(ColorStateList.valueOf(numA2.intValue()));
        }
        JSONObject jSONObject = ka1Var.i;
        if (jSONObject != null && jSONObject.has("is_focusable")) {
            progressBar.setFocusable(jSONObject.optBoolean("is_focusable"));
        }
        return progressBar;
    }

    public static Integer a(ka1 ka1Var, String str) {
        Object aVar;
        JSONObject jSONObject = ka1Var.i;
        try {
            aVar = Integer.valueOf(Color.parseColor(jSONObject != null ? jSONObject.optString(str) : null));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        return (Integer) (aVar instanceof k57.a ? null : aVar);
    }
}
