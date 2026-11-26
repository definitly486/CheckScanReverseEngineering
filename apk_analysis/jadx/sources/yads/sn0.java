package yads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import defpackage.dp7;
import defpackage.zo7;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class sn0 {
    public final xd3 a;
    public final qe b;

    public sn0() {
        xd3 xd3Var = new xd3();
        qe qeVar = new qe();
        this.a = xd3Var;
        this.b = qeVar;
    }

    public final mn0 a(JSONObject jSONObject) {
        ArrayList arrayList;
        String strOptString = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        String strOptString2 = jSONObject.optString(TypedValues.AttributesType.S_TARGET);
        String strOptString3 = jSONObject.optString("layout");
        LinkedHashMap linkedHashMap = null;
        if (strOptString == null || strOptString.length() == 0 || strOptString2 == null || strOptString2.length() == 0 || strOptString3 == null || strOptString3.length() == 0) {
            return null;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("images");
        if (jSONArrayOptJSONArray != null) {
            xd3 xd3Var = this.a;
            xd3Var.getClass();
            ArrayList arrayList2 = new ArrayList();
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                arrayList2.add(xd3Var.a.a(jSONArrayOptJSONArray.getJSONObject(i)));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("analyticsParameters");
        if (jSONObjectOptJSONObject != null) {
            this.b.getClass();
            zo7 zo7VarF = dp7.f(jSONObjectOptJSONObject.keys());
            linkedHashMap = new LinkedHashMap();
            for (Object obj : (defpackage.lx1) zo7VarF) {
                linkedHashMap.put(obj, jSONObjectOptJSONObject.get((String) obj));
            }
        }
        return new mn0(strOptString, strOptString2, strOptString3, arrayList, linkedHashMap);
    }
}
