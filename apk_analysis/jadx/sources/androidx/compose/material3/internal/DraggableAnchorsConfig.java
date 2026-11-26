package androidx.compose.material3.internal;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class DraggableAnchorsConfig<T> {
    public static final int $stable = 8;
    private final Map<T, Float> anchors = new LinkedHashMap();

    public final void at(T t, float f) {
        this.anchors.put(t, Float.valueOf(f));
    }

    public final Map<T, Float> getAnchors$material3() {
        return this.anchors;
    }
}
