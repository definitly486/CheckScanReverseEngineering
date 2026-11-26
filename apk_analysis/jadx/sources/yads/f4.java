package yads;

import android.util.Log;
import android.webkit.WebView;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class f4 {
    public final dp6 a;

    public f4(dp6 dp6Var) {
        this.a = dp6Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(f86 f86Var) {
        jq6.a(this.a);
        this.a.b.getClass();
        dp6 dp6Var = this.a;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", f86Var.a);
            if (f86Var.a) {
                jSONObject.put("skipOffset", f86Var.b);
            }
            jSONObject.put("autoPlay", true);
            jSONObject.put("position", f86Var.c);
        } catch (JSONException e) {
            Log.e("OMIDLIB", "VastProperties: JSON error", e);
        }
        if (dp6Var.j) {
            defpackage.ah.f("Loaded event can only be sent once");
            return;
        }
        s9 s9Var = dp6Var.e;
        nq6.a.a((WebView) s9Var.b.get(), "publishLoadedEvent", jSONObject, s9Var.a);
        dp6Var.j = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        dp6 dp6Var = this.a;
        if (!dp6Var.g) {
            dp6Var.b.getClass();
            dp6 dp6Var2 = this.a;
            if (!dp6Var2.f || dp6Var2.g) {
                try {
                    dp6Var2.b();
                } catch (Exception unused) {
                }
            }
            dp6 dp6Var3 = this.a;
            if (!dp6Var3.f || dp6Var3.g) {
                return;
            }
            if (!dp6Var3.i) {
                s9 s9Var = dp6Var3.e;
                nq6.a.a((WebView) s9Var.b.get(), "publishImpressionEvent", s9Var.a);
                dp6Var3.i = true;
                return;
            }
            defpackage.ah.f("Impression event can only be sent once");
            return;
        }
        defpackage.ah.f("AdSession is finished");
    }
}
