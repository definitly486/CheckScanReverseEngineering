package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.v39;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class e40 {
    public final e95 a;
    public final u8 b;
    public final o50 c;

    public e40() {
        e95 e95Var = new e95();
        u8 u8Var = new u8();
        o50 o50Var = new o50();
        this.a = e95Var;
        this.b = u8Var;
        this.c = o50Var;
    }

    public final h75 a(e4 e4Var, d9 d9Var) {
        String str;
        h75 h75VarB = this.a.b(e4Var, d9Var);
        h75 h75VarA = this.b.a(e4Var.e);
        this.c.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!v39.e(linkedHashMap)) {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        int i = e4Var.n;
        if (i != 1) {
            str = i != 2 ? StringUtils.UNDEFINED : TJAdUnitConstants.String.LANDSCAPE;
        } else {
            str = TJAdUnitConstants.String.PORTRAIT;
        }
        linkedHashMap.put(TJAdUnitConstants.String.ORIENTATION, str);
        h75 h75VarA2 = i75.a(h75VarB, h75VarA);
        c cVar = h75VarA2.b;
        return new h75(defpackage.n05.g(h75VarA2.a, linkedHashMap), cVar != null ? cVar : null);
    }
}
