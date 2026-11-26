package yads;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tapjoy.TJAdUnitConstants;
import defpackage.v39;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class n00 {
    public final e4 a;
    public final bf5 b;

    public n00(e4 e4Var, bf5 bf5Var) {
        this.a = e4Var;
        this.b = bf5Var;
    }

    public final void a(Context context, n70 n70Var, qy4 qy4Var, Long l) {
        Map linkedHashMap = defpackage.mx2.b;
        if (!v39.e(linkedHashMap)) {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        String str = StringUtils.UNDEFINED;
        if (n70Var == null) {
            linkedHashMap.put("ad_type", StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put("ad_type", n70Var);
        }
        if (l == null) {
            linkedHashMap.put(TypedValues.TransitionType.S_DURATION, StringUtils.UNDEFINED);
        } else {
            linkedHashMap.put(TypedValues.TransitionType.S_DURATION, l);
        }
        LinkedHashMap linkedHashMapA = sy4.a(qy4Var);
        linkedHashMap.putAll(linkedHashMapA);
        String str2 = (String) linkedHashMapA.get("adapter");
        e95 e95Var = new e95();
        u8 u8Var = new u8();
        e4 e4Var = this.a;
        h75 h75VarB = e95Var.b(e4Var, null);
        h75 h75VarA = u8Var.a(e4Var.e);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (!v39.e(linkedHashMap2)) {
            linkedHashMap2 = null;
        }
        if (linkedHashMap2 == null) {
            linkedHashMap2 = new LinkedHashMap();
        }
        int i = e4Var.n;
        if (i == 1) {
            str = TJAdUnitConstants.String.PORTRAIT;
        } else if (i == 2) {
            str = TJAdUnitConstants.String.LANDSCAPE;
        }
        linkedHashMap2.put(TJAdUnitConstants.String.ORIENTATION, str);
        h75 h75VarA2 = i75.a(h75VarB, h75VarA);
        c cVar = h75VarA2.b;
        if (cVar == null) {
            cVar = null;
        }
        h75 h75Var = new h75(defpackage.n05.g(h75VarA2.a, linkedHashMap2), cVar);
        c cVar2 = h75Var.b;
        LinkedHashMap linkedHashMapG = defpackage.n05.g(linkedHashMap, h75Var.a);
        if (!v39.e(linkedHashMapG)) {
            linkedHashMapG = null;
        }
        if (linkedHashMapG == null) {
            linkedHashMapG = new LinkedHashMap();
        }
        e75 e75Var = e75.CLIENT_BIDDING_LOADING_RESULT;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMapG);
        g75 g75Var = new g75("client_bidding_loading_result", linkedHashMap3, cVar2);
        this.b.getClass();
        re.a(context, new lm6(((do6) this.b).a)).a(g75Var);
        new le(context).a(e75Var, linkedHashMap3, str2, null);
    }
}
