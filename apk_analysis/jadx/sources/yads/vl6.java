package yads;

import androidx.core.app.NotificationCompat;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class vl6 implements h85 {
    public final ac6 a;

    public vl6(ac6 ac6Var) {
        this.a = ac6Var;
    }

    @Override // yads.h85
    public final g75 a(z85 z85Var, int i, Object obj, hi6 hi6Var) {
        f75 f75Var;
        v76 v76Var = z85Var != null ? (v76) z85Var.a : null;
        if (204 == i) {
            f75Var = f75.NO_ADS;
        } else if (v76Var == null || i != 200) {
            f75Var = f75.ERROR;
        } else {
            f75Var = v76Var.a.b.isEmpty() ? f75.NO_ADS : f75.SUCCESS;
        }
        Map mapA = this.a.a();
        Map mapSingletonMap = Collections.singletonMap(NotificationCompat.CATEGORY_STATUS, f75Var.b);
        mapSingletonMap.getClass();
        LinkedHashMap linkedHashMapG = defpackage.n05.g(mapA, mapSingletonMap);
        e75 e75Var = e75.AD_LOADING_RESULT;
        return new g75("vast_wrapper_response", new LinkedHashMap(linkedHashMapG), (c) null);
    }

    @Override // yads.h85
    public final g75 a(Object obj) {
        Map mapA = this.a.a();
        e75 e75Var = e75.AD_LOADING_RESULT;
        return new g75("vast_wrapper_request", defpackage.n05.n(mapA), (c) null);
    }
}
