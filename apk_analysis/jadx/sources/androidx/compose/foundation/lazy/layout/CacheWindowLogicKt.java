package androidx.compose.foundation.lazy.layout;

import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class CacheWindowLogicKt {
    private static final boolean DebugEnabled = false;
    public static final int InvalidIndex = -1;
    private static final int InvalidItemSize = -1;
    private static final int UnsetItemCount = -1;

    private static final void debugLog(ll3<String> ll3Var) {
    }

    public static final void forEachVisibleItem(CacheWindowScope cacheWindowScope, dm3<? super Integer, Object, ? super Integer, j59> dm3Var) {
        int visibleLineCount = cacheWindowScope.getVisibleLineCount();
        for (int i = 0; i < visibleLineCount; i++) {
            dm3Var.invoke(Integer.valueOf(cacheWindowScope.getVisibleItemLine(i)), cacheWindowScope.getVisibleLineKey(i), Integer.valueOf(cacheWindowScope.getVisibleItemSize(i)));
        }
    }
}
