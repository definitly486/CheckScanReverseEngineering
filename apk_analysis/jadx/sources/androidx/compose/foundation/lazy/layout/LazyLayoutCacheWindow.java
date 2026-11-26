package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.unit.Density;

/* JADX INFO: loaded from: classes.dex */
public interface LazyLayoutCacheWindow {
    default int calculateAheadWindow(Density density, int i) {
        return 0;
    }

    default int calculateBehindWindow(Density density, int i) {
        return 0;
    }
}
