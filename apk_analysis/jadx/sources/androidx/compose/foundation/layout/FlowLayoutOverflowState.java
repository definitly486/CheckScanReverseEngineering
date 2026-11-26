package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.ah;
import defpackage.bm3;
import defpackage.ej0;
import defpackage.j59;
import defpackage.me0;
import defpackage.of3;
import defpackage.pf3;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class FlowLayoutOverflowState {
    public static final int $stable = 8;
    private Measurable collapseMeasurable;
    private Placeable collapsePlaceable;
    private IntIntPair collapseSize;
    private bm3<? super Boolean, ? super Integer, ? extends Measurable> getOverflowMeasurable;
    private int itemCount;
    private final int minCrossAxisSizeToShowCollapse;
    private final int minLinesToShowCollapse;
    private Measurable seeMoreMeasurable;
    private Placeable seeMorePlaceable;
    private IntIntPair seeMoreSize;
    private final FlowLayoutOverflow.OverflowType type;
    private final String shownItemLazyErrorMessage = "Accessing shownItemCount before it is set. Are you calling this in the Composition phase, rather than in the draw phase? Consider our samples on how to use it during the draw phase or consider using ContextualFlowRow/ContextualFlowColumn which initializes this method in the composition phase.";
    private int itemShown = -1;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FlowLayoutOverflow.OverflowType.values().length];
            try {
                iArr[FlowLayoutOverflow.OverflowType.Visible.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FlowLayoutOverflow.OverflowType.Clip.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FlowLayoutOverflow.OverflowType.ExpandIndicator.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FlowLayoutOverflowState(FlowLayoutOverflow.OverflowType overflowType, int i, int i2) {
        this.type = overflowType;
        this.minLinesToShowCollapse = i;
        this.minCrossAxisSizeToShowCollapse = i2;
    }

    public static /* synthetic */ FlowLayoutOverflowState copy$default(FlowLayoutOverflowState flowLayoutOverflowState, FlowLayoutOverflow.OverflowType overflowType, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            overflowType = flowLayoutOverflowState.type;
        }
        if ((i3 & 2) != 0) {
            i = flowLayoutOverflowState.minLinesToShowCollapse;
        }
        if ((i3 & 4) != 0) {
            i2 = flowLayoutOverflowState.minCrossAxisSizeToShowCollapse;
        }
        return flowLayoutOverflowState.copy(overflowType, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setOverflowMeasurables__hBUhpc$lambda$2$0(FlowLayoutOverflowState flowLayoutOverflowState, FlowLineMeasurePolicy flowLineMeasurePolicy, Placeable placeable) {
        int iMainAxisSize;
        int iCrossAxisSize;
        if (placeable != null) {
            iMainAxisSize = flowLineMeasurePolicy.mainAxisSize(placeable);
            iCrossAxisSize = flowLineMeasurePolicy.crossAxisSize(placeable);
        } else {
            iMainAxisSize = 0;
            iCrossAxisSize = 0;
        }
        flowLayoutOverflowState.seeMoreSize = IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(iMainAxisSize, iCrossAxisSize));
        flowLayoutOverflowState.seeMorePlaceable = placeable;
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setOverflowMeasurables__hBUhpc$lambda$3$0(FlowLayoutOverflowState flowLayoutOverflowState, FlowLineMeasurePolicy flowLineMeasurePolicy, Placeable placeable) {
        int iMainAxisSize;
        int iCrossAxisSize;
        if (placeable != null) {
            iMainAxisSize = flowLineMeasurePolicy.mainAxisSize(placeable);
            iCrossAxisSize = flowLineMeasurePolicy.crossAxisSize(placeable);
        } else {
            iMainAxisSize = 0;
            iCrossAxisSize = 0;
        }
        flowLayoutOverflowState.collapseSize = IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(iMainAxisSize, iCrossAxisSize));
        flowLayoutOverflowState.collapsePlaceable = placeable;
        return j59.a;
    }

    public final FlowLayoutOverflow.OverflowType component1$foundation_layout() {
        return this.type;
    }

    public final int component2$foundation_layout() {
        return this.minLinesToShowCollapse;
    }

    public final int component3$foundation_layout() {
        return this.minCrossAxisSizeToShowCollapse;
    }

    public final FlowLayoutOverflowState copy(FlowLayoutOverflow.OverflowType overflowType, int i, int i2) {
        return new FlowLayoutOverflowState(overflowType, i, i2);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0041 A[PHI: r11 r12
      0x0041: PHI (r11v10 androidx.compose.ui.layout.Measurable) = (r11v4 androidx.compose.ui.layout.Measurable), (r11v14 androidx.compose.ui.layout.Measurable) binds: [B:35:0x006b, B:20:0x003a] A[DONT_GENERATE, DONT_INLINE]
      0x0041: PHI (r12v3 androidx.collection.IntIntPair) = (r12v1 androidx.collection.IntIntPair), (r12v6 androidx.collection.IntIntPair) binds: [B:35:0x006b, B:20:0x003a] A[DONT_GENERATE, DONT_INLINE]] */
    public final FlowLayoutBuildingBlocks.WrapEllipsisInfo ellipsisInfo$foundation_layout(boolean z, int i, int i2) {
        Measurable measurableInvoke;
        IntIntPair intIntPair;
        Placeable placeable;
        Measurable measurable;
        Placeable placeable2;
        int i3 = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i3 != 1 && i3 != 2) {
            if (i3 != 3 && i3 != 4) {
                me0.e();
                return null;
            }
            if (z) {
                bm3<? super Boolean, ? super Integer, ? extends Measurable> bm3Var = this.getOverflowMeasurable;
                if (bm3Var == null || (measurableInvoke = bm3Var.invoke(Boolean.TRUE, Integer.valueOf(getShownItemCount$foundation_layout()))) == null) {
                    measurableInvoke = this.seeMoreMeasurable;
                }
                intIntPair = this.seeMoreSize;
                if (this.getOverflowMeasurable == null) {
                    placeable = this.seeMorePlaceable;
                    placeable2 = placeable;
                    measurable = measurableInvoke;
                } else {
                    measurable = measurableInvoke;
                    placeable2 = null;
                }
            } else {
                if (i < this.minLinesToShowCollapse - 1 || i2 < this.minCrossAxisSizeToShowCollapse) {
                    measurableInvoke = null;
                } else {
                    bm3<? super Boolean, ? super Integer, ? extends Measurable> bm3Var2 = this.getOverflowMeasurable;
                    if (bm3Var2 == null || (measurableInvoke = bm3Var2.invoke(Boolean.FALSE, Integer.valueOf(getShownItemCount$foundation_layout()))) == null) {
                        measurableInvoke = this.collapseMeasurable;
                    }
                }
                intIntPair = this.collapseSize;
                if (this.getOverflowMeasurable == null) {
                    placeable = this.collapsePlaceable;
                    placeable2 = placeable;
                    measurable = measurableInvoke;
                } else {
                    measurable = measurableInvoke;
                    placeable2 = null;
                }
            }
            if (measurable != null) {
                intIntPair.getClass();
                return new FlowLayoutBuildingBlocks.WrapEllipsisInfo(measurable, placeable2, intIntPair.m1036unboximpl(), false, 8, null);
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ellipsisSize-F35zm-w$foundation_layout, reason: not valid java name */
    public final IntIntPair m1892ellipsisSizeF35zmw$foundation_layout(boolean z, int i, int i2) {
        int i3 = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i3 != 1 && i3 != 2) {
            if (i3 != 3) {
                if (i3 != 4) {
                    me0.e();
                    return null;
                }
                if (z) {
                    return this.seeMoreSize;
                }
                if (i + 1 < this.minLinesToShowCollapse || i2 < this.minCrossAxisSizeToShowCollapse) {
                    return null;
                }
                return this.collapseSize;
            }
            if (z) {
                return this.seeMoreSize;
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlowLayoutOverflowState)) {
            return false;
        }
        FlowLayoutOverflowState flowLayoutOverflowState = (FlowLayoutOverflowState) obj;
        return this.type == flowLayoutOverflowState.type && this.minLinesToShowCollapse == flowLayoutOverflowState.minLinesToShowCollapse && this.minCrossAxisSizeToShowCollapse == flowLayoutOverflowState.minCrossAxisSizeToShowCollapse;
    }

    public final int getItemCount$foundation_layout() {
        return this.itemCount;
    }

    public final int getItemShown$foundation_layout() {
        return this.itemShown;
    }

    public final int getMinCrossAxisSizeToShowCollapse$foundation_layout() {
        return this.minCrossAxisSizeToShowCollapse;
    }

    public final int getMinLinesToShowCollapse$foundation_layout() {
        return this.minLinesToShowCollapse;
    }

    public final int getShownItemCount$foundation_layout() {
        int i = this.itemShown;
        if (i != -1) {
            return i;
        }
        ah.f(this.shownItemLazyErrorMessage);
        return 0;
    }

    public final String getShownItemLazyErrorMessage$foundation_layout() {
        return this.shownItemLazyErrorMessage;
    }

    public final FlowLayoutOverflow.OverflowType getType$foundation_layout() {
        return this.type;
    }

    public int hashCode() {
        return Integer.hashCode(this.minCrossAxisSizeToShowCollapse) + ej0.b(this.minLinesToShowCollapse, this.type.hashCode() * 31, 31);
    }

    public final void setItemCount$foundation_layout(int i) {
        this.itemCount = i;
    }

    public final void setItemShown$foundation_layout(int i) {
        this.itemShown = i;
    }

    /* JADX INFO: renamed from: setOverflowMeasurables--hBUhpc$foundation_layout, reason: not valid java name */
    public final void m1894setOverflowMeasurableshBUhpc$foundation_layout(IntrinsicMeasurable intrinsicMeasurable, IntrinsicMeasurable intrinsicMeasurable2, boolean z, long j) {
        long jM2002constructorimpl = OrientationIndependentConstraints.m2002constructorimpl(j, z ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical);
        if (intrinsicMeasurable != null) {
            int iMainAxisMin = FlowLayoutKt.mainAxisMin(intrinsicMeasurable, z, Constraints.m8994getMaxHeightimpl(jM2002constructorimpl));
            this.seeMoreSize = IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(iMainAxisMin, FlowLayoutKt.crossAxisMin(intrinsicMeasurable, z, iMainAxisMin)));
            this.seeMoreMeasurable = intrinsicMeasurable instanceof Measurable ? (Measurable) intrinsicMeasurable : null;
            this.seeMorePlaceable = null;
        }
        if (intrinsicMeasurable2 != null) {
            int iMainAxisMin2 = FlowLayoutKt.mainAxisMin(intrinsicMeasurable2, z, Constraints.m8994getMaxHeightimpl(jM2002constructorimpl));
            this.collapseSize = IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(iMainAxisMin2, FlowLayoutKt.crossAxisMin(intrinsicMeasurable2, z, iMainAxisMin2)));
            this.collapseMeasurable = intrinsicMeasurable2 instanceof Measurable ? (Measurable) intrinsicMeasurable2 : null;
            this.collapsePlaceable = null;
        }
    }

    /* JADX INFO: renamed from: setOverflowMeasurables-VKLhPVY$foundation_layout, reason: not valid java name */
    public final void m1895setOverflowMeasurablesVKLhPVY$foundation_layout(FlowLineMeasurePolicy flowLineMeasurePolicy, long j, bm3<? super Boolean, ? super Integer, ? extends Measurable> bm3Var) {
        this.itemShown = 0;
        this.getOverflowMeasurable = bm3Var;
        m1893setOverflowMeasurableshBUhpc$foundation_layout(flowLineMeasurePolicy, bm3Var.invoke(Boolean.TRUE, 0), bm3Var.invoke(Boolean.FALSE, 0), j);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FlowLayoutOverflowState(type=");
        sb.append(this.type);
        sb.append(", minLinesToShowCollapse=");
        sb.append(this.minLinesToShowCollapse);
        sb.append(", minCrossAxisSizeToShowCollapse=");
        return rg.h(sb, this.minCrossAxisSizeToShowCollapse, ')');
    }

    /* JADX INFO: renamed from: setOverflowMeasurables--hBUhpc$foundation_layout, reason: not valid java name */
    public final void m1893setOverflowMeasurableshBUhpc$foundation_layout(FlowLineMeasurePolicy flowLineMeasurePolicy, Measurable measurable, Measurable measurable2, long j) {
        LayoutOrientation layoutOrientation = flowLineMeasurePolicy.isHorizontal() ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical;
        long jM2015toBoxConstraintsOenEA2s = OrientationIndependentConstraints.m2015toBoxConstraintsOenEA2s(OrientationIndependentConstraints.m2004copyyUG9Ft0$default(OrientationIndependentConstraints.m2002constructorimpl(j, layoutOrientation), 0, 0, 0, 0, 10, null), layoutOrientation);
        int i = 0;
        if (measurable != null) {
            FlowLayoutKt.m1890measureAndCacherqJ1uqs(measurable, flowLineMeasurePolicy, jM2015toBoxConstraintsOenEA2s, new of3(i, this, flowLineMeasurePolicy));
            this.seeMoreMeasurable = measurable;
        }
        if (measurable2 != null) {
            FlowLayoutKt.m1890measureAndCacherqJ1uqs(measurable2, flowLineMeasurePolicy, jM2015toBoxConstraintsOenEA2s, new pf3(i, this, flowLineMeasurePolicy));
            this.collapseMeasurable = measurable2;
        }
    }
}
