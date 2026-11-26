package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class FillNode extends Modifier.Node implements LayoutModifierNode {
    private Direction direction;
    private float fraction;

    public FillNode(Direction direction, float f) {
        this.direction = direction;
        this.fraction = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    public final Direction getDirection() {
        return this.direction;
    }

    public final float getFraction() {
        return this.fraction;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int iM8997getMinWidthimpl;
        int iM8995getMaxWidthimpl;
        int iM8994getMaxHeightimpl;
        int i;
        if (!Constraints.m8991getHasBoundedWidthimpl(j) || this.direction == Direction.Vertical) {
            iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
            iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        } else {
            int iRound = Math.round(Constraints.m8995getMaxWidthimpl(j) * this.fraction);
            int iM8997getMinWidthimpl2 = Constraints.m8997getMinWidthimpl(j);
            iM8997getMinWidthimpl = Constraints.m8995getMaxWidthimpl(j);
            if (iRound < iM8997getMinWidthimpl2) {
                iRound = iM8997getMinWidthimpl2;
            }
            if (iRound <= iM8997getMinWidthimpl) {
                iM8997getMinWidthimpl = iRound;
            }
            iM8995getMaxWidthimpl = iM8997getMinWidthimpl;
        }
        if (!Constraints.m8990getHasBoundedHeightimpl(j) || this.direction == Direction.Horizontal) {
            int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
            int iM8994getMaxHeightimpl2 = Constraints.m8994getMaxHeightimpl(j);
            iM8994getMaxHeightimpl = iM8996getMinHeightimpl;
            i = iM8994getMaxHeightimpl2;
        } else {
            int iRound2 = Math.round(Constraints.m8994getMaxHeightimpl(j) * this.fraction);
            int iM8996getMinHeightimpl2 = Constraints.m8996getMinHeightimpl(j);
            iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
            if (iRound2 < iM8996getMinHeightimpl2) {
                iRound2 = iM8996getMinHeightimpl2;
            }
            if (iRound2 <= iM8994getMaxHeightimpl) {
                iM8994getMaxHeightimpl = iRound2;
            }
            i = iM8994getMaxHeightimpl;
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.Constraints(iM8997getMinWidthimpl, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, i));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.layout.k
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return FillNode.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public final void setDirection(Direction direction) {
        this.direction = direction;
    }

    public final void setFraction(float f) {
        this.fraction = f;
    }
}
