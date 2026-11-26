package androidx.compose.material3;

import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.ui.layout.AlignmentLineKt;
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
import defpackage.bm3;
import defpackage.qm3;
import defpackage.qn1;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class ListItemMeasurePolicy implements MultiContentMeasurePolicy {
    private final int calculateIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends List<? extends IntrinsicMeasurable>> list, int i, bm3<? super IntrinsicMeasurable, ? super Integer, Integer> bm3Var) {
        int iIntValue;
        int iIntValue2;
        List<? extends IntrinsicMeasurable> list2 = list.get(0);
        List<? extends IntrinsicMeasurable> list3 = list.get(1);
        List<? extends IntrinsicMeasurable> list4 = list.get(2);
        List<? extends IntrinsicMeasurable> list5 = list.get(3);
        List<? extends IntrinsicMeasurable> list6 = list.get(4);
        int iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(i, intrinsicMeasureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(ListItemKt.getListItemEndPadding() + ListItemKt.getListItemStartPadding())));
        IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) qn1.V(list5);
        if (intrinsicMeasurable != null) {
            iIntValue = bm3Var.invoke(intrinsicMeasurable, Integer.valueOf(iSubtractConstraintSafely)).intValue();
            iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(iSubtractConstraintSafely, intrinsicMeasurable.maxIntrinsicWidth(Integer.MAX_VALUE));
        } else {
            iIntValue = 0;
        }
        IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) qn1.V(list6);
        if (intrinsicMeasurable2 != null) {
            iIntValue2 = bm3Var.invoke(intrinsicMeasurable2, Integer.valueOf(iSubtractConstraintSafely)).intValue();
            iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(iSubtractConstraintSafely, intrinsicMeasurable2.maxIntrinsicWidth(Integer.MAX_VALUE));
        } else {
            iIntValue2 = 0;
        }
        IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) qn1.V(list3);
        int iIntValue3 = intrinsicMeasurable3 != null ? bm3Var.invoke(intrinsicMeasurable3, Integer.valueOf(iSubtractConstraintSafely)).intValue() : 0;
        IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) qn1.V(list2);
        int iIntValue4 = intrinsicMeasurable4 != null ? bm3Var.invoke(intrinsicMeasurable4, Integer.valueOf(iSubtractConstraintSafely)).intValue() : 0;
        IntrinsicMeasurable intrinsicMeasurable5 = (IntrinsicMeasurable) qn1.V(list4);
        int iIntValue5 = intrinsicMeasurable5 != null ? bm3Var.invoke(intrinsicMeasurable5, Integer.valueOf(iSubtractConstraintSafely)).intValue() : 0;
        int iM3606invokeZLSjz4$material3 = ListItemType.Companion.m3606invokeZLSjz4$material3(iIntValue3 > 0, iIntValue5 > 0, ListItemKt.isSupportingMultilineHeuristic(intrinsicMeasureScope, iIntValue5));
        return ListItemKt.m3591calculateHeightN4Jib3Y(intrinsicMeasureScope, iIntValue, iIntValue2, iIntValue4, iIntValue3, iIntValue5, iM3606invokeZLSjz4$material3, intrinsicMeasureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(ListItemKt.m3593verticalPaddingyh95HIg(iM3606invokeZLSjz4$material3) * 2.0f)), ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null));
    }

    private final int calculateIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends List<? extends IntrinsicMeasurable>> list, int i, bm3<? super IntrinsicMeasurable, ? super Integer, Integer> bm3Var) {
        List<? extends IntrinsicMeasurable> list2 = list.get(0);
        List<? extends IntrinsicMeasurable> list3 = list.get(1);
        List<? extends IntrinsicMeasurable> list4 = list.get(2);
        List<? extends IntrinsicMeasurable> list5 = list.get(3);
        List<? extends IntrinsicMeasurable> list6 = list.get(4);
        IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) qn1.V(list5);
        int iIntValue = intrinsicMeasurable != null ? bm3Var.invoke(intrinsicMeasurable, Integer.valueOf(i)).intValue() : 0;
        IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) qn1.V(list6);
        int iIntValue2 = intrinsicMeasurable2 != null ? bm3Var.invoke(intrinsicMeasurable2, Integer.valueOf(i)).intValue() : 0;
        IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) qn1.V(list2);
        int iIntValue3 = intrinsicMeasurable3 != null ? bm3Var.invoke(intrinsicMeasurable3, Integer.valueOf(i)).intValue() : 0;
        IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) qn1.V(list3);
        int iIntValue4 = intrinsicMeasurable4 != null ? bm3Var.invoke(intrinsicMeasurable4, Integer.valueOf(i)).intValue() : 0;
        IntrinsicMeasurable intrinsicMeasurable5 = (IntrinsicMeasurable) qn1.V(list4);
        return ListItemKt.m3592calculateWidthyeHjK3Y(intrinsicMeasureScope, iIntValue, iIntValue2, iIntValue3, iIntValue4, intrinsicMeasurable5 != null ? bm3Var.invoke(intrinsicMeasurable5, Integer.valueOf(i)).intValue() : 0, intrinsicMeasureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(ListItemKt.getListItemEndPadding() + ListItemKt.getListItemStartPadding())), ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null));
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends List<? extends IntrinsicMeasurable>> list, int i) {
        return calculateIntrinsicHeight(intrinsicMeasureScope, list, i, AnonymousClass1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends List<? extends IntrinsicMeasurable>> list, int i) {
        return calculateIntrinsicWidth(intrinsicMeasureScope, list, i, C05931.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1910measure3p2s80s(MeasureScope measureScope, List<? extends List<? extends Measurable>> list, long j) {
        long j2;
        Placeable placeableMo7702measureBRTryo0;
        List<? extends Measurable> list2 = list.get(0);
        List<? extends Measurable> list3 = list.get(1);
        List<? extends Measurable> list4 = list.get(2);
        List<? extends Measurable> list5 = list.get(3);
        List<? extends Measurable> list6 = list.get(4);
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        float listItemStartPadding = ListItemKt.getListItemStartPadding();
        float listItemEndPadding = ListItemKt.getListItemEndPadding();
        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(listItemStartPadding + listItemEndPadding));
        Measurable measurable = (Measurable) qn1.V(list5);
        int iMinIntrinsicWidth = measurable != null ? measurable.minIntrinsicWidth(Constraints.m8994getMaxHeightimpl(j)) : 0;
        Measurable measurable2 = (Measurable) qn1.V(list6);
        int iSubtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(Constraints.m8995getMaxWidthimpl(jM8985copyZbe2FdA$default), iMinIntrinsicWidth + (measurable2 != null ? measurable2.minIntrinsicWidth(Constraints.m8994getMaxHeightimpl(j)) : 0) + iMo1428roundToPx0680j_4);
        Measurable measurable3 = (Measurable) qn1.V(list4);
        boolean zIsSupportingMultilineHeuristic = ListItemKt.isSupportingMultilineHeuristic(measureScope, measurable3 != null ? measurable3.minIntrinsicHeight(iSubtractConstraintSafely) : 0);
        ListItemType.Companion companion = ListItemType.Companion;
        long jM9014offsetNN6EwU = ConstraintsKt.m9014offsetNN6EwU(jM8985copyZbe2FdA$default, -iMo1428roundToPx0680j_4, -measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(ListItemKt.m3593verticalPaddingyh95HIg(companion.m3606invokeZLSjz4$material3(qn1.V(list3) != null, qn1.V(list4) != null, zIsSupportingMultilineHeuristic)) * 2.0f)));
        Measurable measurable4 = (Measurable) qn1.V(list5);
        Placeable placeableMo7702measureBRTryo1 = measurable4 != null ? measurable4.mo7702measureBRTryo0(jM9014offsetNN6EwU) : null;
        int widthOrZero = LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo1);
        Measurable measurable5 = (Measurable) qn1.V(list6);
        if (measurable5 != null) {
            j2 = jM9014offsetNN6EwU;
            placeableMo7702measureBRTryo0 = measurable5.mo7702measureBRTryo0(ConstraintsKt.m9015offsetNN6EwU$default(j2, -widthOrZero, 0, 2, null));
        } else {
            j2 = jM9014offsetNN6EwU;
            placeableMo7702measureBRTryo0 = null;
        }
        int widthOrZero2 = LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo0) + widthOrZero;
        Measurable measurable6 = (Measurable) qn1.V(list2);
        Placeable placeableMo7702measureBRTryo2 = measurable6 != null ? measurable6.mo7702measureBRTryo0(ConstraintsKt.m9015offsetNN6EwU$default(j2, -widthOrZero2, 0, 2, null)) : null;
        int heightOrZero = LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo2);
        Measurable measurable7 = (Measurable) qn1.V(list4);
        Placeable placeableMo7702measureBRTryo3 = measurable7 != null ? measurable7.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(j2, -widthOrZero2, -heightOrZero)) : null;
        int heightOrZero2 = LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo3) + heightOrZero;
        boolean z = (placeableMo7702measureBRTryo3 == null || placeableMo7702measureBRTryo3.get(AlignmentLineKt.getFirstBaseline()) == placeableMo7702measureBRTryo3.get(AlignmentLineKt.getLastBaseline())) ? false : true;
        Measurable measurable8 = (Measurable) qn1.V(list3);
        Placeable placeableMo7702measureBRTryo4 = measurable8 != null ? measurable8.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(j2, -widthOrZero2, -heightOrZero2)) : null;
        int iM3606invokeZLSjz4$material3 = companion.m3606invokeZLSjz4$material3(placeableMo7702measureBRTryo4 != null, placeableMo7702measureBRTryo3 != null, z);
        float fM3593verticalPaddingyh95HIg = ListItemKt.m3593verticalPaddingyh95HIg(iM3606invokeZLSjz4$material3);
        Placeable placeable = placeableMo7702measureBRTryo3;
        return ListItemKt.place(measureScope, ListItemKt.m3592calculateWidthyeHjK3Y(measureScope, LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo1), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo0), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo2), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo4), LayoutUtilKt.getWidthOrZero(placeableMo7702measureBRTryo3), iMo1428roundToPx0680j_4, j), ListItemKt.m3591calculateHeightN4Jib3Y(measureScope, LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo1), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo0), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo2), LayoutUtilKt.getHeightOrZero(placeableMo7702measureBRTryo4), LayoutUtilKt.getHeightOrZero(placeable), iM3606invokeZLSjz4$material3, measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(fM3593verticalPaddingyh95HIg * 2.0f)), j), placeableMo7702measureBRTryo1, placeableMo7702measureBRTryo0, placeableMo7702measureBRTryo2, placeableMo7702measureBRTryo4, placeable, ListItemType.m3598equalsimpl0(iM3606invokeZLSjz4$material3, companion.m3604getThreeLineAlXitO8()), measureScope.mo1428roundToPx0680j_4(listItemStartPadding), measureScope.mo1428roundToPx0680j_4(listItemEndPadding), measureScope.mo1428roundToPx0680j_4(fM3593verticalPaddingyh95HIg));
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends List<? extends IntrinsicMeasurable>> list, int i) {
        return calculateIntrinsicHeight(intrinsicMeasureScope, list, i, C05941.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends List<? extends IntrinsicMeasurable>> list, int i) {
        return calculateIntrinsicWidth(intrinsicMeasureScope, list, i, C05951.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.material3.ListItemMeasurePolicy$maxIntrinsicHeight$1, reason: invalid class name */
    public /* synthetic */ class AnonymousClass1 extends qm3 implements bm3<IntrinsicMeasurable, Integer, Integer> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(2, IntrinsicMeasurable.class, "maxIntrinsicHeight", "maxIntrinsicHeight(I)I", 0);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
            return invoke(intrinsicMeasurable, num.intValue());
        }

        public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i) {
            return Integer.valueOf(intrinsicMeasurable.maxIntrinsicHeight(i));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.ListItemMeasurePolicy$maxIntrinsicWidth$1, reason: invalid class name and case insensitive filesystem */
    public /* synthetic */ class C05931 extends qm3 implements bm3<IntrinsicMeasurable, Integer, Integer> {
        public static final C05931 INSTANCE = new C05931();

        public C05931() {
            super(2, IntrinsicMeasurable.class, "maxIntrinsicWidth", "maxIntrinsicWidth(I)I", 0);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
            return invoke(intrinsicMeasurable, num.intValue());
        }

        public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i) {
            return Integer.valueOf(intrinsicMeasurable.maxIntrinsicWidth(i));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.ListItemMeasurePolicy$minIntrinsicHeight$1, reason: invalid class name and case insensitive filesystem */
    public /* synthetic */ class C05941 extends qm3 implements bm3<IntrinsicMeasurable, Integer, Integer> {
        public static final C05941 INSTANCE = new C05941();

        public C05941() {
            super(2, IntrinsicMeasurable.class, "minIntrinsicHeight", "minIntrinsicHeight(I)I", 0);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
            return invoke(intrinsicMeasurable, num.intValue());
        }

        public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i) {
            return Integer.valueOf(intrinsicMeasurable.minIntrinsicHeight(i));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.ListItemMeasurePolicy$minIntrinsicWidth$1, reason: invalid class name and case insensitive filesystem */
    public /* synthetic */ class C05951 extends qm3 implements bm3<IntrinsicMeasurable, Integer, Integer> {
        public static final C05951 INSTANCE = new C05951();

        public C05951() {
            super(2, IntrinsicMeasurable.class, "minIntrinsicWidth", "minIntrinsicWidth(I)I", 0);
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
            return invoke(intrinsicMeasurable, num.intValue());
        }

        public final Integer invoke(IntrinsicMeasurable intrinsicMeasurable, int i) {
            return Integer.valueOf(intrinsicMeasurable.minIntrinsicWidth(i));
        }
    }
}
