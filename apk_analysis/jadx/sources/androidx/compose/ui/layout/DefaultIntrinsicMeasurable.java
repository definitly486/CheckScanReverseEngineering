package androidx.compose.ui.layout;

import androidx.compose.ui.unit.Constraints;

/* JADX INFO: loaded from: classes2.dex */
public final class DefaultIntrinsicMeasurable implements Measurable {
    public static final int $stable = 8;
    private final IntrinsicMeasurable measurable;
    private final IntrinsicMinMax minMax;
    private final IntrinsicWidthHeight widthHeight;

    public DefaultIntrinsicMeasurable(IntrinsicMeasurable intrinsicMeasurable, IntrinsicMinMax intrinsicMinMax, IntrinsicWidthHeight intrinsicWidthHeight) {
        this.measurable = intrinsicMeasurable;
        this.minMax = intrinsicMinMax;
        this.widthHeight = intrinsicWidthHeight;
    }

    public final IntrinsicMeasurable getMeasurable() {
        return this.measurable;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public Object getParentData() {
        return this.measurable.getParentData();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int i) {
        return this.measurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int i) {
        return this.measurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* JADX INFO: renamed from: measure-BRTryo0, reason: not valid java name */
    public Placeable mo7702measureBRTryo0(long j) {
        IntrinsicWidthHeight intrinsicWidthHeight = this.widthHeight;
        IntrinsicWidthHeight intrinsicWidthHeight2 = IntrinsicWidthHeight.Width;
        IntrinsicMinMax intrinsicMinMax = this.minMax;
        if (intrinsicWidthHeight == intrinsicWidthHeight2) {
            IntrinsicMinMax intrinsicMinMax2 = IntrinsicMinMax.Max;
            IntrinsicMeasurable intrinsicMeasurable = this.measurable;
            return new FixedSizeIntrinsicsPlaceable(intrinsicMinMax == intrinsicMinMax2 ? intrinsicMeasurable.maxIntrinsicWidth(Constraints.m8994getMaxHeightimpl(j)) : intrinsicMeasurable.minIntrinsicWidth(Constraints.m8994getMaxHeightimpl(j)), Constraints.m8990getHasBoundedHeightimpl(j) ? Constraints.m8994getMaxHeightimpl(j) : 32767);
        }
        IntrinsicMinMax intrinsicMinMax3 = IntrinsicMinMax.Max;
        IntrinsicMeasurable intrinsicMeasurable2 = this.measurable;
        return new FixedSizeIntrinsicsPlaceable(Constraints.m8991getHasBoundedWidthimpl(j) ? Constraints.m8995getMaxWidthimpl(j) : 32767, intrinsicMinMax == intrinsicMinMax3 ? intrinsicMeasurable2.maxIntrinsicHeight(Constraints.m8995getMaxWidthimpl(j)) : intrinsicMeasurable2.minIntrinsicHeight(Constraints.m8995getMaxWidthimpl(j)));
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int i) {
        return this.measurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int i) {
        return this.measurable.minIntrinsicWidth(i);
    }
}
