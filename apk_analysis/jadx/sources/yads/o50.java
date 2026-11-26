package yads;

import com.tapjoy.TJAdUnitConstants;
import defpackage.v39;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class o50 {
    public final h75 a(e4 e4Var) {
        String str;
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
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (!v39.e(linkedHashMap2)) {
            linkedHashMap2 = null;
        }
        if (linkedHashMap2 == null) {
            linkedHashMap2 = new LinkedHashMap();
        }
        linkedHashMap2.put("image_loading_automatically", Boolean.valueOf(e4Var.m));
        return new h75(defpackage.n05.g(linkedHashMap, linkedHashMap2), (c) null);
    }
}
