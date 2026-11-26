package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.fr;
import defpackage.j59;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.ly2;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.y22;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridMeasureKt {
    private static final boolean DebugLoggingEnabled = false;
    private static final int Unset = Integer.MIN_VALUE;

    private static final List<LazyStaggeredGridMeasuredItem> calculateExtraItems(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, nl3<? super LazyStaggeredGridMeasuredItem, j59> nl3Var, nl3<? super Integer, Boolean> nl3Var2, boolean z) {
        List<Integer> pinnedItems = lazyStaggeredGridMeasureContext.getPinnedItems();
        ArrayList arrayList = null;
        if (z) {
            int size = pinnedItems.size() - 1;
            if (size >= 0) {
                while (true) {
                    int i = size - 1;
                    int iIntValue = pinnedItems.get(size).intValue();
                    if (nl3Var2.invoke(Integer.valueOf(iIntValue)).booleanValue()) {
                        long jM2264getSpanRangelOCCd4c = lazyStaggeredGridMeasureContext.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext.getItemProvider(), iIntValue, 0);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(iIntValue, jM2264getSpanRangelOCCd4c);
                        nl3Var.invoke(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ);
                        arrayList.add(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ);
                    }
                    if (i < 0) {
                        break;
                    }
                    size = i;
                }
            }
        } else {
            int size2 = pinnedItems.size();
            for (int i2 = 0; i2 < size2; i2++) {
                int iIntValue2 = pinnedItems.get(i2).intValue();
                if (nl3Var2.invoke(Integer.valueOf(iIntValue2)).booleanValue()) {
                    long jM2264getSpanRangelOCCd4c2 = lazyStaggeredGridMeasureContext.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext.getItemProvider(), iIntValue2, 0);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ2 = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(iIntValue2, jM2264getSpanRangelOCCd4c2);
                    nl3Var.invoke(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ2);
                    arrayList.add(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ2);
                }
            }
        }
        return arrayList == null ? kx2.b : arrayList;
    }

    private static final List<LazyStaggeredGridMeasuredItem> calculateVisibleItems(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, fr<LazyStaggeredGridMeasuredItem>[] frVarArr, int[] iArr, int i, int i2, int i3) {
        int size = 0;
        for (fr<LazyStaggeredGridMeasuredItem> frVar : frVarArr) {
            size += frVar.size();
        }
        ArrayList arrayList = new ArrayList(size);
        while (true) {
            for (fr<LazyStaggeredGridMeasuredItem> frVar2 : frVarArr) {
                if (!frVar2.isEmpty()) {
                    int length = frVarArr.length;
                    int i4 = -1;
                    int i5 = Integer.MAX_VALUE;
                    for (int i6 = 0; i6 < length; i6++) {
                        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemD = frVarArr[i6].d();
                        int index = lazyStaggeredGridMeasuredItemD != null ? lazyStaggeredGridMeasuredItemD.getIndex() : Integer.MAX_VALUE;
                        if (i5 > index) {
                            i4 = i6;
                            i5 = index;
                        }
                    }
                    LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemRemoveFirst = frVarArr[i4].removeFirst();
                    if (lazyStaggeredGridMeasuredItemRemoveFirst.getLane() == i4) {
                        long jM2279constructorimpl = SpanRange.m2279constructorimpl(lazyStaggeredGridMeasuredItemRemoveFirst.getLane(), lazyStaggeredGridMeasuredItemRemoveFirst.getSpan());
                        int iM2268maxInRangejy6DScQ = m2268maxInRangejy6DScQ(iArr, jM2279constructorimpl);
                        int i7 = lazyStaggeredGridMeasureContext.getResolvedSlots().getPositions()[i4];
                        if (lazyStaggeredGridMeasuredItemRemoveFirst.getMainAxisSize() + iM2268maxInRangejy6DScQ >= i2 && iM2268maxInRangejy6DScQ <= i3) {
                            lazyStaggeredGridMeasuredItemRemoveFirst.position(iM2268maxInRangejy6DScQ, i7, i);
                            arrayList.add(lazyStaggeredGridMeasuredItemRemoveFirst);
                        }
                        int i8 = (int) (jM2279constructorimpl & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                        for (int i9 = (int) (jM2279constructorimpl >> 32); i9 < i8; i9++) {
                            iArr[i9] = lazyStaggeredGridMeasuredItemRemoveFirst.getMainAxisSizeWithSpacings() + iM2268maxInRangejy6DScQ;
                        }
                    }
                }
            }
            return arrayList;
        }
    }

    private static final void debugLog(ll3<String> ll3Var) {
    }

    private static final String debugRender(fr<LazyStaggeredGridMeasuredItem>[] frVarArr) {
        return "";
    }

    private static final void ensureIndicesInRange(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int[] iArr, int i) {
        int length = iArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i2 = length - 1;
            while (true) {
                if (iArr[length] < i && lazyStaggeredGridMeasureContext.getLaneInfo().assignedToLane(iArr[length], length)) {
                    break;
                } else {
                    iArr[length] = findPreviousItemIndex(lazyStaggeredGridMeasureContext, iArr[length], length);
                }
            }
            int i3 = iArr[length];
            if (i3 >= 0 && !lazyStaggeredGridMeasureContext.isFullSpan(lazyStaggeredGridMeasureContext.getItemProvider(), i3)) {
                if (lazyStaggeredGridMeasureContext.getLaneInfo().getLane(i3) == -2) {
                    int length2 = iArr.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length2) {
                            i4 = -1;
                            break;
                        } else if (iArr[i4] == i3) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                    int i5 = i4 + 1;
                    if (i5 <= length) {
                        while (true) {
                            if (iArr[i5] == i3) {
                                iArr[i5] = findPreviousItemIndex(lazyStaggeredGridMeasureContext, i3, i5);
                            }
                            if (i5 == length) {
                                break;
                            } else {
                                i5++;
                            }
                        }
                    }
                    length = i4;
                }
                lazyStaggeredGridMeasureContext.getLaneInfo().setLane(i3, length);
            }
            if (i2 < 0) {
                return;
            } else {
                length = i2;
            }
        }
    }

    private static final <T> void fastForEach(List<? extends T> list, boolean z, nl3<? super T, j59> nl3Var) {
        if (!z) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                nl3Var.invoke(list.get(i));
            }
            return;
        }
        int size2 = list.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i2 = size2 - 1;
            nl3Var.invoke(list.get(size2));
            if (i2 < 0) {
                return;
            } else {
                size2 = i2;
            }
        }
    }

    public static /* synthetic */ void fastForEach$default(List list, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if (!z) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                nl3Var.invoke(list.get(i2));
            }
            return;
        }
        int size2 = list.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i3 = size2 - 1;
            nl3Var.invoke(list.get(size2));
            if (i3 < 0) {
                return;
            } else {
                size2 = i3;
            }
        }
    }

    private static final int findPreviousItemIndex(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int i, int i2) {
        return lazyStaggeredGridMeasureContext.getLaneInfo().findPreviousItemIndex(i, i2);
    }

    /* JADX INFO: renamed from: forEach-nIS5qE8, reason: not valid java name */
    private static final void m2267forEachnIS5qE8(long j, nl3<? super Integer, j59> nl3Var) {
        int i = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        for (int i2 = (int) (j >> 32); i2 < i; i2++) {
            nl3Var.invoke(Integer.valueOf(i2));
        }
    }

    private static final int indexOfMaxValue(int[] iArr) {
        int length = iArr.length;
        int i = -1;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < length; i3++) {
            int i4 = iArr[i3];
            if (i2 < i4) {
                i = i3;
                i2 = i4;
            }
        }
        return i;
    }

    private static final <T> int indexOfMinBy(T[] tArr, nl3<? super T, Integer> nl3Var) {
        int length = tArr.length;
        int i = -1;
        int i2 = Integer.MAX_VALUE;
        for (int i3 = 0; i3 < length; i3++) {
            int iIntValue = nl3Var.invoke(tArr[i3]).intValue();
            if (i2 > iIntValue) {
                i = i3;
                i2 = iIntValue;
            }
        }
        return i;
    }

    public static final int indexOfMinValue(int[] iArr, int i) {
        int length = iArr.length;
        int i2 = -1;
        int i3 = Integer.MAX_VALUE;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = i + 1;
            int i6 = iArr[i4];
            if (i5 <= i6 && i6 < i3) {
                i2 = i4;
                i3 = i6;
            }
        }
        return i2;
    }

    public static /* synthetic */ int indexOfMinValue$default(int[] iArr, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = Integer.MIN_VALUE;
        }
        return indexOfMinValue(iArr, i);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0085  */
    /* JADX WARN: Code duplicated, block: B:36:0x0098  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a6 A[LOOP:3: B:35:0x0096->B:39:0x00a6, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00aa A[EDGE_INSN: B:62:0x00aa->B:41:0x00aa BREAK  A[LOOP:3: B:35:0x0096->B:39:0x00a6], SYNTHETIC] */
    private static final List<LazyStaggeredGridMeasuredItem> itemsRetainedForLookahead(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int i, int i2, boolean z, bm3<? super LazyStaggeredGridMeasuredItem, ? super Integer, j59> bm3Var) {
        LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo;
        int index;
        int iMin;
        List<LazyStaggeredGridItemInfo> approachVisibleItems;
        int size;
        int i3;
        LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo2;
        LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo3;
        int lane;
        if (z && lazyStaggeredGridMeasureContext.getApproachVisibleItems() != null && !lazyStaggeredGridMeasureContext.getApproachVisibleItems().isEmpty()) {
            List<LazyStaggeredGridItemInfo> approachVisibleItems2 = lazyStaggeredGridMeasureContext.getApproachVisibleItems();
            int size2 = approachVisibleItems2.size();
            while (true) {
                size2--;
                if (-1 >= size2) {
                    lazyStaggeredGridItemInfo = null;
                    break;
                }
                if (approachVisibleItems2.get(size2).getIndex() > i && (size2 == 0 || approachVisibleItems2.get(size2 - 1).getIndex() <= i)) {
                    lazyStaggeredGridItemInfo = approachVisibleItems2.get(size2);
                    break;
                }
            }
            LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo4 = (LazyStaggeredGridItemInfo) qn1.b0(lazyStaggeredGridMeasureContext.getApproachVisibleItems());
            if (lazyStaggeredGridItemInfo != null && (index = lazyStaggeredGridItemInfo.getIndex()) <= (iMin = Math.min(lazyStaggeredGridItemInfo4.getIndex(), i2 - 1))) {
                ArrayList arrayList = null;
                while (true) {
                    if (arrayList != null) {
                        int size3 = arrayList.size();
                        int i4 = 0;
                        while (true) {
                            if (i4 >= size3) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                approachVisibleItems = lazyStaggeredGridMeasureContext.getApproachVisibleItems();
                                size = approachVisibleItems.size();
                                i3 = 0;
                                while (true) {
                                    if (i3 < size) {
                                        lazyStaggeredGridItemInfo2 = null;
                                        break;
                                    }
                                    lazyStaggeredGridItemInfo2 = approachVisibleItems.get(i3);
                                    if (lazyStaggeredGridItemInfo2.getIndex() == index) {
                                        break;
                                    }
                                    i3++;
                                }
                                lazyStaggeredGridItemInfo3 = lazyStaggeredGridItemInfo2;
                                if (lazyStaggeredGridItemInfo3 != null) {
                                    lane = lazyStaggeredGridItemInfo3.getLane();
                                } else {
                                    lane = 0;
                                }
                                LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(index, lazyStaggeredGridMeasureContext.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext.getItemProvider(), index, lane));
                                arrayList.add(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ);
                                int[] positions = lazyStaggeredGridMeasureContext.getResolvedSlots().getPositions();
                                bm3Var.invoke(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ, Integer.valueOf(positions.length > lane ? positions[lane] : 0));
                            } else if (arrayList.get(i4).getIndex() != index) {
                                i4++;
                            }
                        }
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        approachVisibleItems = lazyStaggeredGridMeasureContext.getApproachVisibleItems();
                        size = approachVisibleItems.size();
                        i3 = 0;
                        while (true) {
                            if (i3 < size) {
                                lazyStaggeredGridItemInfo2 = null;
                                break;
                            }
                            lazyStaggeredGridItemInfo2 = approachVisibleItems.get(i3);
                            if (lazyStaggeredGridItemInfo2.getIndex() == index) {
                                break;
                                break;
                            }
                            i3++;
                        }
                        lazyStaggeredGridItemInfo3 = lazyStaggeredGridItemInfo2;
                        if (lazyStaggeredGridItemInfo3 != null) {
                            lane = lazyStaggeredGridItemInfo3.getLane();
                        } else {
                            lane = 0;
                        }
                        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ2 = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(index, lazyStaggeredGridMeasureContext.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext.getItemProvider(), index, lane));
                        arrayList.add(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ2);
                        int[] positions2 = lazyStaggeredGridMeasureContext.getResolvedSlots().getPositions();
                        bm3Var.invoke(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ2, Integer.valueOf(positions2.length > lane ? positions2[lane] : 0));
                    }
                    if (index == iMin) {
                        return arrayList;
                    }
                    index++;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: maxInRange-jy6DScQ, reason: not valid java name */
    private static final int m2268maxInRangejy6DScQ(int[] iArr, long j) {
        int i = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        int iMax = Integer.MIN_VALUE;
        for (int i2 = (int) (j >> 32); i2 < i; i2++) {
            iMax = Math.max(iMax, iArr[i2]);
        }
        return iMax;
    }

    /* JADX WARN: Code duplicated, block: B:272:0x057f  */
    /* JADX WARN: Code duplicated, block: B:276:0x05a1 A[LOOP:19: B:251:0x051f->B:276:0x05a1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:315:0x066c  */
    /* JADX WARN: Code duplicated, block: B:318:0x0681  */
    /* JADX WARN: Code duplicated, block: B:321:0x0692 A[LOOP:30: B:317:0x067f->B:321:0x0692, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:325:0x069d  */
    /* JADX WARN: Code duplicated, block: B:326:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:329:0x06c3  */
    /* JADX WARN: Code duplicated, block: B:330:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:334:0x06db  */
    /* JADX WARN: Code duplicated, block: B:364:0x0752  */
    /* JADX WARN: Code duplicated, block: B:365:0x0758  */
    /* JADX WARN: Code duplicated, block: B:403:0x0861  */
    /* JADX WARN: Code duplicated, block: B:497:0x059e A[EDGE_INSN: B:497:0x059e->B:275:0x059e BREAK  A[LOOP:19: B:251:0x051f->B:276:0x05a1], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:519:0x0697 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:520:0x0699 A[EDGE_INSN: B:520:0x0699->B:323:0x0699 BREAK  A[LOOP:30: B:317:0x067f->B:321:0x0692], SYNTHETIC] */
    private static final LazyStaggeredGridMeasureResult measure(final LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int i, int[] iArr, int[] iArr2, boolean z) {
        long j;
        int i2;
        int iP;
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr3;
        int i7;
        int[] iArr4;
        boolean z2;
        ArrayList arrayList;
        ArrayList arrayList2;
        int i8;
        float f;
        int iM9011constrainHeightK40F9xA;
        int iM9012constrainWidthK40F9xA;
        boolean z3;
        List<Integer> list;
        ArrayList arrayList3;
        ArrayList arrayList4;
        LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo;
        int index;
        int iMin;
        List<LazyStaggeredGridItemInfo> approachVisibleItems;
        int size;
        int i9;
        LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo2;
        LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo3;
        int lane;
        int[] positions;
        int i10;
        List<LazyStaggeredGridItemInfo> list2;
        int index2;
        int i11;
        int i12;
        int[] gaps;
        LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext2 = lazyStaggeredGridMeasureContext;
        LazyLayoutMeasureScope measureScope = lazyStaggeredGridMeasureContext2.getMeasureScope();
        int itemCount = lazyStaggeredGridMeasureContext2.getItemProvider().getItemCount();
        kx2 kx2Var = kx2.b;
        if (itemCount <= 0 || lazyStaggeredGridMeasureContext2.getLaneCount() == 0) {
            int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(lazyStaggeredGridMeasureContext2.m2261getConstraintsmsEJaDk());
            int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(lazyStaggeredGridMeasureContext2.m2261getConstraintsmsEJaDk());
            lazyStaggeredGridMeasureContext2.getState().getItemAnimator$foundation().onMeasured(0, iM8997getMinWidthimpl, iM8996getMinHeightimpl, new ArrayList(), lazyStaggeredGridMeasureContext2.getMeasuredItemProvider().getKeyIndexMap(), lazyStaggeredGridMeasureContext2.getMeasuredItemProvider(), lazyStaggeredGridMeasureContext2.isVertical(), measureScope.isLookingAhead(), lazyStaggeredGridMeasureContext2.getLaneCount(), lazyStaggeredGridMeasureContext2.isInLookaheadScope(), 0, 0, lazyStaggeredGridMeasureContext2.getCoroutineScope(), lazyStaggeredGridMeasureContext2.getGraphicsContext());
            if (!measureScope.isLookingAhead()) {
                long jM2216getMinSizeToFitDisappearingItemsYbymL2g = lazyStaggeredGridMeasureContext2.getState().getItemAnimator$foundation().m2216getMinSizeToFitDisappearingItemsYbymL2g();
                if (!IntSize.m9211equalsimpl0(jM2216getMinSizeToFitDisappearingItemsYbymL2g, IntSize.Companion.m9218getZeroYbymL2g())) {
                    iM8997getMinWidthimpl = ConstraintsKt.m9012constrainWidthK40F9xA(lazyStaggeredGridMeasureContext2.m2261getConstraintsmsEJaDk(), (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g >> 32));
                    iM8996getMinHeightimpl = ConstraintsKt.m9011constrainHeightK40F9xA(lazyStaggeredGridMeasureContext2.m2261getConstraintsmsEJaDk(), (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                }
            }
            return new LazyStaggeredGridMeasureResult(iArr, iArr2, 0.0f, MeasureScope.layout$default(measureScope, iM8997getMinWidthimpl, iM8996getMinHeightimpl, null, new ly2(2), 4, null), 0.0f, false, lazyStaggeredGridMeasureContext2.isVertical(), false, lazyStaggeredGridMeasureContext2.getResolvedSlots(), lazyStaggeredGridMeasureContext2.getItemProvider().getSpanProvider(), measureScope, itemCount, kx2Var, IntSize.m9208constructorimpl((((long) Constraints.m8997getMinWidthimpl(lazyStaggeredGridMeasureContext2.m2261getConstraintsmsEJaDk())) << 32) | (((long) Constraints.m8996getMinHeightimpl(lazyStaggeredGridMeasureContext2.m2261getConstraintsmsEJaDk())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), -lazyStaggeredGridMeasureContext2.getBeforeContentPadding(), lazyStaggeredGridMeasureContext2.getAfterContentPadding() + lazyStaggeredGridMeasureContext2.getMainAxisAvailableSize(), lazyStaggeredGridMeasureContext2.getBeforeContentPadding(), lazyStaggeredGridMeasureContext2.getAfterContentPadding(), lazyStaggeredGridMeasureContext2.getMainAxisSpacing(), lazyStaggeredGridMeasureContext2.getCoroutineScope(), null);
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
        int[] iArrCopyOf2 = Arrays.copyOf(iArr2, iArr2.length);
        ensureIndicesInRange(lazyStaggeredGridMeasureContext2, iArrCopyOf, itemCount);
        offsetBy(iArrCopyOf2, -i);
        int laneCount = lazyStaggeredGridMeasureContext2.getLaneCount();
        fr[] frVarArr = new fr[laneCount];
        for (int i13 = 0; i13 < laneCount; i13++) {
            frVarArr[i13] = new fr(16);
        }
        offsetBy(iArrCopyOf2, -lazyStaggeredGridMeasureContext2.getBeforeContentPadding());
        boolean z4 = false;
        while (true) {
            if (!measure$lambda$0$hasSpaceBeforeFirst(iArrCopyOf, iArrCopyOf2, lazyStaggeredGridMeasureContext2)) {
                j = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
                i2 = 0;
                iP = -1;
                break;
            }
            iP = indexOfMaxValue(iArrCopyOf);
            j = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
            int i14 = iArrCopyOf[iP];
            int length = iArrCopyOf2.length;
            for (int i15 = 0; i15 < length; i15++) {
                if (iArrCopyOf[i15] != iArrCopyOf[iP]) {
                    int i16 = iArrCopyOf2[i15];
                    int i17 = iArrCopyOf2[iP];
                    if (i16 < i17) {
                        iArrCopyOf2[i15] = i17;
                    }
                }
            }
            i2 = 0;
            int iFindPreviousItemIndex = findPreviousItemIndex(lazyStaggeredGridMeasureContext2, i14, iP);
            if (iFindPreviousItemIndex < 0) {
                break;
            }
            long jM2264getSpanRangelOCCd4c = lazyStaggeredGridMeasureContext2.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext2.getItemProvider(), iFindPreviousItemIndex, iP);
            LazyStaggeredGridLaneInfo laneInfo = lazyStaggeredGridMeasureContext2.getLaneInfo();
            int i18 = (int) (jM2264getSpanRangelOCCd4c & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
            int[] iArr5 = iArrCopyOf;
            int i19 = (int) (jM2264getSpanRangelOCCd4c >> 32);
            int i20 = i18 - i19;
            fr[] frVarArr2 = frVarArr;
            laneInfo.setLane(iFindPreviousItemIndex, i20 != 1 ? -2 : i19);
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ = lazyStaggeredGridMeasureContext2.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(iFindPreviousItemIndex, jM2264getSpanRangelOCCd4c);
            int iM2268maxInRangejy6DScQ = m2268maxInRangejy6DScQ(iArrCopyOf2, jM2264getSpanRangelOCCd4c);
            int[] gaps2 = i20 != 1 ? lazyStaggeredGridMeasureContext2.getLaneInfo().getGaps(iFindPreviousItemIndex) : null;
            while (i19 < i18) {
                iArr5[i19] = iFindPreviousItemIndex;
                int mainAxisSizeWithSpacings = lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ.getMainAxisSizeWithSpacings() + iM2268maxInRangejy6DScQ + (gaps2 == null ? 0 : gaps2[i19]);
                iArrCopyOf2[i19] = mainAxisSizeWithSpacings;
                if (lazyStaggeredGridMeasureContext2.getMainAxisAvailableSize() + mainAxisSizeWithSpacings <= 0) {
                    z4 = true;
                }
                i19++;
            }
            iArrCopyOf = iArr5;
            frVarArr = frVarArr2;
        }
        fr[] frVarArr3 = frVarArr;
        int[] iArr6 = iArrCopyOf;
        int i21 = -lazyStaggeredGridMeasureContext2.getBeforeContentPadding();
        int i22 = iArrCopyOf2[i2];
        if (i22 < i21) {
            int i23 = i21 - i22;
            offsetBy(iArrCopyOf2, i23);
            i3 = i - i23;
        } else {
            i3 = i;
        }
        offsetBy(iArrCopyOf2, lazyStaggeredGridMeasureContext2.getBeforeContentPadding());
        int i24 = -1;
        if (iP == -1) {
            iP = yr.P(i2, iArr6);
        }
        if (iP != -1 && measure$lambda$0$misalignedStart(iArr6, lazyStaggeredGridMeasureContext2, iArrCopyOf2, iP) && z) {
            lazyStaggeredGridMeasureContext2.getLaneInfo().reset();
            int length2 = iArr6.length;
            int[] iArr7 = new int[length2];
            int i25 = 0;
            while (i25 < length2) {
                iArr7[i25] = i24;
                i25++;
                i24 = -1;
            }
            int length3 = iArrCopyOf2.length;
            int[] iArr8 = new int[length3];
            for (int i26 = 0; i26 < length3; i26++) {
                iArr8[i26] = iArrCopyOf2[iP];
            }
            return measure(lazyStaggeredGridMeasureContext2, i3, iArr7, iArr8, false);
        }
        int[] iArrCopyOf3 = Arrays.copyOf(iArr6, iArr6.length);
        int length4 = iArrCopyOf2.length;
        int[] iArr9 = new int[length4];
        for (int i27 = 0; i27 < length4; i27++) {
            iArr9[i27] = -iArrCopyOf2[i27];
        }
        int mainAxisSpacing = lazyStaggeredGridMeasureContext2.getMainAxisSpacing() + i21;
        int afterContentPadding = lazyStaggeredGridMeasureContext2.getAfterContentPadding() + lazyStaggeredGridMeasureContext2.getMainAxisAvailableSize();
        if (afterContentPadding < 0) {
            afterContentPadding = 0;
        }
        boolean z5 = z4;
        int iIndexOfMinValue$default = indexOfMinValue$default(iArrCopyOf3, 0, 1, null);
        int laneCount2 = 0;
        boolean z6 = z5;
        for (int i28 = -1; iIndexOfMinValue$default != i28 && laneCount2 < lazyStaggeredGridMeasureContext2.getLaneCount(); i28 = -1) {
            int i29 = iArrCopyOf3[iIndexOfMinValue$default];
            iIndexOfMinValue$default = indexOfMinValue(iArrCopyOf3, i29);
            laneCount2++;
            if (i29 >= 0) {
                long jM2264getSpanRangelOCCd4c2 = lazyStaggeredGridMeasureContext2.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext2.getItemProvider(), i29, iIndexOfMinValue$default);
                LazyLayoutMeasureScope lazyLayoutMeasureScope = measureScope;
                LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ2 = lazyStaggeredGridMeasureContext2.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(i29, jM2264getSpanRangelOCCd4c2);
                LazyStaggeredGridLaneInfo laneInfo2 = lazyStaggeredGridMeasureContext2.getLaneInfo();
                int[] iArr10 = iArrCopyOf3;
                int[] iArr11 = iArrCopyOf2;
                int i30 = (int) (jM2264getSpanRangelOCCd4c2 & j);
                int i31 = itemCount;
                kx2 kx2Var2 = kx2Var;
                int i32 = (int) (jM2264getSpanRangelOCCd4c2 >> 32);
                int i33 = i30 - i32;
                if (i33 != 1) {
                    i32 = -2;
                }
                laneInfo2.setLane(i29, i32);
                int iM2268maxInRangejy6DScQ2 = m2268maxInRangejy6DScQ(iArr9, jM2264getSpanRangelOCCd4c2);
                for (int i34 = i32; i34 < i30; i34++) {
                    iArr9[i34] = lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ2.getMainAxisSizeWithSpacings() + iM2268maxInRangejy6DScQ2;
                    iArr10[i34] = i29;
                    frVarArr3[i34].addLast(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ2);
                }
                if (iM2268maxInRangejy6DScQ2 < mainAxisSpacing && iArr9[i32] <= mainAxisSpacing) {
                    lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ2.setVisible(false);
                    z6 = true;
                }
                laneCount2 = i33 != 1 ? lazyStaggeredGridMeasureContext2.getLaneCount() : laneCount2;
                measureScope = lazyLayoutMeasureScope;
                iArrCopyOf2 = iArr11;
                iArrCopyOf3 = iArr10;
                kx2Var = kx2Var2;
                itemCount = i31;
            }
        }
        int[] iArr12 = iArrCopyOf3;
        int[] iArr13 = iArrCopyOf2;
        LazyLayoutMeasureScope lazyLayoutMeasureScope2 = measureScope;
        int i35 = itemCount;
        kx2 kx2Var3 = kx2Var;
        loop9: while (true) {
            int i36 = 0;
            while (true) {
                if (i36 >= length4) {
                    for (int i37 = 0; i37 < laneCount; i37++) {
                        if (!frVarArr3[i37].isEmpty()) {
                            i4 = i35;
                            i5 = 1;
                            break loop9;
                        }
                    }
                    break;
                }
                int i38 = iArr9[i36];
                if (i38 < afterContentPadding || i38 <= 0) {
                    break;
                }
                i36++;
            }
            i5 = 1;
            int iIndexOfMinValue$default2 = indexOfMinValue$default(iArr9, 0, 1, null);
            int iW = yr.W(iArr12) + 1;
            i4 = i35;
            if (iW >= i4) {
                break;
            }
            LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext3 = lazyStaggeredGridMeasureContext2;
            int i39 = afterContentPadding;
            LazyLayoutMeasureScope lazyLayoutMeasureScope3 = lazyLayoutMeasureScope2;
            int[] iArr14 = iArr12;
            int[] iArr15 = iArr9;
            long jM2264getSpanRangelOCCd4c3 = lazyStaggeredGridMeasureContext3.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext3.getItemProvider(), iW, iIndexOfMinValue$default2);
            int i40 = laneCount;
            int i41 = i3;
            int i42 = (int) (jM2264getSpanRangelOCCd4c3 & j);
            int i43 = (int) (jM2264getSpanRangelOCCd4c3 >> 32);
            int i44 = i42 - i43;
            lazyStaggeredGridMeasureContext3.getLaneInfo().setLane(iW, i44 != 1 ? -2 : i43);
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ3 = lazyStaggeredGridMeasureContext3.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(iW, jM2264getSpanRangelOCCd4c3);
            int iM2268maxInRangejy6DScQ3 = m2268maxInRangejy6DScQ(iArr15, jM2264getSpanRangelOCCd4c3);
            if (i44 != 1) {
                gaps = lazyStaggeredGridMeasureContext3.getLaneInfo().getGaps(iW);
                if (gaps == null) {
                    gaps = new int[lazyStaggeredGridMeasureContext3.getLaneCount()];
                }
            } else {
                gaps = null;
            }
            int i45 = i43;
            while (i45 < i42) {
                if (gaps != null) {
                    gaps[i45] = iM2268maxInRangejy6DScQ3 - iArr15[i45];
                }
                iArr14[i45] = iW;
                iArr15[i45] = lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ3.getMainAxisSizeWithSpacings() + iM2268maxInRangejy6DScQ3;
                frVarArr3[i45].addLast(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ3);
                i45++;
                lazyLayoutMeasureScope3 = lazyLayoutMeasureScope3;
            }
            lazyLayoutMeasureScope2 = lazyLayoutMeasureScope3;
            lazyStaggeredGridMeasureContext3.getLaneInfo().setGaps(iW, gaps);
            if (iM2268maxInRangejy6DScQ3 < mainAxisSpacing && iArr15[i43] <= mainAxisSpacing) {
                lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ3.setVisible(false);
            }
            iArr12 = iArr14;
            laneCount = i40;
            lazyStaggeredGridMeasureContext2 = lazyStaggeredGridMeasureContext3;
            i35 = i4;
            iArr9 = iArr15;
            afterContentPadding = i39;
            i3 = i41;
        }
        int i46 = 0;
        while (i46 < laneCount) {
            fr frVar = frVarArr3[i46];
            while (frVar.size() > i5 && !((LazyStaggeredGridMeasuredItem) frVar.first()).isVisible()) {
                LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem = (LazyStaggeredGridMeasuredItem) frVar.removeFirst();
                int[] gaps3 = lazyStaggeredGridMeasuredItem.getSpan() != i5 ? lazyStaggeredGridMeasureContext2.getLaneInfo().getGaps(lazyStaggeredGridMeasuredItem.getIndex()) : null;
                iArr13[i46] = iArr13[i46] - (lazyStaggeredGridMeasuredItem.getMainAxisSizeWithSpacings() + (gaps3 == null ? 0 : gaps3[i46]));
                i5 = 1;
            }
            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem2 = (LazyStaggeredGridMeasuredItem) frVar.d();
            iArr6[i46] = lazyStaggeredGridMeasuredItem2 != null ? lazyStaggeredGridMeasuredItem2.getIndex() : -1;
            i46++;
            i5 = 1;
        }
        int[] iArr16 = iArr12;
        for (int i47 : iArr16) {
            if (i47 == i4 - 1) {
                offsetBy(iArr9, -lazyStaggeredGridMeasureContext2.getMainAxisSpacing());
                break;
            }
        }
        int i48 = 0;
        while (true) {
            if (i48 >= length4) {
                int mainAxisAvailableSize = lazyStaggeredGridMeasureContext2.getMainAxisAvailableSize() - iArr9[indexOfMaxValue(iArr9)];
                int[] iArr17 = iArr13;
                offsetBy(iArr17, -mainAxisAvailableSize);
                offsetBy(iArr9, mainAxisAvailableSize);
                boolean z7 = false;
                loop32: while (true) {
                    int length5 = iArr17.length;
                    int i49 = 0;
                    while (true) {
                        if (i49 >= length5) {
                            break loop32;
                        }
                        if (iArr17[i49] < lazyStaggeredGridMeasureContext2.getBeforeContentPadding()) {
                            break;
                        }
                        i49++;
                    }
                    boolean z8 = z7;
                    int iIndexOfMinValue$default3 = indexOfMinValue$default(iArr17, 0, 1, null);
                    int iIndexOfMaxValue = indexOfMaxValue(iArr6);
                    if (iIndexOfMinValue$default3 == iIndexOfMaxValue) {
                        z7 = z8;
                    } else if (iArr17[iIndexOfMinValue$default3] == iArr17[iIndexOfMaxValue]) {
                        iIndexOfMinValue$default3 = iIndexOfMaxValue;
                        z7 = z8;
                    } else {
                        z7 = true;
                    }
                    int i50 = iArr6[iIndexOfMinValue$default3];
                    if (i50 == -1) {
                        i50 = i4;
                    }
                    int iFindPreviousItemIndex2 = findPreviousItemIndex(lazyStaggeredGridMeasureContext2, i50, iIndexOfMinValue$default3);
                    if (iFindPreviousItemIndex2 < 0) {
                        if ((!z7 && !measure$lambda$0$misalignedStart(iArr6, lazyStaggeredGridMeasureContext2, iArr17, iIndexOfMinValue$default3)) || !z) {
                            break;
                            break;
                        }
                        lazyStaggeredGridMeasureContext2.getLaneInfo().reset();
                        int length6 = iArr6.length;
                        int[] iArr18 = new int[length6];
                        for (int i51 = 0; i51 < length6; i51++) {
                            iArr18[i51] = -1;
                        }
                        int length7 = iArr17.length;
                        int[] iArr19 = new int[length7];
                        for (int i52 = 0; i52 < length7; i52++) {
                            iArr19[i52] = iArr17[iIndexOfMinValue$default3];
                        }
                        return measure(lazyStaggeredGridMeasureContext2, i3, iArr18, iArr19, false);
                    }
                    int[] iArr20 = iArr17;
                    long jM2264getSpanRangelOCCd4c4 = lazyStaggeredGridMeasureContext2.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext2.getItemProvider(), iFindPreviousItemIndex2, iIndexOfMinValue$default3);
                    boolean z9 = z7;
                    int i53 = mainAxisAvailableSize;
                    int i54 = (int) (jM2264getSpanRangelOCCd4c4 & j);
                    int i55 = afterContentPadding;
                    int i56 = (int) (jM2264getSpanRangelOCCd4c4 >> 32);
                    int i57 = i54 - i56;
                    lazyStaggeredGridMeasureContext2.getLaneInfo().setLane(iFindPreviousItemIndex2, i57 != 1 ? -2 : i56);
                    LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ4 = lazyStaggeredGridMeasureContext2.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(iFindPreviousItemIndex2, jM2264getSpanRangelOCCd4c4);
                    int iM2268maxInRangejy6DScQ4 = m2268maxInRangejy6DScQ(iArr20, jM2264getSpanRangelOCCd4c4);
                    int[] gaps4 = i57 != 1 ? lazyStaggeredGridMeasureContext2.getLaneInfo().getGaps(iFindPreviousItemIndex2) : null;
                    int i58 = i56;
                    boolean z10 = z9;
                    while (i58 < i54) {
                        int i59 = i54;
                        if (iArr20[i58] != iM2268maxInRangejy6DScQ4) {
                            z10 = true;
                        }
                        frVarArr3[i58].addFirst(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ4);
                        iArr6[i58] = iFindPreviousItemIndex2;
                        iArr20[i58] = lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ4.getMainAxisSizeWithSpacings() + iM2268maxInRangejy6DScQ4 + (gaps4 == null ? 0 : gaps4[i58]);
                        i58++;
                        i54 = i59;
                    }
                    z7 = z10;
                    iArr17 = iArr20;
                    afterContentPadding = i55;
                    mainAxisAvailableSize = i53;
                }
                int i60 = mainAxisAvailableSize;
                i6 = afterContentPadding;
                iArr3 = iArr17;
                if (!z7 || !z) {
                    i7 = i3 + i60;
                    int i61 = iArr3[indexOfMinValue$default(iArr3, 0, 1, null)];
                    if (i61 >= 0) {
                        break;
                    }
                    i7 += i61;
                    offsetBy(iArr9, i61);
                    offsetBy(iArr3, -i61);
                    break;
                }
                lazyStaggeredGridMeasureContext2.getLaneInfo().reset();
                return measure(lazyStaggeredGridMeasureContext2, i3, iArr6, iArr3, false);
            }
            if (iArr9[i48] >= lazyStaggeredGridMeasureContext2.getMainAxisAvailableSize()) {
                i6 = afterContentPadding;
                i7 = i3;
                iArr3 = iArr13;
                break;
            }
            i48++;
        }
        float fScrollToBeConsumed$foundation = lazyStaggeredGridMeasureContext2.getState().scrollToBeConsumed$foundation(lazyLayoutMeasureScope2.isLookingAhead());
        float f2 = (Integer.signum(Math.round(fScrollToBeConsumed$foundation)) != Integer.signum(i7) || Math.abs(Math.round(fScrollToBeConsumed$foundation)) < Math.abs(i7)) ? fScrollToBeConsumed$foundation : i7;
        float f3 = fScrollToBeConsumed$foundation - f2;
        float f4 = 0.0f;
        if (lazyLayoutMeasureScope2.isLookingAhead() && i7 > i3 && f3 <= 0.0f) {
            f4 = (i7 - i3) + f3;
        }
        int[] iArrCopyOf4 = Arrays.copyOf(iArr3, iArr3.length);
        int length8 = iArrCopyOf4.length;
        for (int i62 = 0; i62 < length8; i62++) {
            iArrCopyOf4[i62] = -iArrCopyOf4[i62];
        }
        if (lazyStaggeredGridMeasureContext2.getBeforeContentPadding() > lazyStaggeredGridMeasureContext2.getMainAxisSpacing()) {
            int i63 = 0;
            while (i63 < laneCount) {
                fr frVar2 = frVarArr3[i63];
                int size2 = frVar2.size();
                int i64 = 0;
                while (true) {
                    if (i64 >= size2) {
                        i11 = i63;
                        break;
                    }
                    LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem3 = (LazyStaggeredGridMeasuredItem) frVar2.get(i64);
                    i11 = i63;
                    int[] gaps5 = lazyStaggeredGridMeasureContext2.getLaneInfo().getGaps(lazyStaggeredGridMeasuredItem3.getIndex());
                    int mainAxisSizeWithSpacings2 = (gaps5 == null ? 0 : gaps5[i11]) + lazyStaggeredGridMeasuredItem3.getMainAxisSizeWithSpacings();
                    if (i64 == frVar2.size() - 1 || (i12 = iArr3[i11]) == 0 || i12 < mainAxisSizeWithSpacings2) {
                        break;
                    }
                    iArr3[i11] = i12 - mainAxisSizeWithSpacings2;
                    i64++;
                    iArr6[i11] = ((LazyStaggeredGridMeasuredItem) frVar2.get(i64)).getIndex();
                    i63 = i11;
                }
                i63 = i11 + 1;
            }
        }
        int afterContentPadding2 = lazyStaggeredGridMeasureContext2.getAfterContentPadding() + lazyStaggeredGridMeasureContext2.getBeforeContentPadding();
        int iM8995getMaxWidthimpl = lazyStaggeredGridMeasureContext2.isVertical() ? Constraints.m8995getMaxWidthimpl(lazyStaggeredGridMeasureContext2.m2261getConstraintsmsEJaDk()) : ConstraintsKt.m9012constrainWidthK40F9xA(lazyStaggeredGridMeasureContext2.m2261getConstraintsmsEJaDk(), yr.W(iArr9) + afterContentPadding2);
        int iM9011constrainHeightK40F9xA2 = lazyStaggeredGridMeasureContext2.isVertical() ? ConstraintsKt.m9011constrainHeightK40F9xA(lazyStaggeredGridMeasureContext2.m2261getConstraintsmsEJaDk(), yr.W(iArr9) + afterContentPadding2) : Constraints.m8994getMaxHeightimpl(lazyStaggeredGridMeasureContext2.m2261getConstraintsmsEJaDk());
        int afterContentPadding3 = lazyStaggeredGridMeasureContext2.getAfterContentPadding() + (Math.min(lazyStaggeredGridMeasureContext2.isVertical() ? iM9011constrainHeightK40F9xA2 : iM8995getMaxWidthimpl, lazyStaggeredGridMeasureContext2.getMainAxisAvailableSize()) - lazyStaggeredGridMeasureContext2.getBeforeContentPadding());
        int i65 = iArrCopyOf4[0];
        List<Integer> pinnedItems = lazyStaggeredGridMeasureContext2.getPinnedItems();
        int size3 = pinnedItems.size() - 1;
        if (size3 >= 0) {
            int i66 = size3;
            ArrayList arrayList5 = null;
            int mainAxisSizeWithSpacings3 = i65;
            while (true) {
                int i67 = i66 - 1;
                int iIntValue = pinnedItems.get(i66).intValue();
                iArr4 = iArrCopyOf4;
                int lane2 = lazyStaggeredGridMeasureContext2.getLaneInfo().getLane(iIntValue);
                List<Integer> list3 = pinnedItems;
                if (lane2 != -2) {
                    index2 = -1;
                    if (lane2 != -1) {
                        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem4 = (LazyStaggeredGridMeasuredItem) frVarArr3[lane2].d();
                        if ((lazyStaggeredGridMeasuredItem4 != null ? lazyStaggeredGridMeasuredItem4.getIndex() : -1) > iIntValue) {
                            long jM2264getSpanRangelOCCd4c5 = lazyStaggeredGridMeasureContext2.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext2.getItemProvider(), iIntValue, 0);
                            if (arrayList5 == null) {
                                arrayList5 = new ArrayList();
                            }
                            ArrayList arrayList6 = arrayList5;
                            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ5 = lazyStaggeredGridMeasureContext2.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(iIntValue, jM2264getSpanRangelOCCd4c5);
                            mainAxisSizeWithSpacings3 -= lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ5.getMainAxisSizeWithSpacings();
                            z2 = false;
                            lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ5.position(mainAxisSizeWithSpacings3, 0, afterContentPadding3);
                            arrayList6.add(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ5);
                            arrayList5 = arrayList6;
                        } else {
                            z2 = false;
                        }
                    }
                    if (i67 < 0) {
                        break;
                    }
                    iArrCopyOf4 = iArr4;
                    pinnedItems = list3;
                    i66 = i67;
                    iArr9 = iArr9;
                    f4 = f4;
                } else {
                    index2 = -1;
                }
                int i68 = 0;
                while (true) {
                    if (i68 >= laneCount) {
                        long jM2264getSpanRangelOCCd4c6 = lazyStaggeredGridMeasureContext2.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext2.getItemProvider(), iIntValue, 0);
                        if (arrayList5 == null) {
                            arrayList5 = new ArrayList();
                        }
                        ArrayList arrayList7 = arrayList5;
                        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ6 = lazyStaggeredGridMeasureContext2.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(iIntValue, jM2264getSpanRangelOCCd4c6);
                        mainAxisSizeWithSpacings3 -= lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ6.getMainAxisSizeWithSpacings();
                        z2 = false;
                        lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ6.position(mainAxisSizeWithSpacings3, 0, afterContentPadding3);
                        arrayList7.add(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ6);
                        arrayList5 = arrayList7;
                        if (i67 < 0) {
                            break;
                            break;
                        }
                        iArrCopyOf4 = iArr4;
                        pinnedItems = list3;
                        i66 = i67;
                        iArr9 = iArr9;
                        f4 = f4;
                    } else {
                        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem5 = (LazyStaggeredGridMeasuredItem) frVarArr3[i68].d();
                        if (lazyStaggeredGridMeasuredItem5 != null) {
                            index2 = lazyStaggeredGridMeasuredItem5.getIndex();
                        }
                        if (index2 > iIntValue) {
                            i68++;
                            index2 = -1;
                        } else {
                            z2 = false;
                            if (i67 < 0) {
                                break;
                                break;
                            }
                            iArrCopyOf4 = iArr4;
                            pinnedItems = list3;
                            i66 = i67;
                            iArr9 = iArr9;
                            f4 = f4;
                        }
                    }
                }
            }
            arrayList = arrayList5;
        } else {
            iArr4 = iArrCopyOf4;
            iArr9 = iArr9;
            f4 = f4;
            z2 = false;
            arrayList = null;
        }
        Collection collection = arrayList == null ? kx2Var3 : arrayList;
        int[] iArr21 = iArr4;
        boolean z11 = z2;
        int i69 = i6;
        List<LazyStaggeredGridMeasuredItem> listCalculateVisibleItems = calculateVisibleItems(lazyStaggeredGridMeasureContext2, frVarArr3, iArr21, afterContentPadding3, i21, i69);
        int mainAxisSizeWithSpacings4 = iArr21[z11 ? 1 : 0];
        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItem6 = (LazyStaggeredGridMeasuredItem) qn1.c0(listCalculateVisibleItems);
        int index3 = lazyStaggeredGridMeasuredItem6 != null ? lazyStaggeredGridMeasuredItem6.getIndex() : -1;
        if (!lazyLayoutMeasureScope2.isLookingAhead() || lazyStaggeredGridMeasureContext2.getApproachVisibleItems() == null || lazyStaggeredGridMeasureContext2.getApproachVisibleItems().isEmpty()) {
            collection = collection;
            afterContentPadding2 = afterContentPadding2;
            arrayList2 = null;
        } else {
            List<LazyStaggeredGridItemInfo> approachVisibleItems2 = lazyStaggeredGridMeasureContext2.getApproachVisibleItems();
            int size4 = approachVisibleItems2.size() - 1;
            while (true) {
                if (-1 >= size4) {
                    lazyStaggeredGridItemInfo = null;
                    break;
                }
                if (approachVisibleItems2.get(size4).getIndex() > index3 && (size4 == 0 || approachVisibleItems2.get(size4 - 1).getIndex() <= index3)) {
                    lazyStaggeredGridItemInfo = approachVisibleItems2.get(size4);
                    break;
                }
                size4--;
            }
            LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo4 = (LazyStaggeredGridItemInfo) qn1.b0(lazyStaggeredGridMeasureContext2.getApproachVisibleItems());
            if (lazyStaggeredGridItemInfo != null && (index = lazyStaggeredGridItemInfo.getIndex()) <= (iMin = Math.min(lazyStaggeredGridItemInfo4.getIndex(), i4 - 1))) {
                arrayList2 = null;
                while (true) {
                    if (arrayList2 != null) {
                        int size5 = arrayList2.size();
                        int i70 = 0;
                        while (true) {
                            if (i70 < size5) {
                                int i71 = size5;
                                if (((LazyStaggeredGridMeasuredItem) arrayList2.get(i70)).getIndex() != index) {
                                    i70++;
                                    size5 = i71;
                                }
                            } else {
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                approachVisibleItems = lazyStaggeredGridMeasureContext2.getApproachVisibleItems();
                                size = approachVisibleItems.size();
                                i9 = 0;
                                while (true) {
                                    if (i9 < size) {
                                        lazyStaggeredGridItemInfo2 = null;
                                        break;
                                    }
                                    lazyStaggeredGridItemInfo2 = approachVisibleItems.get(i9);
                                    list2 = approachVisibleItems;
                                    if (lazyStaggeredGridItemInfo2.getIndex() == index) {
                                        break;
                                    }
                                    i9++;
                                    approachVisibleItems = list2;
                                }
                                lazyStaggeredGridItemInfo3 = lazyStaggeredGridItemInfo2;
                                if (lazyStaggeredGridItemInfo3 != null) {
                                    lane = lazyStaggeredGridItemInfo3.getLane();
                                } else {
                                    lane = 0;
                                }
                                LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ7 = lazyStaggeredGridMeasureContext2.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(index, lazyStaggeredGridMeasureContext2.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext2.getItemProvider(), index, lane));
                                arrayList2.add(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ7);
                                positions = lazyStaggeredGridMeasureContext2.getResolvedSlots().getPositions();
                                if (positions.length > lane) {
                                    i10 = positions[lane];
                                } else {
                                    i10 = 0;
                                }
                                lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ7.position(mainAxisSizeWithSpacings4, i10, afterContentPadding3);
                                mainAxisSizeWithSpacings4 = lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ7.getMainAxisSizeWithSpacings() + mainAxisSizeWithSpacings4;
                            }
                        }
                    } else {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        approachVisibleItems = lazyStaggeredGridMeasureContext2.getApproachVisibleItems();
                        size = approachVisibleItems.size();
                        i9 = 0;
                        while (true) {
                            if (i9 < size) {
                                lazyStaggeredGridItemInfo2 = null;
                                break;
                            }
                            lazyStaggeredGridItemInfo2 = approachVisibleItems.get(i9);
                            list2 = approachVisibleItems;
                            if (lazyStaggeredGridItemInfo2.getIndex() == index) {
                                break;
                                break;
                            }
                            i9++;
                            approachVisibleItems = list2;
                        }
                        lazyStaggeredGridItemInfo3 = lazyStaggeredGridItemInfo2;
                        if (lazyStaggeredGridItemInfo3 != null) {
                            lane = lazyStaggeredGridItemInfo3.getLane();
                        } else {
                            lane = 0;
                        }
                        LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ8 = lazyStaggeredGridMeasureContext2.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(index, lazyStaggeredGridMeasureContext2.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext2.getItemProvider(), index, lane));
                        arrayList2.add(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ8);
                        positions = lazyStaggeredGridMeasureContext2.getResolvedSlots().getPositions();
                        if (positions.length > lane) {
                            i10 = positions[lane];
                        } else {
                            i10 = 0;
                        }
                        lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ8.position(mainAxisSizeWithSpacings4, i10, afterContentPadding3);
                        mainAxisSizeWithSpacings4 = lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ8.getMainAxisSizeWithSpacings() + mainAxisSizeWithSpacings4;
                    }
                    if (index == iMin) {
                        break;
                    }
                    index++;
                    collection = collection;
                    afterContentPadding2 = afterContentPadding2;
                }
            } else {
                collection = collection;
                afterContentPadding2 = afterContentPadding2;
                arrayList2 = null;
            }
        }
        List<Integer> pinnedItems2 = lazyStaggeredGridMeasureContext2.getPinnedItems();
        ArrayList arrayList8 = null;
        int i72 = 0;
        for (int size6 = pinnedItems2.size(); i72 < size6; size6 = size6) {
            int iIntValue2 = pinnedItems2.get(i72).intValue();
            if (iIntValue2 >= i4) {
                list = pinnedItems2;
            } else {
                if (arrayList2 != null) {
                    int size7 = arrayList2.size();
                    list = pinnedItems2;
                    int i73 = 0;
                    while (true) {
                        if (i73 < size7) {
                            int i74 = i73;
                            if (((LazyStaggeredGridMeasuredItem) arrayList2.get(i73)).getIndex() != iIntValue2) {
                                i73 = i74 + 1;
                            }
                        }
                    }
                } else {
                    list = pinnedItems2;
                }
                int lane3 = lazyStaggeredGridMeasureContext2.getLaneInfo().getLane(iIntValue2);
                if (lane3 == -2 || lane3 == -1) {
                    int length9 = iArr16.length;
                    int i75 = 0;
                    while (true) {
                        if (i75 < length9) {
                            int i76 = length9;
                            if (iArr16[i75] < iIntValue2) {
                                i75++;
                                length9 = i76;
                            }
                        } else {
                            arrayList3 = arrayList8;
                            long jM2264getSpanRangelOCCd4c7 = lazyStaggeredGridMeasureContext2.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext2.getItemProvider(), iIntValue2, 0);
                            if (arrayList3 == null) {
                                arrayList4 = new ArrayList();
                            } else {
                                arrayList4 = arrayList3;
                            }
                            LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ9 = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(iIntValue2, jM2264getSpanRangelOCCd4c7);
                            lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ9.position(mainAxisSizeWithSpacings4, 0, afterContentPadding3);
                            int mainAxisSizeWithSpacings5 = lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ9.getMainAxisSizeWithSpacings() + mainAxisSizeWithSpacings4;
                            arrayList4.add(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ9);
                            arrayList8 = arrayList4;
                            mainAxisSizeWithSpacings4 = mainAxisSizeWithSpacings5;
                        }
                    }
                } else if (iArr16[lane3] < iIntValue2) {
                    arrayList3 = arrayList8;
                    long jM2264getSpanRangelOCCd4c8 = lazyStaggeredGridMeasureContext2.m2264getSpanRangelOCCd4c(lazyStaggeredGridMeasureContext2.getItemProvider(), iIntValue2, 0);
                    if (arrayList3 == null) {
                        arrayList4 = new ArrayList();
                    } else {
                        arrayList4 = arrayList3;
                    }
                    LazyStaggeredGridMeasuredItem lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ10 = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().m2272getAndMeasurejy6DScQ(iIntValue2, jM2264getSpanRangelOCCd4c8);
                    lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ10.position(mainAxisSizeWithSpacings4, 0, afterContentPadding3);
                    int mainAxisSizeWithSpacings6 = lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ10.getMainAxisSizeWithSpacings() + mainAxisSizeWithSpacings4;
                    arrayList4.add(lazyStaggeredGridMeasuredItemM2272getAndMeasurejy6DScQ10);
                    arrayList8 = arrayList4;
                    mainAxisSizeWithSpacings4 = mainAxisSizeWithSpacings6;
                }
                i72++;
                lazyStaggeredGridMeasureContext2 = lazyStaggeredGridMeasureContext;
                pinnedItems2 = list;
            }
            i72++;
            lazyStaggeredGridMeasureContext2 = lazyStaggeredGridMeasureContext;
            pinnedItems2 = list;
        }
        ArrayList arrayList9 = arrayList8;
        Collection collection2 = arrayList9 == null ? kx2Var3 : arrayList9;
        final ArrayList arrayList10 = new ArrayList();
        arrayList10.addAll(collection);
        arrayList10.addAll(listCalculateVisibleItems);
        if (arrayList2 != null) {
            arrayList10.addAll(arrayList2);
        }
        arrayList10.addAll(collection2);
        LazyLayoutItemAnimator<LazyStaggeredGridMeasuredItem> itemAnimator$foundation = lazyStaggeredGridMeasureContext.getState().getItemAnimator$foundation();
        int i77 = (int) f2;
        LazyLayoutKeyIndexMap keyIndexMap = lazyStaggeredGridMeasureContext.getMeasuredItemProvider().getKeyIndexMap();
        LazyStaggeredGridMeasureProvider measuredItemProvider = lazyStaggeredGridMeasureContext.getMeasuredItemProvider();
        boolean zIsVertical = lazyStaggeredGridMeasureContext.isVertical();
        int laneCount3 = lazyStaggeredGridMeasureContext.getLaneCount();
        boolean zIsLookingAhead = lazyLayoutMeasureScope2.isLookingAhead();
        boolean zIsInLookaheadScope = lazyStaggeredGridMeasureContext.isInLookaheadScope();
        if (iArr3.length == 0) {
            qz0.e();
            return null;
        }
        int i78 = iArr3[0];
        int length10 = iArr3.length - 1;
        if (1 <= length10) {
            int i79 = i78;
            int i80 = 1;
            while (true) {
                int i81 = iArr3[i80];
                if (i79 > i81) {
                    i79 = i81;
                }
                if (i80 == length10) {
                    break;
                }
                i80++;
            }
            i8 = i79;
        } else {
            i8 = i78;
        }
        itemAnimator$foundation.onMeasured(i77, iM8995getMaxWidthimpl, iM9011constrainHeightK40F9xA2, arrayList10, keyIndexMap, measuredItemProvider, zIsVertical, zIsLookingAhead, laneCount3, zIsInLookaheadScope, i8, yr.W(iArr9) + afterContentPadding2, lazyStaggeredGridMeasureContext.getCoroutineScope(), lazyStaggeredGridMeasureContext.getGraphicsContext());
        if (lazyLayoutMeasureScope2.isLookingAhead()) {
            f = f2;
            iM9011constrainHeightK40F9xA = iM9011constrainHeightK40F9xA2;
            iM9012constrainWidthK40F9xA = iM8995getMaxWidthimpl;
        } else {
            long jM2216getMinSizeToFitDisappearingItemsYbymL2g2 = lazyStaggeredGridMeasureContext.getState().getItemAnimator$foundation().m2216getMinSizeToFitDisappearingItemsYbymL2g();
            if (IntSize.m9211equalsimpl0(jM2216getMinSizeToFitDisappearingItemsYbymL2g2, IntSize.Companion.m9218getZeroYbymL2g())) {
                f = f2;
                iM9011constrainHeightK40F9xA = iM9011constrainHeightK40F9xA2;
                iM9012constrainWidthK40F9xA = iM8995getMaxWidthimpl;
            } else {
                int i82 = lazyStaggeredGridMeasureContext.isVertical() ? iM9011constrainHeightK40F9xA2 : iM8995getMaxWidthimpl;
                f = f2;
                iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(lazyStaggeredGridMeasureContext.m2261getConstraintsmsEJaDk(), Math.max(iM8995getMaxWidthimpl, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g2 >> 32)));
                iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(lazyStaggeredGridMeasureContext.m2261getConstraintsmsEJaDk(), Math.max(iM9011constrainHeightK40F9xA2, (int) (jM2216getMinSizeToFitDisappearingItemsYbymL2g2 & j)));
                int i83 = lazyStaggeredGridMeasureContext.isVertical() ? iM9011constrainHeightK40F9xA : iM9012constrainWidthK40F9xA;
                if (i83 != i82) {
                    int size8 = arrayList10.size();
                    for (int i84 = 0; i84 < size8; i84++) {
                        ((LazyStaggeredGridMeasuredItem) arrayList10.get(i84)).updateMainAxisLayoutSize(i83);
                    }
                }
            }
        }
        int i85 = 0;
        while (true) {
            if (i85 >= length4) {
                for (int i86 : iArr16) {
                    if (i86 >= i4 - 1) {
                        z3 = false;
                        final boolean reverseLayout = lazyStaggeredGridMeasureContext.getReverseLayout();
                        final long jM2262getContentOffsetnOccac = lazyStaggeredGridMeasureContext.m2262getContentOffsetnOccac();
                        final LazyLayoutMeasureScope lazyLayoutMeasureScope4 = lazyLayoutMeasureScope2;
                        nl3 nl3Var = new nl3() { // from class: ko4
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return LazyStaggeredGridMeasureKt.measure$lambda$0$37(lazyStaggeredGridMeasureContext, arrayList10, reverseLayout, jM2262getContentOffsetnOccac, lazyLayoutMeasureScope4, (Placeable.PlacementScope) obj);
                            }
                        };
                        int i87 = iM9012constrainWidthK40F9xA;
                        int i88 = iM9011constrainHeightK40F9xA;
                        return new LazyStaggeredGridMeasureResult(iArr6, iArr3, f, MeasureScope.layout$default(lazyLayoutMeasureScope4, i87, i88, null, nl3Var, 4, null), f4, z3, lazyStaggeredGridMeasureContext.isVertical(), z6, lazyStaggeredGridMeasureContext.getResolvedSlots(), lazyStaggeredGridMeasureContext.getItemProvider().getSpanProvider(), lazyLayoutMeasureScope4, i4, listCalculateVisibleItems, IntSize.m9208constructorimpl((((long) i88) & j) | (((long) i87) << 32)), i21, i69, lazyStaggeredGridMeasureContext.getBeforeContentPadding(), lazyStaggeredGridMeasureContext.getAfterContentPadding(), lazyStaggeredGridMeasureContext.getMainAxisSpacing(), lazyStaggeredGridMeasureContext.getCoroutineScope(), null);
                    }
                }
                break;
            }
            if (iArr9[i85] > lazyStaggeredGridMeasureContext.getMainAxisAvailableSize()) {
                break;
            }
            i85++;
        }
        z3 = true;
        final boolean reverseLayout2 = lazyStaggeredGridMeasureContext.getReverseLayout();
        final long jM2262getContentOffsetnOccac2 = lazyStaggeredGridMeasureContext.m2262getContentOffsetnOccac();
        final LazyLayoutMeasureScope lazyLayoutMeasureScope5 = lazyLayoutMeasureScope2;
        nl3 nl3Var2 = new nl3() { // from class: ko4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return LazyStaggeredGridMeasureKt.measure$lambda$0$37(lazyStaggeredGridMeasureContext, arrayList10, reverseLayout2, jM2262getContentOffsetnOccac2, lazyLayoutMeasureScope5, (Placeable.PlacementScope) obj);
            }
        };
        int i89 = iM9012constrainWidthK40F9xA;
        int i810 = iM9011constrainHeightK40F9xA;
        return new LazyStaggeredGridMeasureResult(iArr6, iArr3, f, MeasureScope.layout$default(lazyLayoutMeasureScope5, i89, i810, null, nl3Var2, 4, null), f4, z3, lazyStaggeredGridMeasureContext.isVertical(), z6, lazyStaggeredGridMeasureContext.getResolvedSlots(), lazyStaggeredGridMeasureContext.getItemProvider().getSpanProvider(), lazyLayoutMeasureScope5, i4, listCalculateVisibleItems, IntSize.m9208constructorimpl((((long) i810) & j) | (((long) i89) << 32)), i21, i69, lazyStaggeredGridMeasureContext.getBeforeContentPadding(), lazyStaggeredGridMeasureContext.getAfterContentPadding(), lazyStaggeredGridMeasureContext.getMainAxisSpacing(), lazyStaggeredGridMeasureContext.getCoroutineScope(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure$lambda$0$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure$lambda$0$37(LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, final List list, final boolean z, final long j, final LazyLayoutMeasureScope lazyLayoutMeasureScope, Placeable.PlacementScope placementScope) {
        placementScope.withMotionFrameOfReferencePlacement(new nl3() { // from class: jo4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return LazyStaggeredGridMeasureKt.measure$lambda$0$37$0(list, z, j, lazyLayoutMeasureScope, (Placeable.PlacementScope) obj);
            }
        });
        ObservableScopeInvalidator.m2232attachToScopeimpl(lazyStaggeredGridMeasureContext.getState().m2277getPlacementScopeInvalidatorzYiylxw$foundation());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure$lambda$0$37$0(List list, boolean z, long j, LazyLayoutMeasureScope lazyLayoutMeasureScope, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((LazyStaggeredGridMeasuredItem) list.get(i)).m2275placeGMOY1bU(placementScope, z, j, lazyLayoutMeasureScope.isLookingAhead());
        }
        return j59.a;
    }

    private static final boolean measure$lambda$0$hasSpaceBeforeFirst(int[] iArr, int[] iArr2, LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (iArr2[i] < Math.max(-lazyStaggeredGridMeasureContext.getMainAxisSpacing(), 0) && i2 > 0) {
                return true;
            }
        }
        return false;
    }

    private static final boolean measure$lambda$0$misalignedStart(int[] iArr, LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext, int[] iArr2, int i) {
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (findPreviousItemIndex(lazyStaggeredGridMeasureContext, iArr[i2], i2) == -1 && iArr2[i2] != iArr2[i]) {
                return true;
            }
        }
        int length2 = iArr.length;
        for (int i3 = 0; i3 < length2; i3++) {
            if (findPreviousItemIndex(lazyStaggeredGridMeasureContext, iArr[i3], i3) != -1 && iArr2[i3] >= iArr2[i]) {
                return true;
            }
        }
        int lane = lazyStaggeredGridMeasureContext.getLaneInfo().getLane(0);
        return (lane == 0 || lane == -1 || lane == -2) ? false : true;
    }

    /* JADX INFO: renamed from: measureStaggeredGrid-C6celF4, reason: not valid java name */
    public static final LazyStaggeredGridMeasureResult m2269measureStaggeredGridC6celF4(LazyLayoutMeasureScope lazyLayoutMeasureScope, LazyStaggeredGridState lazyStaggeredGridState, List<Integer> list, LazyStaggeredGridItemProvider lazyStaggeredGridItemProvider, LazyStaggeredGridSlots lazyStaggeredGridSlots, long j, boolean z, boolean z2, long j2, int i, int i2, int i3, int i4, y22 y22Var, boolean z3, boolean z4, LazyStaggeredGridLayoutInfo lazyStaggeredGridLayoutInfo, GraphicsContext graphicsContext) {
        int i5;
        int iM2268maxInRangejy6DScQ;
        LazyStaggeredGridMeasureContext lazyStaggeredGridMeasureContext = new LazyStaggeredGridMeasureContext(lazyStaggeredGridState, list, lazyStaggeredGridItemProvider, lazyStaggeredGridSlots, j, z, lazyLayoutMeasureScope, i, j2, i3, i4, z2, i2, y22Var, z3, z4, lazyStaggeredGridLayoutInfo != null ? lazyStaggeredGridLayoutInfo.getVisibleItemsInfo() : null, graphicsContext, null);
        int[] iArrUpdateScrollPositionIfTheFirstItemWasMoved$foundation = lazyStaggeredGridState.updateScrollPositionIfTheFirstItemWasMoved$foundation(lazyStaggeredGridItemProvider, lazyStaggeredGridState.getScrollPosition$foundation().getIndices());
        int[] scrollOffsets = lazyStaggeredGridState.getScrollPosition$foundation().getScrollOffsets();
        if (iArrUpdateScrollPositionIfTheFirstItemWasMoved$foundation.length != lazyStaggeredGridMeasureContext.getLaneCount()) {
            lazyStaggeredGridMeasureContext.getLaneInfo().reset();
            int laneCount = lazyStaggeredGridMeasureContext.getLaneCount();
            int[] iArr = new int[laneCount];
            int i6 = 0;
            while (i6 < laneCount) {
                if (i6 >= iArrUpdateScrollPositionIfTheFirstItemWasMoved$foundation.length || (iM2268maxInRangejy6DScQ = iArrUpdateScrollPositionIfTheFirstItemWasMoved$foundation[i6]) == -1) {
                    iM2268maxInRangejy6DScQ = i6 == 0 ? 0 : m2268maxInRangejy6DScQ(iArr, SpanRange.m2279constructorimpl(0, i6)) + 1;
                }
                iArr[i6] = iM2268maxInRangejy6DScQ;
                lazyStaggeredGridMeasureContext.getLaneInfo().setLane(iArr[i6], i6);
                i6++;
            }
            iArrUpdateScrollPositionIfTheFirstItemWasMoved$foundation = iArr;
        }
        if (scrollOffsets.length != lazyStaggeredGridMeasureContext.getLaneCount()) {
            int laneCount2 = lazyStaggeredGridMeasureContext.getLaneCount();
            int[] iArr2 = new int[laneCount2];
            int i7 = 0;
            while (i7 < laneCount2) {
                if (i7 < scrollOffsets.length) {
                    i5 = scrollOffsets[i7];
                } else {
                    i5 = i7 == 0 ? 0 : iArr2[i7 - 1];
                }
                iArr2[i7] = i5;
                i7++;
            }
            scrollOffsets = iArr2;
        }
        return measure(lazyStaggeredGridMeasureContext, Math.round(lazyStaggeredGridState.scrollToBeConsumed$foundation(z4)), iArrUpdateScrollPositionIfTheFirstItemWasMoved$foundation, scrollOffsets, true);
    }

    private static final void offsetBy(int[] iArr, int i) {
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = iArr[i2] + i;
        }
    }

    private static final int[] transform(int[] iArr, nl3<? super Integer, Integer> nl3Var) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            iArr[i] = nl3Var.invoke(Integer.valueOf(iArr[i])).intValue();
        }
        return iArr;
    }

    private static final <T> T withDebugLogging(LazyLayoutMeasureScope lazyLayoutMeasureScope, nl3<? super LazyLayoutMeasureScope, ? extends T> nl3Var) {
        return nl3Var.invoke(lazyLayoutMeasureScope);
    }
}
