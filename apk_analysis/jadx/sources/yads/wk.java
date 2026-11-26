package yads;

import android.content.Context;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class wk {
    public final kk a;

    public wk(Context context, q84 q84Var, pt3 pt3Var, int i) {
        this.a = new kk(context, q84Var, (i & 4) != 0 ? new pt3(context, q84Var) : pt3Var);
    }

    public final ArrayList a(JSONObject jSONObject, yo yoVar) {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = jSONObject.getJSONArray("assets");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            boolean z = jSONObject2.getBoolean("required");
            try {
                arrayList.add(this.a.a(jSONObject2, yoVar));
            } catch (Throwable th) {
                if (z) {
                    throw th;
                }
            }
        }
        return arrayList;
    }
}
