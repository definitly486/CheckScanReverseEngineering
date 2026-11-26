package yads;

import android.content.Context;
import defpackage.v39;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class xb6 {
    public final d9 a;
    public final q84 b;
    public final vb6 c;
    public vh3 d;
    public wb6 e;
    public Map f;

    public xb6(Context context, bf5 bf5Var, d9 d9Var, t5 t5Var) {
        bf5Var.getClass();
        q84 q84VarA = re.a(context, new lm6(((do6) bf5Var).a));
        vb6 vb6Var = new vb6(t5Var);
        this.a = d9Var;
        this.b = q84VarA;
        this.c = vb6Var;
    }

    public final void a(Map map) {
        Map map2 = this.f;
        Map linkedHashMap = defpackage.mx2.b;
        if (map2 == null) {
            map2 = linkedHashMap;
        }
        map.putAll(map2);
        if (this.d != null) {
            if (!v39.e(linkedHashMap)) {
                linkedHashMap = null;
            }
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
            }
            m70 m70Var = n70.c;
            linkedHashMap.put("ad_type", "instream");
            throw null;
        }
        map.putAll(linkedHashMap);
        wb6 wb6Var = this.e;
        Map map3 = wb6Var != null ? wb6Var.a().a : null;
        if (map3 != null) {
            linkedHashMap = map3;
        }
        map.putAll(linkedHashMap);
        e75 e75Var = e75.AD_LOADING_RESULT;
        d9 d9Var = this.a;
        this.b.a(new g75("video_ad_rendering_result", new LinkedHashMap(map), d9Var != null ? d9Var.i : null));
    }
}
