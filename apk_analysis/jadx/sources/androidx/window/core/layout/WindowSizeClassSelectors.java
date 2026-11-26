package androidx.window.core.layout;

import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowSizeClassSelectors {
    public static final WindowSizeClass computeWindowSizeClass(Set<WindowSizeClass> set, int i, int i2) {
        set.getClass();
        Set<WindowSizeClass> set2 = set;
        int minWidthDp = 0;
        for (WindowSizeClass windowSizeClass : set2) {
            if (windowSizeClass.getMinWidthDp() <= i && windowSizeClass.getMinWidthDp() > minWidthDp) {
                minWidthDp = windowSizeClass.getMinWidthDp();
            }
        }
        WindowSizeClass windowSizeClass2 = new WindowSizeClass(0, 0);
        for (WindowSizeClass windowSizeClass3 : set2) {
            if (windowSizeClass3.getMinWidthDp() == minWidthDp && windowSizeClass3.getMinHeightDp() <= i2 && windowSizeClass2.getMinHeightDp() <= windowSizeClass3.getMinHeightDp()) {
                windowSizeClass2 = windowSizeClass3;
            }
        }
        return windowSizeClass2;
    }

    public static final WindowSizeClass computeWindowSizeClassPreferHeight(Set<WindowSizeClass> set, int i, int i2) {
        set.getClass();
        Set<WindowSizeClass> set2 = set;
        int minHeightDp = 0;
        for (WindowSizeClass windowSizeClass : set2) {
            if (windowSizeClass.getMinHeightDp() <= i2 && windowSizeClass.getMinHeightDp() > minHeightDp) {
                minHeightDp = windowSizeClass.getMinHeightDp();
            }
        }
        WindowSizeClass windowSizeClass2 = new WindowSizeClass(0, 0);
        for (WindowSizeClass windowSizeClass3 : set2) {
            if (windowSizeClass3.getMinHeightDp() == minHeightDp && windowSizeClass3.getMinWidthDp() <= i && windowSizeClass2.getMinWidthDp() <= windowSizeClass3.getMinWidthDp()) {
                windowSizeClass2 = windowSizeClass3;
            }
        }
        return windowSizeClass2;
    }

    public static final WindowSizeClass computeWindowSizeClass(Set<WindowSizeClass> set, float f, float f2) {
        set.getClass();
        return computeWindowSizeClass(set, (int) f, (int) f2);
    }
}
