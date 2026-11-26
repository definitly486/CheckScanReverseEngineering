package androidx.window.core.layout;

import defpackage.c9;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.nn1;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.rg;
import defpackage.u96;
import defpackage.ul2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowSizeClass {
    public static final Set<WindowSizeClass> BREAKPOINTS_V1;
    public static final Set<WindowSizeClass> BREAKPOINTS_V2;
    public static final Companion Companion;
    private static final List<Integer> HEIGHT_DP_BREAKPOINTS_V1;
    private static final List<Integer> HEIGHT_DP_BREAKPOINTS_V2;
    public static final int HEIGHT_DP_EXPANDED_LOWER_BOUND = 900;
    public static final int HEIGHT_DP_MEDIUM_LOWER_BOUND = 480;
    private static final List<Integer> WIDTH_DP_BREAKPOINTS_V1;
    private static final List<Integer> WIDTH_DP_BREAKPOINTS_V2;
    public static final int WIDTH_DP_EXPANDED_LOWER_BOUND = 840;
    public static final int WIDTH_DP_EXTRA_LARGE_LOWER_BOUND = 1600;
    public static final int WIDTH_DP_LARGE_LOWER_BOUND = 1200;
    public static final int WIDTH_DP_MEDIUM_LOWER_BOUND = 600;
    private final int minHeightDp;
    private final int minWidthDp;

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        List<Integer> listI = u96.i(0, 600, Integer.valueOf(WIDTH_DP_EXPANDED_LOWER_BOUND));
        WIDTH_DP_BREAKPOINTS_V1 = listI;
        ArrayList arrayListH0 = qn1.h0(u96.i(Integer.valueOf(WIDTH_DP_LARGE_LOWER_BOUND), Integer.valueOf(WIDTH_DP_EXTRA_LARGE_LOWER_BOUND)), listI);
        WIDTH_DP_BREAKPOINTS_V2 = arrayListH0;
        List<Integer> listI2 = u96.i(0, Integer.valueOf(HEIGHT_DP_MEDIUM_LOWER_BOUND), 900);
        HEIGHT_DP_BREAKPOINTS_V1 = listI2;
        HEIGHT_DP_BREAKPOINTS_V2 = listI2;
        BREAKPOINTS_V1 = companion.createBreakpointSet(listI, listI2);
        BREAKPOINTS_V2 = companion.createBreakpointSet(arrayListH0, listI2);
    }

    public WindowSizeClass(int i, int i2) {
        this.minWidthDp = i;
        this.minHeightDp = i2;
        if (i < 0) {
            c9.f(qz0.d("Expected minWidthDp to be at least 0, minWidthDp: ", i, '.'));
            throw null;
        }
        if (i2 >= 0) {
            return;
        }
        c9.f(qz0.d("Expected minHeightDp to be at least 0, minHeightDp: ", i2, '.'));
        throw null;
    }

    @ul2
    public static final WindowSizeClass compute(float f, float f2) {
        return Companion.compute(f, f2);
    }

    @ul2
    public static /* synthetic */ void getWindowHeightSizeClass$annotations() {
    }

    @ul2
    public static /* synthetic */ void getWindowWidthSizeClass$annotations() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || WindowSizeClass.class != obj.getClass()) {
            return false;
        }
        WindowSizeClass windowSizeClass = (WindowSizeClass) obj;
        return this.minWidthDp == windowSizeClass.minWidthDp && this.minHeightDp == windowSizeClass.minHeightDp;
    }

    public final int getMinHeightDp() {
        return this.minHeightDp;
    }

    public final int getMinWidthDp() {
        return this.minWidthDp;
    }

    public final WindowHeightSizeClass getWindowHeightSizeClass() {
        return WindowHeightSizeClass.Companion.compute$window_core(this.minHeightDp);
    }

    public final WindowWidthSizeClass getWindowWidthSizeClass() {
        return WindowWidthSizeClass.Companion.compute$window_core(this.minWidthDp);
    }

    public int hashCode() {
        return (this.minWidthDp * 31) + this.minHeightDp;
    }

    public final boolean isAtLeastBreakpoint(int i, int i2) {
        return isWidthAtLeastBreakpoint(i) && isHeightAtLeastBreakpoint(i2);
    }

    public final boolean isHeightAtLeastBreakpoint(int i) {
        return this.minHeightDp >= i;
    }

    public final boolean isWidthAtLeastBreakpoint(int i) {
        return this.minWidthDp >= i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WindowSizeClass(minWidthDp=");
        sb.append(this.minWidthDp);
        sb.append(", minHeightDp=");
        return rg.h(sb, this.minHeightDp, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set<WindowSizeClass> createBreakpointSet(List<Integer> list, List<Integer> list2) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                int iIntValue = ((Number) it.next()).intValue();
                List<Integer> list3 = list2;
                ArrayList arrayList2 = new ArrayList(kn1.q(list3, 10));
                Iterator<T> it2 = list3.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new WindowSizeClass(iIntValue, ((Number) it2.next()).intValue()));
                }
                nn1.s(arrayList2, arrayList);
            }
            return qn1.y0(arrayList);
        }

        @ul2
        public final WindowSizeClass compute(float f, float f2) {
            int i;
            int i2 = 0;
            if (f >= 840.0f) {
                i = WindowSizeClass.WIDTH_DP_EXPANDED_LOWER_BOUND;
            } else {
                i = f >= 600.0f ? 600 : 0;
            }
            if (f2 >= 900.0f) {
                i2 = 900;
            } else if (f2 >= 480.0f) {
                i2 = WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND;
            }
            return new WindowSizeClass(i, i2);
        }

        private Companion() {
        }
    }

    public WindowSizeClass(float f, float f2) {
        this((int) f, (int) f2);
    }
}
