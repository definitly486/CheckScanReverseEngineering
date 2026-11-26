package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.unit.Constraints;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class DerivedHeightModifierNode extends InsetsConsumingModifierNode implements LayoutModifierNode {
    private WindowInsetsHeightCalculator heightCalc;
    private WindowInsets heightInsets = WindowInsetsKt.WindowInsets();
    private WindowInsets insets;

    public DerivedHeightModifierNode(WindowInsets windowInsets, WindowInsetsHeightCalculator windowInsetsHeightCalculator) {
        this.insets = windowInsets;
        this.heightCalc = windowInsetsHeightCalculator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public WindowInsets calculateInsets(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public void insetsInvalidated() {
        this.heightInsets = WindowInsetsKt.exclude(this.insets, getAncestorConsumedInsets());
        super.insetsInvalidated();
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int iCalculate = this.heightCalc.calculate(this.heightInsets, measureScope);
        if (iCalculate == 0) {
            return MeasureScope.layout$default(measureScope, 0, 0, null, new g(), 4, null);
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, 0, iCalculate, iCalculate, 3, null));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), iCalculate, null, new nl3() { // from class: androidx.compose.foundation.layout.h
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return DerivedHeightModifierNode.measure_3p2s80s$lambda$1(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public final void update(WindowInsets windowInsets, WindowInsetsHeightCalculator windowInsetsHeightCalculator) {
        if (aa4.e(this.insets, windowInsets) && windowInsetsHeightCalculator == this.heightCalc) {
            return;
        }
        this.insets = windowInsets;
        this.heightCalc = windowInsetsHeightCalculator;
        this.heightInsets = WindowInsetsKt.exclude(windowInsets, getAncestorConsumedInsets());
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }
}
