package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.media3.muxer.MuxerUtil;
import defpackage.qn1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridLayoutInfoKt {
    public static final int calculateContentSize(LazyGridLayoutInfo lazyGridLayoutInfo) {
        int afterContentPadding = lazyGridLayoutInfo.getAfterContentPadding() + lazyGridLayoutInfo.getBeforeContentPadding();
        if (lazyGridLayoutInfo.getTotalItemsCount() == 0) {
            return afterContentPadding;
        }
        int iCeil = (int) Math.ceil(lazyGridLayoutInfo.getTotalItemsCount() / lazyGridLayoutInfo.getMaxSpan());
        return (lazyGridLayoutInfo.getMainAxisItemSpacing() * (iCeil - 1)) + ((visibleLinesAverageMainAxisSize(lazyGridLayoutInfo) - lazyGridLayoutInfo.getMainAxisItemSpacing()) * iCeil) + afterContentPadding;
    }

    public static final int getFirstVisibleItemLineIndex(LazyGridLayoutInfo lazyGridLayoutInfo) {
        List<LazyGridItemInfo> visibleItemsInfo = lazyGridLayoutInfo.getVisibleItemsInfo();
        if (visibleItemsInfo.isEmpty()) {
            return 0;
        }
        return lazyGridLayoutInfo.getOrientation() == Orientation.Vertical ? ((LazyGridItemInfo) qn1.T(visibleItemsInfo)).getRow() : ((LazyGridItemInfo) qn1.T(visibleItemsInfo)).getColumn();
    }

    public static final int getSingleAxisViewportSize(LazyGridLayoutInfo lazyGridLayoutInfo) {
        return (int) (lazyGridLayoutInfo.getOrientation() == Orientation.Vertical ? lazyGridLayoutInfo.mo2187getViewportSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE : lazyGridLayoutInfo.mo2187getViewportSizeYbymL2g() >> 32);
    }

    public static final int visibleLinesAverageMainAxisSize(LazyGridLayoutInfo lazyGridLayoutInfo) {
        boolean z = lazyGridLayoutInfo.getOrientation() == Orientation.Vertical;
        List<LazyGridItemInfo> visibleItemsInfo = lazyGridLayoutInfo.getVisibleItemsInfo();
        if (visibleItemsInfo.isEmpty()) {
            return 0;
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < visibleItemsInfo.size()) {
            int iVisibleLinesAverageMainAxisSize$lineOf = visibleLinesAverageMainAxisSize$lineOf(z, lazyGridLayoutInfo, i);
            if (iVisibleLinesAverageMainAxisSize$lineOf == -1) {
                i++;
            } else {
                int iMax = 0;
                while (i < visibleItemsInfo.size() && visibleLinesAverageMainAxisSize$lineOf(z, lazyGridLayoutInfo, i) == iVisibleLinesAverageMainAxisSize$lineOf) {
                    iMax = Math.max(iMax, (int) (z ? visibleItemsInfo.get(i).mo2185getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE : visibleItemsInfo.get(i).mo2185getSizeYbymL2g() >> 32));
                    i++;
                }
                i2 += iMax;
                i3++;
            }
        }
        return lazyGridLayoutInfo.getMainAxisItemSpacing() + (i2 / i3);
    }

    private static final int visibleLinesAverageMainAxisSize$lineOf(boolean z, LazyGridLayoutInfo lazyGridLayoutInfo, int i) {
        return z ? lazyGridLayoutInfo.getVisibleItemsInfo().get(i).getRow() : lazyGridLayoutInfo.getVisibleItemsInfo().get(i).getColumn();
    }
}
