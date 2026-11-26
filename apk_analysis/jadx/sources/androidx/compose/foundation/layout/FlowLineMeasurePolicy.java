package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.FlowLineMeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface FlowLineMeasurePolicy extends RowColumnMeasurePolicy {
    /* JADX INFO: Access modifiers changed from: private */
    static j59 placeHelper$lambda$0$0(int[] iArr, int i, int i2, int i3, Placeable[] placeableArr, FlowLineMeasurePolicy flowLineMeasurePolicy, int i4, LayoutDirection layoutDirection, int i5, int[] iArr2, Placeable.PlacementScope placementScope) {
        int i6 = iArr != null ? iArr[i] : 0;
        for (int i7 = i2; i7 < i3; i7++) {
            Placeable placeable = placeableArr[i7];
            placeable.getClass();
            int crossAxisPosition = flowLineMeasurePolicy.getCrossAxisPosition(placeable, i4, layoutDirection, i5) + i6;
            if (flowLineMeasurePolicy.isHorizontal()) {
                Placeable.PlacementScope.place$default(placementScope, placeable, iArr2[i7 - i2], crossAxisPosition, 0.0f, 4, null);
            } else {
                Placeable.PlacementScope.place$default(placementScope, placeable, crossAxisPosition, iArr2[i7 - i2], 0.0f, 4, null);
            }
        }
        return j59.a;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    /* JADX INFO: renamed from: createConstraints-xF2OJ5Q */
    default long mo1771createConstraintsxF2OJ5Q(int i, int i2, int i3, int i4, boolean z) {
        return isHorizontal() ? RowKt.createRowConstraints(z, i, i2, i3, i4) : ColumnKt.createColumnConstraints(z, i, i2, i3, i4);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    default int crossAxisSize(Placeable placeable) {
        return isHorizontal() ? placeable.getMeasuredHeight() : placeable.getMeasuredWidth();
    }

    CrossAxisAlignment getCrossAxisAlignment();

    default int getCrossAxisPosition(Placeable placeable, int i, LayoutDirection layoutDirection, int i2) {
        CrossAxisAlignment crossAxisAlignment;
        RowColumnParentData rowColumnParentData = RowColumnImplKt.getRowColumnParentData(placeable);
        if (rowColumnParentData == null || (crossAxisAlignment = rowColumnParentData.getCrossAxisAlignment()) == null) {
            crossAxisAlignment = getCrossAxisAlignment();
        }
        return crossAxisAlignment.align$foundation_layout(i, crossAxisSize(placeable), layoutDirection, placeable, i2);
    }

    Arrangement.Horizontal getHorizontalArrangement();

    Arrangement.Vertical getVerticalArrangement();

    boolean isHorizontal();

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    default int mainAxisSize(Placeable placeable) {
        return isHorizontal() ? placeable.getMeasuredWidth() : placeable.getMeasuredHeight();
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    default MeasureResult placeHelper(final Placeable[] placeableArr, MeasureScope measureScope, final int i, final int[] iArr, int i2, final int i3, final int[] iArr2, final int i4, final int i5, final int i6) {
        int i7;
        int i8;
        if (isHorizontal()) {
            i8 = i2;
            i7 = i3;
        } else {
            i7 = i2;
            i8 = i3;
        }
        final LayoutDirection layoutDirection = isHorizontal() ? LayoutDirection.Ltr : measureScope.getLayoutDirection();
        return MeasureScope.layout$default(measureScope, i8, i7, null, new nl3() { // from class: qf3
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return FlowLineMeasurePolicy.placeHelper$lambda$0$0(iArr2, i4, i5, i6, placeableArr, this, i3, layoutDirection, i, iArr, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    default void populateMainAxisPositions(int i, int[] iArr, int[] iArr2, MeasureScope measureScope) {
        if (isHorizontal()) {
            getHorizontalArrangement().arrange(measureScope, i, iArr, measureScope.getLayoutDirection(), iArr2);
        } else {
            getVerticalArrangement().arrange(measureScope, i, iArr, iArr2);
        }
    }
}
