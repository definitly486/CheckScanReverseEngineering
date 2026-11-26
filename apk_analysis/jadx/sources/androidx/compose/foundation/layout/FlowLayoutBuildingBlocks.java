package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class FlowLayoutBuildingBlocks {
    public static final int $stable = 8;
    private final long constraints;
    private final int crossAxisSpacing;
    private final int mainAxisSpacing;
    private final int maxItemsInMainAxis;
    private final int maxLines;
    private final FlowLayoutOverflowState overflow;

    private FlowLayoutBuildingBlocks(int i, FlowLayoutOverflowState flowLayoutOverflowState, long j, int i2, int i3, int i4) {
        this.maxItemsInMainAxis = i;
        this.overflow = flowLayoutOverflowState;
        this.constraints = j;
        this.maxLines = i2;
        this.mainAxisSpacing = i3;
        this.crossAxisSpacing = i4;
    }

    public final WrapEllipsisInfo getWrapEllipsisInfo(WrapInfo wrapInfo, boolean z, int i, int i2, int i3, int i4) {
        WrapEllipsisInfo wrapEllipsisInfoEllipsisInfo$foundation_layout;
        if (!wrapInfo.isLastItemInContainer() || (wrapEllipsisInfoEllipsisInfo$foundation_layout = this.overflow.ellipsisInfo$foundation_layout(z, i, i2)) == null) {
            return null;
        }
        wrapEllipsisInfoEllipsisInfo$foundation_layout.setPlaceEllipsisOnLastContentLine(i >= 0 && (i4 == 0 || (i3 - IntIntPair.m1032getFirstimpl(wrapEllipsisInfoEllipsisInfo$foundation_layout.m1888getEllipsisSizeOO21N7I()) >= 0 && i4 < this.maxItemsInMainAxis)));
        return wrapEllipsisInfoEllipsisInfo$foundation_layout;
    }

    /* JADX INFO: renamed from: getWrapInfo-OpUlnko, reason: not valid java name */
    public final WrapInfo m1887getWrapInfoOpUlnko(boolean z, int i, long j, IntIntPair intIntPair, int i2, int i3, int i4, boolean z2, boolean z3) {
        int i5 = i3 + i4;
        if (intIntPair == null) {
            return new WrapInfo(true, true);
        }
        if (this.overflow.getType$foundation_layout() != FlowLayoutOverflow.OverflowType.Visible && (i2 >= this.maxLines || IntIntPair.m1033getSecondimpl(j) - IntIntPair.m1033getSecondimpl(intIntPair.m1036unboximpl()) < 0)) {
            return new WrapInfo(true, true);
        }
        if (i != 0 && (i >= this.maxItemsInMainAxis || IntIntPair.m1032getFirstimpl(j) - IntIntPair.m1032getFirstimpl(intIntPair.m1036unboximpl()) < 0)) {
            return z2 ? new WrapInfo(true, true) : new WrapInfo(true, m1887getWrapInfoOpUlnko(z, 0, IntIntPair.m1028constructorimpl(Constraints.m8995getMaxWidthimpl(this.constraints), (IntIntPair.m1033getSecondimpl(j) - this.crossAxisSpacing) - i4), IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(IntIntPair.m1032getFirstimpl(intIntPair.m1036unboximpl()) - this.mainAxisSpacing, IntIntPair.m1033getSecondimpl(intIntPair.m1036unboximpl()))), i2 + 1, i5, 0, true, false).isLastItemInContainer());
        }
        int iMax = Math.max(i4, IntIntPair.m1033getSecondimpl(intIntPair.m1036unboximpl())) + i3;
        IntIntPair intIntPairM1892ellipsisSizeF35zmw$foundation_layout = z3 ? null : this.overflow.m1892ellipsisSizeF35zmw$foundation_layout(z, i2, iMax);
        if (intIntPairM1892ellipsisSizeF35zmw$foundation_layout != null) {
            intIntPairM1892ellipsisSizeF35zmw$foundation_layout.m1036unboximpl();
            if (i + 1 >= this.maxItemsInMainAxis || ((IntIntPair.m1032getFirstimpl(j) - IntIntPair.m1032getFirstimpl(intIntPair.m1036unboximpl())) - this.mainAxisSpacing) - IntIntPair.m1032getFirstimpl(intIntPairM1892ellipsisSizeF35zmw$foundation_layout.m1036unboximpl()) < 0) {
                if (z3) {
                    return new WrapInfo(true, true);
                }
                WrapInfo wrapInfoM1887getWrapInfoOpUlnko = m1887getWrapInfoOpUlnko(false, 0, IntIntPair.m1028constructorimpl(Constraints.m8995getMaxWidthimpl(this.constraints), (IntIntPair.m1033getSecondimpl(j) - this.crossAxisSpacing) - Math.max(i4, IntIntPair.m1033getSecondimpl(intIntPair.m1036unboximpl()))), intIntPairM1892ellipsisSizeF35zmw$foundation_layout, i2 + 1, iMax, 0, true, true);
                return new WrapInfo(wrapInfoM1887getWrapInfoOpUlnko.isLastItemInContainer(), wrapInfoM1887getWrapInfoOpUlnko.isLastItemInContainer());
            }
        }
        return new WrapInfo(false, false);
    }

    public static final class WrapEllipsisInfo {
        public static final int $stable = 8;
        private final Measurable ellipsis;
        private final long ellipsisSize;
        private boolean placeEllipsisOnLastContentLine;
        private final Placeable placeable;

        public /* synthetic */ WrapEllipsisInfo(Measurable measurable, Placeable placeable, long j, boolean z, int i, jh2 jh2Var) {
            this(measurable, placeable, j, (i & 8) != 0 ? true : z, null);
        }

        public final Measurable getEllipsis() {
            return this.ellipsis;
        }

        /* JADX INFO: renamed from: getEllipsisSize-OO21N7I, reason: not valid java name */
        public final long m1888getEllipsisSizeOO21N7I() {
            return this.ellipsisSize;
        }

        public final boolean getPlaceEllipsisOnLastContentLine() {
            return this.placeEllipsisOnLastContentLine;
        }

        public final Placeable getPlaceable() {
            return this.placeable;
        }

        public final void setPlaceEllipsisOnLastContentLine(boolean z) {
            this.placeEllipsisOnLastContentLine = z;
        }

        private WrapEllipsisInfo(Measurable measurable, Placeable placeable, long j, boolean z) {
            this.ellipsis = measurable;
            this.placeable = placeable;
            this.ellipsisSize = j;
            this.placeEllipsisOnLastContentLine = z;
        }

        public /* synthetic */ WrapEllipsisInfo(Measurable measurable, Placeable placeable, long j, boolean z, jh2 jh2Var) {
            this(measurable, placeable, j, z);
        }
    }

    public static final class WrapInfo {
        public static final int $stable = 0;
        private final boolean isLastItemInContainer;
        private final boolean isLastItemInLine;

        public /* synthetic */ WrapInfo(boolean z, boolean z2, int i, jh2 jh2Var) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2);
        }

        public final boolean isLastItemInContainer() {
            return this.isLastItemInContainer;
        }

        public final boolean isLastItemInLine() {
            return this.isLastItemInLine;
        }

        public WrapInfo(boolean z, boolean z2) {
            this.isLastItemInLine = z;
            this.isLastItemInContainer = z2;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public WrapInfo() {
            boolean z = false;
            this(z, z, 3, null);
        }
    }

    public /* synthetic */ FlowLayoutBuildingBlocks(int i, FlowLayoutOverflowState flowLayoutOverflowState, long j, int i2, int i3, int i4, jh2 jh2Var) {
        this(i, flowLayoutOverflowState, j, i2, i3, i4);
    }
}
