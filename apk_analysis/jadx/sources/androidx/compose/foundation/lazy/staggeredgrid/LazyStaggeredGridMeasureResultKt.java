package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.gx2;
import defpackage.kx2;
import defpackage.mx2;
import defpackage.qn1;
import defpackage.u96;
import defpackage.z22;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridMeasureResultKt {
    private static final int[] EmptyArray;
    private static final LazyStaggeredGridMeasureResult EmptyLazyStaggeredGridLayoutInfo;

    static {
        int[] iArr = new int[0];
        EmptyArray = iArr;
        MeasureResult measureResult = new MeasureResult() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResultKt$EmptyLazyStaggeredGridLayoutInfo$1
            private final Map<AlignmentLine, Integer> alignmentLines = mx2.b;
            private final int height;
            private final int width;

            public static /* synthetic */ void getAlignmentLines$annotations() {
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public Map<AlignmentLine, Integer> getAlignmentLines() {
                return this.alignmentLines;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getHeight() {
                return this.height;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getWidth() {
                return this.width;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public void placeChildren() {
            }
        };
        long jM9218getZeroYbymL2g = IntSize.Companion.m9218getZeroYbymL2g();
        EmptyLazyStaggeredGridLayoutInfo = new LazyStaggeredGridMeasureResult(iArr, iArr, 0.0f, measureResult, 0.0f, false, false, false, new LazyStaggeredGridSlots(iArr, iArr), new LazyStaggeredGridSpanProvider(new MutableIntervalList()), DensityKt.Density$default(1.0f, 0.0f, 2, null), 0, kx2.b, jM9218getZeroYbymL2g, 0, 0, 0, 0, 0, z22.a(gx2.b), null);
    }

    public static final int calculateContentSize(LazyStaggeredGridLayoutInfo lazyStaggeredGridLayoutInfo, int i) {
        int afterContentPadding = lazyStaggeredGridLayoutInfo.getAfterContentPadding() + lazyStaggeredGridLayoutInfo.getBeforeContentPadding();
        if (lazyStaggeredGridLayoutInfo.getTotalItemsCount() == 0 || i <= 0) {
            return afterContentPadding;
        }
        return (((lazyStaggeredGridLayoutInfo.getTotalItemsCount() * visibleItemsAverageSize(lazyStaggeredGridLayoutInfo)) / i) - lazyStaggeredGridLayoutInfo.getMainAxisItemSpacing()) + afterContentPadding;
    }

    public static final LazyStaggeredGridItemInfo findVisibleItem(LazyStaggeredGridLayoutInfo lazyStaggeredGridLayoutInfo, int i) {
        int i2;
        if (lazyStaggeredGridLayoutInfo.getVisibleItemsInfo().isEmpty()) {
            return null;
        }
        int index = ((LazyStaggeredGridItemInfo) qn1.T(lazyStaggeredGridLayoutInfo.getVisibleItemsInfo())).getIndex();
        if (i > ((LazyStaggeredGridItemInfo) qn1.b0(lazyStaggeredGridLayoutInfo.getVisibleItemsInfo())).getIndex() || index > i) {
            return null;
        }
        List<LazyStaggeredGridItemInfo> visibleItemsInfo = lazyStaggeredGridLayoutInfo.getVisibleItemsInfo();
        int size = visibleItemsInfo.size();
        u96.m(visibleItemsInfo.size(), size);
        int i3 = size - 1;
        int i4 = 0;
        while (i4 <= i3) {
            i2 = (i4 + i3) >>> 1;
            int iFindVisibleItem$lambda$0 = findVisibleItem$lambda$0(i, visibleItemsInfo.get(i2));
            if (iFindVisibleItem$lambda$0 < 0) {
                i4 = i2 + 1;
            } else {
                if (iFindVisibleItem$lambda$0 <= 0) {
                    return (LazyStaggeredGridItemInfo) qn1.W(i2, lazyStaggeredGridLayoutInfo.getVisibleItemsInfo());
                }
                i3 = i2 - 1;
            }
        }
        i2 = -(i4 + 1);
        return (LazyStaggeredGridItemInfo) qn1.W(i2, lazyStaggeredGridLayoutInfo.getVisibleItemsInfo());
    }

    private static final int findVisibleItem$lambda$0(int i, LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo) {
        return lazyStaggeredGridItemInfo.getIndex() - i;
    }

    public static final LazyStaggeredGridMeasureResult getEmptyLazyStaggeredGridLayoutInfo() {
        return EmptyLazyStaggeredGridLayoutInfo;
    }

    public static final int getSingleAxisViewportSize(LazyStaggeredGridLayoutInfo lazyStaggeredGridLayoutInfo) {
        return (int) (lazyStaggeredGridLayoutInfo.getOrientation() == Orientation.Vertical ? lazyStaggeredGridLayoutInfo.mo2260getViewportSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE : lazyStaggeredGridLayoutInfo.mo2260getViewportSizeYbymL2g() >> 32);
    }

    public static final int visibleItemsAverageSize(LazyStaggeredGridLayoutInfo lazyStaggeredGridLayoutInfo) {
        List<LazyStaggeredGridItemInfo> visibleItemsInfo = lazyStaggeredGridLayoutInfo.getVisibleItemsInfo();
        if (visibleItemsInfo.isEmpty()) {
            return 0;
        }
        int size = visibleItemsInfo.size();
        int iMo2258getSizeYbymL2g = 0;
        for (int i = 0; i < size; i++) {
            LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo = visibleItemsInfo.get(i);
            iMo2258getSizeYbymL2g += (int) (lazyStaggeredGridLayoutInfo.getOrientation() == Orientation.Vertical ? lazyStaggeredGridItemInfo.mo2258getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE : lazyStaggeredGridItemInfo.mo2258getSizeYbymL2g() >> 32);
        }
        return lazyStaggeredGridLayoutInfo.getMainAxisItemSpacing() + (iMo2258getSizeYbymL2g / visibleItemsInfo.size());
    }
}
