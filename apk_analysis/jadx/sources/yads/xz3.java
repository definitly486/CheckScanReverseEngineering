package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class xz3 {
    public final dp6 a;

    public xz3(dp6 dp6Var) {
        this.a = dp6Var;
    }

    public final void a(float f, float f2) {
        if (f <= 0.0f) {
            defpackage.fg.c("Invalid Media duration");
            return;
        }
        if (f2 < 0.0f || f2 > 1.0f) {
            defpackage.fg.c("Invalid Media volume");
            return;
        }
        jq6.a(this.a);
        JSONObject jSONObject = new JSONObject();
        rp6.a(jSONObject, TypedValues.TransitionType.S_DURATION, Float.valueOf(f));
        rp6.a(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
        rp6.a(jSONObject, "deviceVolume", Float.valueOf(oq6.a().a));
        this.a.e.a(TtmlNode.START, jSONObject);
    }

    public final void a(float f) {
        if (f >= 0.0f && f <= 1.0f) {
            jq6.a(this.a);
            JSONObject jSONObject = new JSONObject();
            rp6.a(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
            rp6.a(jSONObject, "deviceVolume", Float.valueOf(oq6.a().a));
            this.a.e.a("volumeChange", jSONObject);
            return;
        }
        defpackage.fg.c("Invalid Media volume");
    }
}
