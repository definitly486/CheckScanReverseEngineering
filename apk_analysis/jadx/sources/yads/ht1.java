package yads;

import androidx.collection.ArrayMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ht1 implements ct4 {
    public final et4 a;
    public final px b;
    public final px c;
    public final lv5 d = new defpackage.mi2();

    public ht1(et4 et4Var, px pxVar) {
        this.a = et4Var;
        this.b = pxVar;
        this.c = pxVar;
    }

    public final void a(JSONObject jSONObject) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        try {
            LinkedHashMap linkedHashMapA = yq3.a(this, jSONObject);
            arrayMap.putAll((Map) this.b.a.a);
            ov5 ov5Var = new ov5(arrayMap);
            for (Map.Entry entry : linkedHashMapA.entrySet()) {
                String str = (String) entry.getKey();
                Set set = (Set) entry.getValue();
                try {
                    dt4 dt4Var = new dt4(ov5Var, new mv5(str, this.a));
                    lv5 lv5Var = this.d;
                    JSONObject jSONObject2 = jSONObject.getJSONObject(str);
                    ((defpackage.mi2) lv5Var).getClass();
                    arrayMap.put(str, a(dt4Var, true, jSONObject2));
                    if (!set.isEmpty()) {
                        arrayMap2.put(str, set);
                    }
                } catch (ft4 e) {
                    this.a.a(e, str);
                }
            }
        } catch (Exception e2) {
            this.a.b(e2);
        }
        px pxVar = this.b;
        for (Map.Entry entry2 : arrayMap.entrySet()) {
            gf3 gf3Var = pxVar.a;
            gf3Var.a.put((String) entry2.getKey(), (xq3) entry2.getValue());
        }
    }

    @Override // yads.ys4
    public final pv5 b() {
        return this.c;
    }

    @Override // yads.ys4
    public final et4 a() {
        return this.a;
    }

    public static final q72 a(ct4 ct4Var, boolean z, JSONObject jSONObject) {
        return ((gn1) gv.a.t9.getValue()).a(ct4Var, jSONObject);
    }
}
