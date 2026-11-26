package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
final class DpLazyLayoutCacheWindow implements LazyLayoutCacheWindow {
    private final float ahead;
    private final float behind;

    private DpLazyLayoutCacheWindow(float f, float f2) {
        this.ahead = f;
        this.behind = f2;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow
    public int calculateAheadWindow(Density density, int i) {
        return density.mo1428roundToPx0680j_4(this.ahead);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow
    public int calculateBehindWindow(Density density, int i) {
        return density.mo1428roundToPx0680j_4(this.behind);
    }

    public boolean equals(Object obj) {
        if (obj instanceof DpLazyLayoutCacheWindow) {
            DpLazyLayoutCacheWindow dpLazyLayoutCacheWindow = (DpLazyLayoutCacheWindow) obj;
            if (Dp.m9047equalsimpl0(dpLazyLayoutCacheWindow.ahead, this.ahead) && Dp.m9047equalsimpl0(dpLazyLayoutCacheWindow.behind, this.behind)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: getAhead-D9Ej5fM, reason: not valid java name */
    public final float m2195getAheadD9Ej5fM() {
        return this.ahead;
    }

    /* JADX INFO: renamed from: getBehind-D9Ej5fM, reason: not valid java name */
    public final float m2196getBehindD9Ej5fM() {
        return this.behind;
    }

    public int hashCode() {
        return Dp.m9048hashCodeimpl(this.behind) + (Dp.m9048hashCodeimpl(this.ahead) * 31);
    }

    public /* synthetic */ DpLazyLayoutCacheWindow(float f, float f2, jh2 jh2Var) {
        this(f, f2);
    }
}
