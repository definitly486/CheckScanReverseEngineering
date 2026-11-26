package yads;

import android.webkit.WebView;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class eq6 extends bp6 {
    public eq6(lp6 lp6Var, HashSet hashSet, JSONObject jSONObject, long j) {
        super(lp6Var, hashSet, jSONObject, j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yads.mp6, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public final void onPostExecute(String str) {
        tp6 tp6Var = tp6.c;
        if (tp6Var != null) {
            for (dp6 dp6Var : Collections.unmodifiableCollection(tp6Var.a)) {
                if (this.c.contains(dp6Var.h)) {
                    s9 s9Var = dp6Var.e;
                    if (this.e >= s9Var.f && s9Var.e != 3) {
                        s9Var.e = 3;
                        nq6.a.a((WebView) s9Var.b.get(), "setNativeViewHierarchy", str, s9Var.a);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        return this.d.toString();
    }
}
