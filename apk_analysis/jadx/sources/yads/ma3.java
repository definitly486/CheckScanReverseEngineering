package yads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ma3 {
    public final HashMap a = new HashMap();
    public Map b;

    public final synchronized Map a() {
        Map mapUnmodifiableMap;
        mapUnmodifiableMap = this.b;
        if (mapUnmodifiableMap == null) {
            mapUnmodifiableMap = Collections.unmodifiableMap(new HashMap(this.a));
            this.b = mapUnmodifiableMap;
        }
        return mapUnmodifiableMap;
    }
}
