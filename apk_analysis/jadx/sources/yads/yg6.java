package yads;

import android.content.Context;
import android.content.SharedPreferences;
import com.tapjoy.TJAdUnitConstants;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class yg6 {
    public final SharedPreferences a;
    public final wg6 b;

    public yg6(Context context) {
        SharedPreferences sharedPreferencesA = bk5.a(context, "ViewSizeInfoStorage", new bk5());
        wg6 wg6Var = new wg6();
        this.a = sharedPreferencesA;
        this.b = wg6Var;
    }

    public final void a(zg6 zg6Var, vg6 vg6Var) throws JSONException {
        String strA = a(zg6Var);
        this.b.getClass();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(TJAdUnitConstants.String.WIDTH, vg6Var.a.a);
        jSONObject2.put(TJAdUnitConstants.String.HEIGHT, vg6Var.a.b);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put(TJAdUnitConstants.String.WIDTH, vg6Var.b.a);
        jSONObject3.put(TJAdUnitConstants.String.HEIGHT, vg6Var.b.b);
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        jSONObject4.put("value", vg6Var.c.a.a);
        String strName = vg6Var.c.a.b.name();
        Locale locale = Locale.ROOT;
        String lowerCase = strName.toLowerCase(locale);
        lowerCase.getClass();
        jSONObject4.put("mode", lowerCase);
        jSONObject5.put("value", vg6Var.c.b.a);
        String lowerCase2 = vg6Var.c.b.b.name().toLowerCase(locale);
        lowerCase2.getClass();
        jSONObject5.put("mode", lowerCase2);
        jSONObject6.put(TJAdUnitConstants.String.WIDTH, jSONObject4);
        jSONObject6.put(TJAdUnitConstants.String.HEIGHT, jSONObject5);
        JSONObject jSONObject7 = new JSONObject(vg6Var.d);
        jSONObject.put("view", jSONObject2);
        jSONObject.put("layout_params", jSONObject3);
        jSONObject.put("measured", jSONObject6);
        jSONObject.put("additional_info", jSONObject7);
        String string = jSONObject.toString();
        SharedPreferences.Editor editorEdit = this.a.edit();
        editorEdit.putString(strA, string);
        editorEdit.apply();
    }

    public static String a(zg6 zg6Var) {
        return zg6Var.a() + "-" + zg6Var.b();
    }
}
