package androidx.compose.foundation.pager;

import defpackage.ll3;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public final class PagerScrollPositionKt {
    public static final int NearestItemsExtraItemCount = 100;
    public static final int NearestItemsSlidingWindowSize = 30;

    public static final long currentAbsoluteScrollOffset(PagerState pagerState) {
        return w65.c(pagerState.getCurrentPageOffsetFraction() * pagerState.getPageSizeWithSpacing$foundation()) + (((long) pagerState.getCurrentPage()) * ((long) pagerState.getPageSizeWithSpacing$foundation()));
    }

    private static final void debugLog(ll3<String> ll3Var) {
    }
}
