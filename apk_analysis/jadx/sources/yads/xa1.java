package yads;

import android.R;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ProgressBar;
import com.yandex.mobile.ads.R$drawable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xa1 implements oa1 {
    @Override // yads.oa1
    public final View a(ka1 ka1Var, vq0 vq0Var, fs2 fs2Var, n32 n32Var) throws JSONException {
        int color;
        String string = null;
        ProgressBar progressBar = new ProgressBar(vq0Var.l, null, R.attr.progressBarStyleHorizontal);
        JSONObject jSONObject = ka1Var.i;
        if (jSONObject == null || !jSONObject.has("progress_color")) {
            string = "#000000";
        } else {
            JSONObject jSONObject2 = ka1Var.i;
            if (jSONObject2 != null) {
                string = jSONObject2.getString("progress_color");
            }
        }
        try {
            color = Color.parseColor(string);
        } catch (Throwable unused) {
            color = -16777216;
        }
        Drawable drawable = progressBar.getContext().getDrawable(R$drawable.monetization_ads_internal_circular_close_progress);
        if (drawable != null) {
            drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
        progressBar.setProgressDrawable(drawable);
        JSONObject jSONObject3 = ka1Var.i;
        if (jSONObject3 != null && jSONObject3.has("is_focusable")) {
            progressBar.setFocusable(jSONObject3.optBoolean("is_focusable"));
        }
        return progressBar;
    }

    @Override // yads.oa1
    public final boolean a(String str) {
        return defpackage.aa4.e(str, "close_progress_view");
    }
}
