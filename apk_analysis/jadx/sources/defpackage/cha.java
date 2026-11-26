package defpackage;

import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class cha {
    public final int a;
    public final float b;
    public final float c;

    public cha(int i, float f, float f2) {
        this.a = i;
        if (i > 0) {
            Integer.numberOfTrailingZeros(i);
        }
        this.b = f;
        this.c = f2;
    }

    public static String a(cha chaVar) {
        JSONObject jSONObject;
        if (chaVar != null) {
            try {
                jSONObject = new JSONObject();
                int i = chaVar.a;
                if (i != -1) {
                    jSONObject.put("clickArea", i);
                }
                float f = chaVar.b;
                if (f != 1.0f) {
                    jSONObject.put("xRelative", f);
                }
                float f2 = chaVar.c;
                if (f2 != 1.0f) {
                    jSONObject.put("yRelative", f2);
                }
                jSONObject.putOpt(TJAdUnitConstants.String.MESSAGE, null);
            } catch (Exception unused) {
                jSONObject = null;
            }
            if (jSONObject != null && jSONObject.length() > 0) {
                return jSONObject.toString();
            }
        }
        return null;
    }
}
