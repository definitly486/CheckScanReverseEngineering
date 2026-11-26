package androidx.compose.foundation.pager;

import androidx.collection.SieveCacheKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes.dex */
public final class PagerLayoutInfoKt {
    public static final int calculateContentSize(PagerLayoutInfo pagerLayoutInfo, int i) {
        int afterContentPadding = pagerLayoutInfo.getAfterContentPadding() + pagerLayoutInfo.getBeforeContentPadding();
        if (i == 0) {
            return afterContentPadding;
        }
        long j = i;
        long pageSpacing = ((j - 1) * ((long) pagerLayoutInfo.getPageSpacing())) + (((long) pagerLayoutInfo.getPageSize()) * j) + ((long) afterContentPadding);
        if (pageSpacing > SieveCacheKt.NodeLinkMask) {
            pageSpacing = 2147483647L;
        }
        return (int) pageSpacing;
    }

    public static final int getMainAxisViewportSize(PagerLayoutInfo pagerLayoutInfo) {
        return (int) (pagerLayoutInfo.getOrientation() == Orientation.Vertical ? pagerLayoutInfo.mo2300getViewportSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE : pagerLayoutInfo.mo2300getViewportSizeYbymL2g() >> 32);
    }
}
