package androidx.compose.foundation.pager;

import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.kx6;
import defpackage.t74;

/* JADX INFO: loaded from: classes.dex */
final class PagerBringIntoViewSpec implements BringIntoViewSpec {
    private final BringIntoViewSpec defaultBringIntoViewSpec;
    private final LayoutDirection layoutDirection;
    private final PagerState pagerState;

    public PagerBringIntoViewSpec(PagerState pagerState, BringIntoViewSpec bringIntoViewSpec, LayoutDirection layoutDirection) {
        this.pagerState = pagerState;
        this.defaultBringIntoViewSpec = bringIntoViewSpec;
        this.layoutDirection = layoutDirection;
    }

    private final boolean getShouldChangeScrollDirection(PagerState pagerState) {
        return this.layoutDirection == LayoutDirection.Rtl && pagerState.getLayoutInfo().getOrientation() == Orientation.Horizontal;
    }

    private final float overrideProposedOffsetMove(float f) {
        float layoutAwareFirstOffset = getLayoutAwareFirstOffset(this.pagerState) * (-1.0f);
        while (f > 0.0f && layoutAwareFirstOffset < f) {
            layoutAwareFirstOffset += this.pagerState.getPageSizeWithSpacing$foundation();
        }
        while (f < 0.0f && layoutAwareFirstOffset > f) {
            layoutAwareFirstOffset -= this.pagerState.getPageSizeWithSpacing$foundation();
        }
        return layoutAwareFirstOffset;
    }

    private final float settlingScrollDistance(float f) {
        int pageSizeWithSpacing$foundation;
        float layoutAwareFirstOffset = getLayoutAwareFirstOffset(this.pagerState) * (-1.0f);
        boolean shouldChangeScrollDirection = getShouldChangeScrollDirection(this.pagerState);
        PagerState pagerState = this.pagerState;
        if (shouldChangeScrollDirection) {
            if (!pagerState.getLastScrolledForward()) {
                pageSizeWithSpacing$foundation = this.pagerState.getPageSizeWithSpacing$foundation();
                layoutAwareFirstOffset += pageSizeWithSpacing$foundation;
            }
        } else if (pagerState.getLastScrolledForward()) {
            pageSizeWithSpacing$foundation = this.pagerState.getPageSizeWithSpacing$foundation();
            layoutAwareFirstOffset += pageSizeWithSpacing$foundation;
        }
        return kx6.d(layoutAwareFirstOffset, -f, f);
    }

    @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
    public float calculateScrollDistance(float f, float f2, float f3) {
        float fCalculateScrollDistance = this.defaultBringIntoViewSpec.calculateScrollDistance(f, f2, f3);
        boolean z = false;
        if (f <= 0.0f ? f + f2 <= VisibilityThresholdsKt.getVisibilityThreshold(t74.a) : f + f2 > f3) {
            z = true;
        }
        if (Math.abs(fCalculateScrollDistance) != 0.0f && z) {
            return overrideProposedOffsetMove(fCalculateScrollDistance);
        }
        if (Math.abs(this.pagerState.getFirstVisiblePageOffset$foundation()) < 1.0E-6d) {
            return 0.0f;
        }
        return settlingScrollDistance(f3);
    }

    public final BringIntoViewSpec getDefaultBringIntoViewSpec() {
        return this.defaultBringIntoViewSpec;
    }

    public final int getLayoutAwareFirstOffset(PagerState pagerState) {
        if (!getShouldChangeScrollDirection(pagerState)) {
            return pagerState.getFirstVisiblePageOffset$foundation();
        }
        return pagerState.getPageSizeWithSpacing$foundation() + (-pagerState.getFirstVisiblePageOffset$foundation());
    }

    public final LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    public final PagerState getPagerState() {
        return this.pagerState;
    }
}
