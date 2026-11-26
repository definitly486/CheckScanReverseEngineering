package androidx.compose.foundation;

import androidx.compose.foundation.ScrollNode;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import defpackage.fz0;
import defpackage.gz0;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollNode extends Modifier.Node implements LayoutModifierNode, SemanticsModifierNode {
    public static final int $stable = 8;
    private boolean isVertical;
    private boolean reverseScrolling;
    private ScrollState state;

    public ScrollNode(ScrollState scrollState, boolean z, boolean z2) {
        this.state = scrollState;
        this.reverseScrolling = z;
        this.isVertical = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float applySemantics$lambda$0(ScrollNode scrollNode) {
        return scrollNode.state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float applySemantics$lambda$1(ScrollNode scrollNode) {
        return scrollNode.state.getMaxValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(ScrollNode scrollNode, int i, final Placeable placeable, Placeable.PlacementScope placementScope) {
        int value = scrollNode.state.getValue();
        if (value < 0) {
            value = 0;
        }
        if (value > i) {
            value = i;
        }
        int i2 = scrollNode.reverseScrolling ? value - i : -value;
        boolean z = scrollNode.isVertical;
        final int i3 = z ? 0 : i2;
        final int i4 = z ? i2 : 0;
        placementScope.withMotionFrameOfReferencePlacement(new nl3() { // from class: wi7
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                int i5 = i3;
                return ScrollNode.measure_3p2s80s$lambda$0$0(placeable, i5, i4, (Placeable.PlacementScope) obj);
            }
        });
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0$0(Placeable placeable, int i, int i2, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, placeable, i, i2, 0.0f, (nl3) null, 12, (Object) null);
        return j59.a;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver, true);
        ScrollAxisRange scrollAxisRange = new ScrollAxisRange(new fz0(this, 1), new gz0(this, 2), this.reverseScrolling);
        if (this.isVertical) {
            SemanticsPropertiesKt.setVerticalScrollAxisRange(semanticsPropertyReceiver, scrollAxisRange);
        } else {
            SemanticsPropertiesKt.setHorizontalScrollAxisRange(semanticsPropertyReceiver, scrollAxisRange);
        }
    }

    public final boolean getReverseScrolling() {
        return this.reverseScrolling;
    }

    public final ScrollState getState() {
        return this.state;
    }

    public final boolean isVertical() {
        return this.isVertical;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (!this.isVertical) {
            i = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (this.isVertical) {
            i = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        CheckScrollableContainerConstraintsKt.m1316checkScrollableContainerConstraintsK40F9xA(j, this.isVertical ? Orientation.Vertical : Orientation.Horizontal);
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, this.isVertical ? Constraints.m8995getMaxWidthimpl(j) : Integer.MAX_VALUE, 0, this.isVertical ? Integer.MAX_VALUE : Constraints.m8994getMaxHeightimpl(j), 5, null));
        int width = placeableMo7702measureBRTryo0.getWidth();
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        int i = width > iM8995getMaxWidthimpl ? iM8995getMaxWidthimpl : width;
        int height = placeableMo7702measureBRTryo0.getHeight();
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        int i2 = height > iM8994getMaxHeightimpl ? iM8994getMaxHeightimpl : height;
        final int height2 = placeableMo7702measureBRTryo0.getHeight() - i2;
        int width2 = placeableMo7702measureBRTryo0.getWidth() - i;
        if (!this.isVertical) {
            height2 = width2;
        }
        this.state.setMaxValue$foundation(height2);
        this.state.setViewportSize$foundation(this.isVertical ? i2 : i);
        this.state.setContentSize$foundation(this.isVertical ? placeableMo7702measureBRTryo0.getHeight() : placeableMo7702measureBRTryo0.getWidth());
        return MeasureScope.layout$default(measureScope, i, i2, null, new nl3() { // from class: vi7
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ScrollNode.measure_3p2s80s$lambda$0(this.b, height2, placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (!this.isVertical) {
            i = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (this.isVertical) {
            i = Integer.MAX_VALUE;
        }
        return intrinsicMeasurable.minIntrinsicWidth(i);
    }

    public final void setReverseScrolling(boolean z) {
        this.reverseScrolling = z;
    }

    public final void setState(ScrollState scrollState) {
        this.state = scrollState;
    }

    public final void setVertical(boolean z) {
        this.isVertical = z;
    }
}
