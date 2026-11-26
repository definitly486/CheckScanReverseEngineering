package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.media3.muxer.MuxerUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListLayoutInfoKt {
    public static final int calculateContentSize(LazyListLayoutInfo lazyListLayoutInfo) {
        int afterContentPadding = lazyListLayoutInfo.getAfterContentPadding() + lazyListLayoutInfo.getBeforeContentPadding();
        if (lazyListLayoutInfo.getTotalItemsCount() == 0) {
            return afterContentPadding;
        }
        return (lazyListLayoutInfo.getMainAxisItemSpacing() * (lazyListLayoutInfo.getTotalItemsCount() - 1)) + (lazyListLayoutInfo.getTotalItemsCount() * (visibleItemsAverageSize(lazyListLayoutInfo) - lazyListLayoutInfo.getMainAxisItemSpacing())) + afterContentPadding;
    }

    public static final int getSingleAxisViewportSize(LazyListLayoutInfo lazyListLayoutInfo) {
        return (int) (lazyListLayoutInfo.getOrientation() == Orientation.Vertical ? lazyListLayoutInfo.mo2157getViewportSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE : lazyListLayoutInfo.mo2157getViewportSizeYbymL2g() >> 32);
    }

    public static final int visibleItemsAverageSize(LazyListLayoutInfo lazyListLayoutInfo) {
        List<LazyListItemInfo> visibleItemsInfo = lazyListLayoutInfo.getVisibleItemsInfo();
        if (visibleItemsInfo.isEmpty()) {
            return 0;
        }
        int size = visibleItemsInfo.size();
        int size2 = 0;
        for (int i = 0; i < size; i++) {
            size2 += visibleItemsInfo.get(i).getSize();
        }
        return lazyListLayoutInfo.getMainAxisItemSpacing() + (size2 / visibleItemsInfo.size());
    }
}
