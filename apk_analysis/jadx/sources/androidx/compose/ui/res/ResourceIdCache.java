package androidx.compose.ui.res;

import android.content.res.Resources;
import android.util.TypedValue;
import androidx.collection.MutableIntObjectMap;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ResourceIdCache {
    public static final int $stable = 8;
    private final MutableIntObjectMap<TypedValue> resIdPathMap = new MutableIntObjectMap<>(0, 1, null);

    public final void clear() {
        synchronized (this) {
            this.resIdPathMap.clear();
            j59 j59Var = j59.a;
        }
    }

    public final TypedValue resolveResourcePath(Resources resources, int i) {
        TypedValue typedValue;
        synchronized (this) {
            typedValue = this.resIdPathMap.get(i);
            if (typedValue == null) {
                typedValue = new TypedValue();
                resources.getValue(i, typedValue, true);
                this.resIdPathMap.put(i, typedValue);
            }
        }
        return typedValue;
    }
}
