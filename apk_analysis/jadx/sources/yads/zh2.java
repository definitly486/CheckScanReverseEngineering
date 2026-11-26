package yads;

import androidx.collection.ArrayMap;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes6.dex */
public final class zh2 {
    public final ArrayMap a = new ArrayMap();

    public final int a(String str) {
        if (str == null) {
            return -1;
        }
        ArrayMap arrayMap = this.a;
        Object objValueOf = arrayMap.get(str);
        if (objValueOf == null) {
            objValueOf = Integer.valueOf(ViewCompat.generateViewId());
            arrayMap.put(str, objValueOf);
        }
        return ((Number) objValueOf).intValue();
    }
}
