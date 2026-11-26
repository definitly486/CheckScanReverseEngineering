package yads;

import android.content.Context;
import com.tapjoy.TJAdUnitConstants;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class p34 extends v34 {
    public p34(e4 e4Var) {
        super(e4Var);
    }

    @Override // yads.v34
    public final Map a(Context context) {
        LinkedHashMap linkedHashMapN = defpackage.n05.n(super.a(context));
        sl5 sl5Var = this.a.d.a;
        if (sl5Var != null) {
            linkedHashMapN.put(TJAdUnitConstants.String.WIDTH, Integer.valueOf(sl5Var.c(context)));
            linkedHashMapN.put(TJAdUnitConstants.String.HEIGHT, Integer.valueOf(sl5Var.a(context)));
        }
        return linkedHashMapN;
    }
}
