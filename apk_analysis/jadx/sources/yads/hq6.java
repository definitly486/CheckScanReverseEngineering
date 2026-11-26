package yads;

import android.text.TextUtils;
import android.webkit.WebView;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class hq6 extends bp6 {
    public hq6(lp6 lp6Var, HashSet hashSet, JSONObject jSONObject, long j) {
        super(lp6Var, hashSet, jSONObject, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.mp6, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public final void onPostExecute(String str) {
        tp6 tp6Var;
        if (!TextUtils.isEmpty(str) && (tp6Var = tp6.c) != null) {
            for (dp6 dp6Var : Collections.unmodifiableCollection(tp6Var.a)) {
                if (this.c.contains(dp6Var.h)) {
                    s9 s9Var = dp6Var.e;
                    if (this.e >= s9Var.f) {
                        s9Var.e = 2;
                        nq6.a.a((WebView) s9Var.b.get(), "setNativeViewHierarchy", str, s9Var.a);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        if (rp6.b(this.d, this.b.a)) {
            return null;
        }
        lp6 lp6Var = this.b;
        JSONObject jSONObject = this.d;
        lp6Var.a = jSONObject;
        return jSONObject.toString();
    }
}
