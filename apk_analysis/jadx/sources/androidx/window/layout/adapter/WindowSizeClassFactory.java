package androidx.window.layout.adapter;

import androidx.window.core.layout.WindowSizeClass;
import androidx.window.core.layout.WindowSizeClassSelectors;
import androidx.window.layout.WindowMetrics;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowSizeClassFactory {
    public static final WindowSizeClass computeWindowSizeClass(Set<WindowSizeClass> set, WindowMetrics windowMetrics) {
        set.getClass();
        windowMetrics.getClass();
        return WindowSizeClassSelectors.computeWindowSizeClass(set, windowMetrics.getWidthDp(), windowMetrics.getHeightDp());
    }
}
