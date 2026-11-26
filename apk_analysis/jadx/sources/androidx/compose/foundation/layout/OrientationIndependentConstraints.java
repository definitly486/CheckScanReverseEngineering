package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;

/* JADX INFO: loaded from: classes.dex */
public final class OrientationIndependentConstraints {
    private final long value;

    private /* synthetic */ OrientationIndependentConstraints(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ OrientationIndependentConstraints m1999boximpl(long j) {
        return new OrientationIndependentConstraints(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2002constructorimpl(long j, LayoutOrientation layoutOrientation) {
        LayoutOrientation layoutOrientation2 = LayoutOrientation.Horizontal;
        return m2000constructorimpl(layoutOrientation == layoutOrientation2 ? Constraints.m8997getMinWidthimpl(j) : Constraints.m8996getMinHeightimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m8995getMaxWidthimpl(j) : Constraints.m8994getMaxHeightimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m8996getMinHeightimpl(j) : Constraints.m8997getMinWidthimpl(j), layoutOrientation == layoutOrientation2 ? Constraints.m8994getMaxHeightimpl(j) : Constraints.m8995getMaxWidthimpl(j));
    }

    /* JADX INFO: renamed from: copy-yUG9Ft0, reason: not valid java name */
    public static final long m2003copyyUG9Ft0(long j, int i, int i2, int i3, int i4) {
        return m2000constructorimpl(i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: copy-yUG9Ft0$default, reason: not valid java name */
    public static /* synthetic */ long m2004copyyUG9Ft0$default(long j, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = Constraints.m8997getMinWidthimpl(j);
        }
        int i6 = i;
        if ((i5 & 2) != 0) {
            i2 = Constraints.m8995getMaxWidthimpl(j);
        }
        int i7 = i2;
        if ((i5 & 4) != 0) {
            i3 = Constraints.m8996getMinHeightimpl(j);
        }
        int i8 = i3;
        if ((i5 & 8) != 0) {
            i4 = Constraints.m8994getMaxHeightimpl(j);
        }
        return m2003copyyUG9Ft0(j, i6, i7, i8, i4);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m2005equalsimpl(long j, Object obj) {
        return (obj instanceof OrientationIndependentConstraints) && Constraints.m8988equalsimpl0(j, ((OrientationIndependentConstraints) obj).m2017unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2006equalsimpl0(long j, long j2) {
        return Constraints.m8988equalsimpl0(j, j2);
    }

    /* JADX INFO: renamed from: getCrossAxisMax-impl, reason: not valid java name */
    public static final int m2007getCrossAxisMaximpl(long j) {
        return Constraints.m8994getMaxHeightimpl(j);
    }

    /* JADX INFO: renamed from: getCrossAxisMin-impl, reason: not valid java name */
    public static final int m2008getCrossAxisMinimpl(long j) {
        return Constraints.m8996getMinHeightimpl(j);
    }

    /* JADX INFO: renamed from: getMainAxisMax-impl, reason: not valid java name */
    public static final int m2009getMainAxisMaximpl(long j) {
        return Constraints.m8995getMaxWidthimpl(j);
    }

    /* JADX INFO: renamed from: getMainAxisMin-impl, reason: not valid java name */
    public static final int m2010getMainAxisMinimpl(long j) {
        return Constraints.m8997getMinWidthimpl(j);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m2011hashCodeimpl(long j) {
        return Constraints.m8998hashCodeimpl(j);
    }

    /* JADX INFO: renamed from: maxHeight-impl, reason: not valid java name */
    public static final int m2012maxHeightimpl(long j, LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? Constraints.m8994getMaxHeightimpl(j) : Constraints.m8995getMaxWidthimpl(j);
    }

    /* JADX INFO: renamed from: maxWidth-impl, reason: not valid java name */
    public static final int m2013maxWidthimpl(long j, LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? Constraints.m8995getMaxWidthimpl(j) : Constraints.m8994getMaxHeightimpl(j);
    }

    /* JADX INFO: renamed from: stretchCrossAxis-q4ezo7Y, reason: not valid java name */
    public static final long m2014stretchCrossAxisq4ezo7Y(long j) {
        return m2000constructorimpl(Constraints.m8997getMinWidthimpl(j), Constraints.m8995getMaxWidthimpl(j), Constraints.m8994getMaxHeightimpl(j) != Integer.MAX_VALUE ? Constraints.m8994getMaxHeightimpl(j) : Constraints.m8996getMinHeightimpl(j), Constraints.m8994getMaxHeightimpl(j));
    }

    /* JADX INFO: renamed from: toBoxConstraints-OenEA2s, reason: not valid java name */
    public static final long m2015toBoxConstraintsOenEA2s(long j, LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? ConstraintsKt.Constraints(Constraints.m8997getMinWidthimpl(j), Constraints.m8995getMaxWidthimpl(j), Constraints.m8996getMinHeightimpl(j), Constraints.m8994getMaxHeightimpl(j)) : ConstraintsKt.Constraints(Constraints.m8996getMinHeightimpl(j), Constraints.m8994getMaxHeightimpl(j), Constraints.m8997getMinWidthimpl(j), Constraints.m8995getMaxWidthimpl(j));
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m2016toStringimpl(long j) {
        return "OrientationIndependentConstraints(value=" + ((Object) Constraints.m9000toStringimpl(j)) + ')';
    }

    public boolean equals(Object obj) {
        return m2005equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2011hashCodeimpl(this.value);
    }

    public String toString() {
        return m2016toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m2017unboximpl() {
        return this.value;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m2000constructorimpl(int i, int i2, int i3, int i4) {
        return m2001constructorimpl(ConstraintsKt.Constraints(i, i2, i3, i4));
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static long m2001constructorimpl(long j) {
        return j;
    }
}
