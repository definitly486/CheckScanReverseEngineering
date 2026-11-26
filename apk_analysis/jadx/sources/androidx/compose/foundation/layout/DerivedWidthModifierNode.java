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
final class DerivedWidthModifierNode extends InsetsConsumingModifierNode implements LayoutModifierNode {
    private WindowInsets insets;
    private WindowInsetsWidthCalculator widthCalc;
    private WindowInsets widthInsets = WindowInsetsKt.WindowInsets();

    public DerivedWidthModifierNode(WindowInsets windowInsets, WindowInsetsWidthCalculator windowInsetsWidthCalculator) {
        this.insets = windowInsets;
        this.widthCalc = windowInsetsWidthCalculator;
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
        this.widthInsets = WindowInsetsKt.exclude(this.insets, getAncestorConsumedInsets());
        super.insetsInvalidated();
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int iCalculate = this.widthCalc.calculate(this.widthInsets, measureScope.getLayoutDirection(), measureScope);
        if (iCalculate == 0) {
            return MeasureScope.layout$default(measureScope, 0, 0, null, new i(), 4, null);
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, iCalculate, iCalculate, 0, 0, 12, null));
        return MeasureScope.layout$default(measureScope, iCalculate, placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.layout.j
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return DerivedWidthModifierNode.measure_3p2s80s$lambda$1(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public final void update(WindowInsets windowInsets, WindowInsetsWidthCalculator windowInsetsWidthCalculator) {
        if (aa4.e(this.insets, windowInsets) && windowInsetsWidthCalculator == this.widthCalc) {
            return;
        }
        this.insets = windowInsets;
        this.widthCalc = windowInsetsWidthCalculator;
        this.widthInsets = WindowInsetsKt.exclude(windowInsets, getAncestorConsumedInsets());
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }
}
