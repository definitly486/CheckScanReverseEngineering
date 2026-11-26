package yads;

import android.util.Log;
import android.view.View;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class qp6 {
    public final yp6 a;

    public qp6(yp6 yp6Var) {
        this.a = yp6Var;
    }

    public final JSONObject a(View view) {
        JSONObject jSONObjectA = rp6.a(0, 0, 0, 0);
        try {
            jSONObjectA.put("noOutputDevice", pp6.a[xn0.a(zo6.a() != 1 ? 2 : dq6.a)] == 1);
            return jSONObjectA;
        } catch (JSONException e) {
            Log.e("OMIDLIB", "Error with setting output device status", e);
            return jSONObjectA;
        }
    }
}
