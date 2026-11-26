package yads;

import android.content.Context;
import com.tapjoy.TJAdUnitConstants;
import defpackage.v39;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class l00 {
    public final d9 a;
    public final e4 b;
    public final re4 c;
    public final q84 d;
    public final e40 e;
    public final le f;

    public l00(Context context, d9 d9Var, e4 e4Var, bf5 bf5Var, re4 re4Var) {
        Context context2 = ((do6) bf5Var).a;
        q84 q84VarA = mw.a(context2, context2);
        e40 e40Var = new e40();
        le leVar = new le(context);
        this.a = d9Var;
        this.b = e4Var;
        this.c = re4Var;
        this.d = q84VarA;
        this.e = e40Var;
        this.f = leVar;
    }

    public final g75 a(e75 e75Var, Map map) {
        if (!v39.e(map)) {
            map = null;
        }
        if (map == null) {
            map = new LinkedHashMap();
        }
        String str = c75.a;
        if (str == null) {
            map.put("adapter", StringUtils.UNDEFINED);
        } else {
            map.put("adapter", str);
        }
        h75 h75VarA = this.e.a(this.b, this.a);
        c cVar = h75VarA.b;
        LinkedHashMap linkedHashMapG = defpackage.n05.g(map, h75VarA.a);
        LinkedHashMap linkedHashMap = v39.e(linkedHashMapG) ? linkedHashMapG : null;
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        sl5 sl5Var = this.b.d.a;
        if (sl5Var != null) {
            linkedHashMap.put("size_type", sl5Var.b().b);
            linkedHashMap.put(TJAdUnitConstants.String.WIDTH, Integer.valueOf(sl5Var.getWidth()));
            linkedHashMap.put(TJAdUnitConstants.String.HEIGHT, Integer.valueOf(sl5Var.getHeight()));
        }
        re4 re4Var = this.c;
        if (re4Var != null) {
            defpackage.uz4 uz4Var = new defpackage.uz4();
            uz4Var.put("asset_name", re4Var.a);
            uz4Var.put("action_type", "url");
            zh4 zh4Var = re4Var.b;
            if (zh4Var != null) {
                uz4Var.putAll(zh4Var.a().a);
            }
            LinkedHashMap linkedHashMap2 = re4Var.c.a;
            if (linkedHashMap2 != null) {
                uz4Var.putAll(linkedHashMap2);
            }
            linkedHashMap.putAll(uz4Var.b());
        }
        return new g75(e75Var.b, new LinkedHashMap(linkedHashMap), cVar);
    }
}
