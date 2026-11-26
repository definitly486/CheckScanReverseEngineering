package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.unit.Density;

/* JADX INFO: loaded from: classes.dex */
public interface ScrollConfig {
    /* JADX INFO: renamed from: calculateMouseWheelScroll-8xgXZGE */
    long mo1454calculateMouseWheelScroll8xgXZGE(Density density, PointerEvent pointerEvent, long j);

    default boolean isPreciseWheelScroll(PointerEvent pointerEvent) {
        return false;
    }

    default boolean isSmoothScrollingEnabled() {
        return true;
    }
}
