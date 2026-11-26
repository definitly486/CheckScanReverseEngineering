package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import defpackage.aa4;
import defpackage.ch;
import defpackage.ej0;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.rg;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class FlowMeasurePolicy implements MultiContentMeasurePolicy, FlowLineMeasurePolicy {
    private final CrossAxisAlignment crossAxisAlignment;
    private final float crossAxisArrangementSpacing;
    private final Arrangement.Horizontal horizontalArrangement;
    private final boolean isHorizontal;
    private final float mainAxisSpacing;
    private final int maxItemsInMainAxis;
    private final int maxLines;
    private final FlowLayoutOverflowState overflow;
    private final Arrangement.Vertical verticalArrangement;

    private FlowMeasurePolicy(boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, float f, CrossAxisAlignment crossAxisAlignment, float f2, int i, int i2, FlowLayoutOverflowState flowLayoutOverflowState) {
        this.isHorizontal = z;
        this.horizontalArrangement = horizontal;
        this.verticalArrangement = vertical;
        this.mainAxisSpacing = f;
        this.crossAxisAlignment = crossAxisAlignment;
        this.crossAxisArrangementSpacing = f2;
        this.maxItemsInMainAxis = i;
        this.maxLines = i2;
        this.overflow = flowLayoutOverflowState;
    }

    /* JADX INFO: renamed from: component4-D9Ej5fM, reason: not valid java name */
    private final float m1906component4D9Ej5fM() {
        return this.mainAxisSpacing;
    }

    /* JADX INFO: renamed from: component6-D9Ej5fM, reason: not valid java name */
    private final float m1907component6D9Ej5fM() {
        return this.crossAxisArrangementSpacing;
    }

    private final int component7() {
        return this.maxItemsInMainAxis;
    }

    private final int component8() {
        return this.maxLines;
    }

    private final FlowLayoutOverflowState component9() {
        return this.overflow;
    }

    /* JADX INFO: renamed from: copy-QuyCDyQ$default, reason: not valid java name */
    public static /* synthetic */ FlowMeasurePolicy m1908copyQuyCDyQ$default(FlowMeasurePolicy flowMeasurePolicy, boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, float f, CrossAxisAlignment crossAxisAlignment, float f2, int i, int i2, FlowLayoutOverflowState flowLayoutOverflowState, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            z = flowMeasurePolicy.isHorizontal;
        }
        if ((i3 & 2) != 0) {
            horizontal = flowMeasurePolicy.horizontalArrangement;
        }
        if ((i3 & 4) != 0) {
            vertical = flowMeasurePolicy.verticalArrangement;
        }
        if ((i3 & 8) != 0) {
            f = flowMeasurePolicy.mainAxisSpacing;
        }
        if ((i3 & 16) != 0) {
            crossAxisAlignment = flowMeasurePolicy.crossAxisAlignment;
        }
        if ((i3 & 32) != 0) {
            f2 = flowMeasurePolicy.crossAxisArrangementSpacing;
        }
        if ((i3 & 64) != 0) {
            i = flowMeasurePolicy.maxItemsInMainAxis;
        }
        if ((i3 & 128) != 0) {
            i2 = flowMeasurePolicy.maxLines;
        }
        if ((i3 & 256) != 0) {
            flowLayoutOverflowState = flowMeasurePolicy.overflow;
        }
        int i4 = i2;
        FlowLayoutOverflowState flowLayoutOverflowState2 = flowLayoutOverflowState;
        float f3 = f2;
        int i5 = i;
        CrossAxisAlignment crossAxisAlignment2 = crossAxisAlignment;
        Arrangement.Vertical vertical2 = vertical;
        return flowMeasurePolicy.m1909copyQuyCDyQ(z, horizontal, vertical2, f, crossAxisAlignment2, f3, i5, i4, flowLayoutOverflowState2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    public final boolean component1() {
        return this.isHorizontal;
    }

    public final Arrangement.Horizontal component2() {
        return this.horizontalArrangement;
    }

    public final Arrangement.Vertical component3() {
        return this.verticalArrangement;
    }

    public final CrossAxisAlignment component5() {
        return this.crossAxisAlignment;
    }

    /* JADX INFO: renamed from: copy-QuyCDyQ, reason: not valid java name */
    public final FlowMeasurePolicy m1909copyQuyCDyQ(boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, float f, CrossAxisAlignment crossAxisAlignment, float f2, int i, int i2, FlowLayoutOverflowState flowLayoutOverflowState) {
        return new FlowMeasurePolicy(z, horizontal, vertical, f, crossAxisAlignment, f2, i, i2, flowLayoutOverflowState, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlowMeasurePolicy)) {
            return false;
        }
        FlowMeasurePolicy flowMeasurePolicy = (FlowMeasurePolicy) obj;
        return this.isHorizontal == flowMeasurePolicy.isHorizontal && aa4.e(this.horizontalArrangement, flowMeasurePolicy.horizontalArrangement) && aa4.e(this.verticalArrangement, flowMeasurePolicy.verticalArrangement) && Dp.m9047equalsimpl0(this.mainAxisSpacing, flowMeasurePolicy.mainAxisSpacing) && aa4.e(this.crossAxisAlignment, flowMeasurePolicy.crossAxisAlignment) && Dp.m9047equalsimpl0(this.crossAxisArrangementSpacing, flowMeasurePolicy.crossAxisArrangementSpacing) && this.maxItemsInMainAxis == flowMeasurePolicy.maxItemsInMainAxis && this.maxLines == flowMeasurePolicy.maxLines && aa4.e(this.overflow, flowMeasurePolicy.overflow);
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    public CrossAxisAlignment getCrossAxisAlignment() {
        return this.crossAxisAlignment;
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    public Arrangement.Horizontal getHorizontalArrangement() {
        return this.horizontalArrangement;
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    public Arrangement.Vertical getVerticalArrangement() {
        return this.verticalArrangement;
    }

    public int hashCode() {
        return this.overflow.hashCode() + ej0.b(this.maxLines, ej0.b(this.maxItemsInMainAxis, rg.c(this.crossAxisArrangementSpacing, (this.crossAxisAlignment.hashCode() + rg.c(this.mainAxisSpacing, (this.verticalArrangement.hashCode() + ((this.horizontalArrangement.hashCode() + (Boolean.hashCode(this.isHorizontal) * 31)) * 31)) * 31, 31)) * 31, 31), 31), 31);
    }

    public final int intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, int i, int i2, int i3, int i4, int i5, FlowLayoutOverflowState flowLayoutOverflowState) {
        long jM1028constructorimpl;
        int i6 = 0;
        if (list.isEmpty()) {
            jM1028constructorimpl = IntIntPair.m1028constructorimpl(0, 0);
        } else {
            FlowLayoutBuildingBlocks flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(i4, flowLayoutOverflowState, OrientationIndependentConstraints.m2000constructorimpl(0, i, 0, Integer.MAX_VALUE), i5, i2, i3, null);
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) qn1.W(0, list);
            int iMinCrossAxisIntrinsicItemSize = intrinsicMeasurable != null ? minCrossAxisIntrinsicItemSize(intrinsicMeasurable, i) : 0;
            int iMinMainAxisIntrinsicItemSize = intrinsicMeasurable != null ? minMainAxisIntrinsicItemSize(intrinsicMeasurable, iMinCrossAxisIntrinsicItemSize) : 0;
            int i7 = 0;
            if (flowLayoutBuildingBlocks.m1887getWrapInfoOpUlnko(list.size() > 1, 0, IntIntPair.m1028constructorimpl(i, Integer.MAX_VALUE), intrinsicMeasurable == null ? null : IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(iMinMainAxisIntrinsicItemSize, iMinCrossAxisIntrinsicItemSize)), 0, 0, 0, false, false).isLastItemInContainer()) {
                IntIntPair intIntPairM1892ellipsisSizeF35zmw$foundation_layout = flowLayoutOverflowState.m1892ellipsisSizeF35zmw$foundation_layout(intrinsicMeasurable != null, 0, 0);
                jM1028constructorimpl = IntIntPair.m1028constructorimpl(intIntPairM1892ellipsisSizeF35zmw$foundation_layout != null ? IntIntPair.m1033getSecondimpl(intIntPairM1892ellipsisSizeF35zmw$foundation_layout.m1036unboximpl()) : 0, 0);
            } else {
                int size = list.size();
                int i8 = i;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                while (i9 < size) {
                    int i14 = i8 - iMinMainAxisIntrinsicItemSize;
                    int i15 = i9 + 1;
                    int iMax = Math.max(i13, iMinCrossAxisIntrinsicItemSize);
                    IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) qn1.W(i15, list);
                    int iMinCrossAxisIntrinsicItemSize2 = intrinsicMeasurable2 != null ? minCrossAxisIntrinsicItemSize(intrinsicMeasurable2, i) : i6;
                    int iMinMainAxisIntrinsicItemSize2 = intrinsicMeasurable2 != null ? minMainAxisIntrinsicItemSize(intrinsicMeasurable2, iMinCrossAxisIntrinsicItemSize2) + i2 : i6;
                    boolean z = i9 + 2 < list.size();
                    int i16 = i15 - i11;
                    int i17 = i12;
                    int i18 = iMinMainAxisIntrinsicItemSize2;
                    int i19 = iMinCrossAxisIntrinsicItemSize2;
                    FlowLayoutBuildingBlocks.WrapInfo wrapInfoM1887getWrapInfoOpUlnko = flowLayoutBuildingBlocks.m1887getWrapInfoOpUlnko(z, i16, IntIntPair.m1028constructorimpl(i14, Integer.MAX_VALUE), intrinsicMeasurable2 == null ? null : IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(iMinMainAxisIntrinsicItemSize2, iMinCrossAxisIntrinsicItemSize2)), i17, i7, iMax, false, false);
                    if (wrapInfoM1887getWrapInfoOpUlnko.isLastItemInLine()) {
                        int iM1033getSecondimpl = iMax + i3 + i7;
                        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo = flowLayoutBuildingBlocks.getWrapEllipsisInfo(wrapInfoM1887getWrapInfoOpUlnko, intrinsicMeasurable2 != null, i17, iM1033getSecondimpl, i14, i16);
                        int i20 = i18 - i2;
                        i12 = i17 + 1;
                        if (wrapInfoM1887getWrapInfoOpUlnko.isLastItemInContainer()) {
                            if (wrapEllipsisInfo != null) {
                                long jM1888getEllipsisSizeOO21N7I = wrapEllipsisInfo.m1888getEllipsisSizeOO21N7I();
                                if (!wrapEllipsisInfo.getPlaceEllipsisOnLastContentLine()) {
                                    iM1033getSecondimpl += IntIntPair.m1033getSecondimpl(jM1888getEllipsisSizeOO21N7I) + i3;
                                }
                            }
                            i7 = iM1033getSecondimpl;
                            i10 = i15;
                            break;
                        }
                        i7 = iM1033getSecondimpl;
                        iMinMainAxisIntrinsicItemSize = i20;
                        i11 = i15;
                        i13 = 0;
                        i8 = i;
                    } else {
                        i8 = i14;
                        i12 = i17;
                        i13 = iMax;
                        iMinMainAxisIntrinsicItemSize = i18;
                    }
                    iMinCrossAxisIntrinsicItemSize = i19;
                    i9 = i15;
                    i10 = i9;
                    i6 = 0;
                }
                jM1028constructorimpl = IntIntPair.m1028constructorimpl(i7 - i3, i10);
            }
        }
        return IntIntPair.m1032getFirstimpl(jM1028constructorimpl);
    }

    @Override // androidx.compose.foundation.layout.FlowLineMeasurePolicy
    public boolean isHorizontal() {
        return this.isHorizontal;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends List<? extends IntrinsicMeasurable>> list, int i) {
        FlowLayoutOverflowState flowLayoutOverflowState = this.overflow;
        List list2 = (List) qn1.W(1, list);
        IntrinsicMeasurable intrinsicMeasurable = list2 != null ? (IntrinsicMeasurable) qn1.V(list2) : null;
        List list3 = (List) qn1.W(2, list);
        flowLayoutOverflowState.m1894setOverflowMeasurableshBUhpc$foundation_layout(intrinsicMeasurable, list3 != null ? (IntrinsicMeasurable) qn1.V(list3) : null, isHorizontal(), ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null));
        boolean zIsHorizontal = isHorizontal();
        List<? extends IntrinsicMeasurable> list4 = kx2.b;
        if (zIsHorizontal) {
            List<? extends IntrinsicMeasurable> list5 = (List) qn1.V(list);
            if (list5 != null) {
                list4 = list5;
            }
            return intrinsicCrossAxisSize(list4, i, intrinsicMeasureScope.mo1428roundToPx0680j_4(this.mainAxisSpacing), intrinsicMeasureScope.mo1428roundToPx0680j_4(this.crossAxisArrangementSpacing), this.maxItemsInMainAxis, this.maxLines, this.overflow);
        }
        List<? extends IntrinsicMeasurable> list6 = (List) qn1.V(list);
        if (list6 != null) {
            list4 = list6;
        }
        return maxIntrinsicMainAxisSize(list4, i, intrinsicMeasureScope.mo1428roundToPx0680j_4(this.mainAxisSpacing));
    }

    public final int maxIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, int i, int i2) {
        int i3 = this.maxItemsInMainAxis;
        int size = list.size();
        int i4 = 0;
        int iMax = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < size) {
            int iMaxMainAxisIntrinsicItemSize = maxMainAxisIntrinsicItemSize(list.get(i4), i) + i2;
            int i7 = i4 + 1;
            if (i7 - i5 == i3 || i7 == list.size()) {
                iMax = Math.max(iMax, (i6 + iMaxMainAxisIntrinsicItemSize) - i2);
                i6 = 0;
                i5 = i4;
            } else {
                i6 += iMaxMainAxisIntrinsicItemSize;
            }
            i4 = i7;
        }
        return iMax;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends List<? extends IntrinsicMeasurable>> list, int i) {
        FlowLayoutOverflowState flowLayoutOverflowState = this.overflow;
        List list2 = (List) qn1.W(1, list);
        IntrinsicMeasurable intrinsicMeasurable = list2 != null ? (IntrinsicMeasurable) qn1.V(list2) : null;
        List list3 = (List) qn1.W(2, list);
        flowLayoutOverflowState.m1894setOverflowMeasurableshBUhpc$foundation_layout(intrinsicMeasurable, list3 != null ? (IntrinsicMeasurable) qn1.V(list3) : null, isHorizontal(), ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null));
        boolean zIsHorizontal = isHorizontal();
        List<? extends IntrinsicMeasurable> list4 = kx2.b;
        if (zIsHorizontal) {
            List<? extends IntrinsicMeasurable> list5 = (List) qn1.V(list);
            if (list5 != null) {
                list4 = list5;
            }
            return maxIntrinsicMainAxisSize(list4, i, intrinsicMeasureScope.mo1428roundToPx0680j_4(this.mainAxisSpacing));
        }
        List<? extends IntrinsicMeasurable> list6 = (List) qn1.V(list);
        if (list6 != null) {
            list4 = list6;
        }
        return intrinsicCrossAxisSize(list4, i, intrinsicMeasureScope.mo1428roundToPx0680j_4(this.mainAxisSpacing), intrinsicMeasureScope.mo1428roundToPx0680j_4(this.crossAxisArrangementSpacing), this.maxItemsInMainAxis, this.maxLines, this.overflow);
    }

    public final int maxMainAxisIntrinsicItemSize(IntrinsicMeasurable intrinsicMeasurable, int i) {
        return isHorizontal() ? intrinsicMeasurable.maxIntrinsicWidth(i) : intrinsicMeasurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s, reason: not valid java name */
    public MeasureResult mo1910measure3p2s80s(MeasureScope measureScope, List<? extends List<? extends Measurable>> list, long j) {
        if (this.maxLines == 0 || this.maxItemsInMainAxis == 0 || list.isEmpty() || (Constraints.m8994getMaxHeightimpl(j) == 0 && this.overflow.getType$foundation_layout() != FlowLayoutOverflow.OverflowType.Visible)) {
            return MeasureScope.layout$default(measureScope, 0, 0, null, new t(), 4, null);
        }
        List list2 = (List) qn1.T(list);
        if (list2.isEmpty()) {
            return MeasureScope.layout$default(measureScope, 0, 0, null, new u(), 4, null);
        }
        List list3 = (List) qn1.W(1, list);
        Measurable measurable = list3 != null ? (Measurable) qn1.V(list3) : null;
        List list4 = (List) qn1.W(2, list);
        Measurable measurable2 = list4 != null ? (Measurable) qn1.V(list4) : null;
        this.overflow.setItemCount$foundation_layout(list2.size());
        this.overflow.m1893setOverflowMeasurableshBUhpc$foundation_layout(this, measurable, measurable2, j);
        return FlowLayoutKt.m1889breakDownItemsdi9J0FM(measureScope, this, list2.iterator(), this.mainAxisSpacing, this.crossAxisArrangementSpacing, OrientationIndependentConstraints.m2002constructorimpl(j, isHorizontal() ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical), this.maxItemsInMainAxis, this.maxLines, this.overflow);
    }

    public final int minCrossAxisIntrinsicItemSize(IntrinsicMeasurable intrinsicMeasurable, int i) {
        return isHorizontal() ? intrinsicMeasurable.minIntrinsicHeight(i) : intrinsicMeasurable.minIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends List<? extends IntrinsicMeasurable>> list, int i) {
        FlowLayoutOverflowState flowLayoutOverflowState = this.overflow;
        List list2 = (List) qn1.W(1, list);
        IntrinsicMeasurable intrinsicMeasurable = list2 != null ? (IntrinsicMeasurable) qn1.V(list2) : null;
        List list3 = (List) qn1.W(2, list);
        flowLayoutOverflowState.m1894setOverflowMeasurableshBUhpc$foundation_layout(intrinsicMeasurable, list3 != null ? (IntrinsicMeasurable) qn1.V(list3) : null, isHorizontal(), ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null));
        boolean zIsHorizontal = isHorizontal();
        List<? extends IntrinsicMeasurable> list4 = kx2.b;
        if (zIsHorizontal) {
            List<? extends IntrinsicMeasurable> list5 = (List) qn1.V(list);
            if (list5 != null) {
                list4 = list5;
            }
            return intrinsicCrossAxisSize(list4, i, intrinsicMeasureScope.mo1428roundToPx0680j_4(this.mainAxisSpacing), intrinsicMeasureScope.mo1428roundToPx0680j_4(this.crossAxisArrangementSpacing), this.maxItemsInMainAxis, this.maxLines, this.overflow);
        }
        List<? extends IntrinsicMeasurable> list6 = (List) qn1.V(list);
        if (list6 != null) {
            list4 = list6;
        }
        return minIntrinsicMainAxisSize(list4, i, intrinsicMeasureScope.mo1428roundToPx0680j_4(this.mainAxisSpacing), intrinsicMeasureScope.mo1428roundToPx0680j_4(this.crossAxisArrangementSpacing), this.maxItemsInMainAxis, this.maxLines, this.overflow);
    }

    public final int minIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, int i, int i2, int i3, int i4, int i5, FlowLayoutOverflowState flowLayoutOverflowState) {
        int i6 = i4;
        int i7 = i5;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int[] iArr = new int[size];
        int size2 = list.size();
        int[] iArr2 = new int[size2];
        int size3 = list.size();
        for (int i8 = 0; i8 < size3; i8++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i8);
            int iMinMainAxisIntrinsicItemSize = minMainAxisIntrinsicItemSize(intrinsicMeasurable, i);
            iArr[i8] = iMinMainAxisIntrinsicItemSize;
            iArr2[i8] = minCrossAxisIntrinsicItemSize(intrinsicMeasurable, iMinMainAxisIntrinsicItemSize);
        }
        int i9 = Integer.MAX_VALUE;
        if (i7 != Integer.MAX_VALUE && i6 != Integer.MAX_VALUE) {
            i9 = i6 * i7;
        }
        int i10 = 1;
        int iMin = Math.min(i9 - (((i9 >= list.size() || !(flowLayoutOverflowState.getType$foundation_layout() == FlowLayoutOverflow.OverflowType.ExpandIndicator || flowLayoutOverflowState.getType$foundation_layout() == FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator)) && (i9 < list.size() || i7 < flowLayoutOverflowState.getMinLinesToShowCollapse$foundation_layout() || flowLayoutOverflowState.getType$foundation_layout() != FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator)) ? 0 : 1), list.size());
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            i11 += iArr[i12];
        }
        int size4 = ((list.size() - 1) * i2) + i11;
        if (size2 == 0) {
            qz0.e();
            return 0;
        }
        int i13 = iArr2[0];
        int i14 = size2 - 1;
        if (1 <= i14) {
            int i15 = 1;
            while (true) {
                int i16 = iArr2[i15];
                if (i13 < i16) {
                    i13 = i16;
                }
                if (i15 == i14) {
                    break;
                }
                i15++;
            }
        }
        if (size == 0) {
            qz0.e();
            return 0;
        }
        int i17 = iArr[0];
        int i18 = size - 1;
        if (1 <= i18) {
            while (true) {
                int i19 = iArr[i10];
                if (i17 < i19) {
                    i17 = i19;
                }
                if (i10 == i18) {
                    break;
                }
                i10++;
            }
        }
        int i20 = i17;
        int i21 = i13;
        int i22 = size4;
        while (i20 <= i22 && i21 != i) {
            int i23 = (i20 + i22) / 2;
            int[] iArr3 = iArr;
            long jIntrinsicCrossAxisSize = FlowLayoutKt.intrinsicCrossAxisSize(list, iArr3, iArr2, i23, i2, i3, i6, i7, flowLayoutOverflowState);
            int iM1032getFirstimpl = IntIntPair.m1032getFirstimpl(jIntrinsicCrossAxisSize);
            int iM1033getSecondimpl = IntIntPair.m1033getSecondimpl(jIntrinsicCrossAxisSize);
            if (iM1032getFirstimpl > i || iM1033getSecondimpl < iMin) {
                i20 = i23 + 1;
                if (i20 > i22) {
                    return i20;
                }
            } else {
                if (iM1032getFirstimpl >= i) {
                    return i23;
                }
                i22 = i23 - 1;
            }
            i6 = i4;
            i7 = i5;
            size4 = i23;
            iArr = iArr3;
            i21 = iM1032getFirstimpl;
        }
        return size4;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends List<? extends IntrinsicMeasurable>> list, int i) {
        FlowLayoutOverflowState flowLayoutOverflowState = this.overflow;
        List list2 = (List) qn1.W(1, list);
        IntrinsicMeasurable intrinsicMeasurable = list2 != null ? (IntrinsicMeasurable) qn1.V(list2) : null;
        List list3 = (List) qn1.W(2, list);
        flowLayoutOverflowState.m1894setOverflowMeasurableshBUhpc$foundation_layout(intrinsicMeasurable, list3 != null ? (IntrinsicMeasurable) qn1.V(list3) : null, isHorizontal(), ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null));
        boolean zIsHorizontal = isHorizontal();
        List<? extends IntrinsicMeasurable> list4 = kx2.b;
        if (zIsHorizontal) {
            List<? extends IntrinsicMeasurable> list5 = (List) qn1.V(list);
            if (list5 != null) {
                list4 = list5;
            }
            return minIntrinsicMainAxisSize(list4, i, intrinsicMeasureScope.mo1428roundToPx0680j_4(this.mainAxisSpacing), intrinsicMeasureScope.mo1428roundToPx0680j_4(this.crossAxisArrangementSpacing), this.maxItemsInMainAxis, this.maxLines, this.overflow);
        }
        List<? extends IntrinsicMeasurable> list6 = (List) qn1.V(list);
        if (list6 != null) {
            list4 = list6;
        }
        return intrinsicCrossAxisSize(list4, i, intrinsicMeasureScope.mo1428roundToPx0680j_4(this.mainAxisSpacing), intrinsicMeasureScope.mo1428roundToPx0680j_4(this.crossAxisArrangementSpacing), this.maxItemsInMainAxis, this.maxLines, this.overflow);
    }

    public final int minMainAxisIntrinsicItemSize(IntrinsicMeasurable intrinsicMeasurable, int i) {
        return isHorizontal() ? intrinsicMeasurable.minIntrinsicWidth(i) : intrinsicMeasurable.minIntrinsicHeight(i);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FlowMeasurePolicy(isHorizontal=");
        sb.append(this.isHorizontal);
        sb.append(", horizontalArrangement=");
        sb.append(this.horizontalArrangement);
        sb.append(", verticalArrangement=");
        sb.append(this.verticalArrangement);
        sb.append(", mainAxisSpacing=");
        ch.d(sb, ", crossAxisAlignment=", this.mainAxisSpacing);
        sb.append(this.crossAxisAlignment);
        sb.append(", crossAxisArrangementSpacing=");
        ch.d(sb, ", maxItemsInMainAxis=", this.crossAxisArrangementSpacing);
        sb.append(this.maxItemsInMainAxis);
        sb.append(", maxLines=");
        sb.append(this.maxLines);
        sb.append(", overflow=");
        sb.append(this.overflow);
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ FlowMeasurePolicy(boolean z, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, float f, CrossAxisAlignment crossAxisAlignment, float f2, int i, int i2, FlowLayoutOverflowState flowLayoutOverflowState, jh2 jh2Var) {
        this(z, horizontal, vertical, f, crossAxisAlignment, f2, i, i2, flowLayoutOverflowState);
    }
}
