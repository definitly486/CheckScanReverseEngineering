package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.InsetsPaddingModifierNode;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public class InsetsPaddingModifierNode extends InsetsConsumingModifierNode implements LayoutModifierNode {
    public static final int $stable = 8;
    private WindowInsets insets;

    public InsetsPaddingModifierNode(WindowInsets windowInsets) {
        this.insets = windowInsets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, int i, int i2, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, i, i2, 0.0f, 4, null);
        return j59.a;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public WindowInsets calculateInsets(WindowInsets windowInsets) {
        return WindowInsetsKt.union(windowInsets, this.insets);
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public void insetsInvalidated() {
        super.insetsInvalidated();
        LayoutModifierNodeKt.invalidateMeasurement(this);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        final int left = getConsumedInsets().getLeft(measureScope, measureScope.getLayoutDirection()) - getAncestorConsumedInsets().getLeft(measureScope, measureScope.getLayoutDirection());
        final int top = getConsumedInsets().getTop(measureScope) - getAncestorConsumedInsets().getTop(measureScope);
        int right = (getConsumedInsets().getRight(measureScope, measureScope.getLayoutDirection()) - getAncestorConsumedInsets().getRight(measureScope, measureScope.getLayoutDirection())) + left;
        int bottom = (getConsumedInsets().getBottom(measureScope) - getAncestorConsumedInsets().getBottom(measureScope)) + top;
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(j, -right, -bottom));
        return MeasureScope.layout$default(measureScope, ConstraintsKt.m9012constrainWidthK40F9xA(j, placeableMo7702measureBRTryo0.getWidth() + right), ConstraintsKt.m9011constrainHeightK40F9xA(j, placeableMo7702measureBRTryo0.getHeight() + bottom), null, new nl3() { // from class: x54
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                int i = left;
                return InsetsPaddingModifierNode.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, i, top, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public final void update(WindowInsets windowInsets) {
        if (aa4.e(windowInsets, this.insets)) {
            return;
        }
        this.insets = windowInsets;
        insetsInvalidated();
    }
}
