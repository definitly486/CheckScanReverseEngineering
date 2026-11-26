package androidx.compose.foundation.style;

import androidx.compose.foundation.style.StyleInnerNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class StyleInnerNode extends Modifier.Node implements LayoutModifierNode {
    public static final int $stable = 8;
    private StyleOuterNode outerNode;

    private final ResolvedStyle currentLayoutStyle() {
        StyleOuterNode styleOuterNode = this.outerNode;
        styleOuterNode.getClass();
        return StyleOuterNode.resolveAnimatedStyleFor$foundation$default(styleOuterNode, 1, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, float f, float f2, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, Math.round(f), Math.round(f2), 0.0f, 4, null);
        return j59.a;
    }

    public final StyleOuterNode getOuterNode() {
        return this.outerNode;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        ResolvedStyle resolvedStyleCurrentLayoutStyle = currentLayoutStyle();
        final float borderWidth$foundation = resolvedStyleCurrentLayoutStyle.getBorderWidth$foundation() + resolvedStyleCurrentLayoutStyle.getContentPaddingStart$foundation();
        float borderWidth$foundation2 = resolvedStyleCurrentLayoutStyle.getBorderWidth$foundation() + resolvedStyleCurrentLayoutStyle.getContentPaddingEnd$foundation();
        final float borderWidth$foundation3 = resolvedStyleCurrentLayoutStyle.getBorderWidth$foundation() + resolvedStyleCurrentLayoutStyle.getContentPaddingTop$foundation();
        float borderWidth$foundation4 = resolvedStyleCurrentLayoutStyle.getBorderWidth$foundation() + resolvedStyleCurrentLayoutStyle.getContentPaddingBottom$foundation();
        int iRound = Math.round(borderWidth$foundation2 + borderWidth$foundation);
        int iRound2 = Math.round(borderWidth$foundation4 + borderWidth$foundation3);
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(j, -iRound, -iRound2));
        return MeasureScope.layout$default(measureScope, ConstraintsKt.m9012constrainWidthK40F9xA(j, placeableMo7702measureBRTryo0.getWidth() + iRound), ConstraintsKt.m9011constrainHeightK40F9xA(j, placeableMo7702measureBRTryo0.getHeight() + iRound2), null, new nl3() { // from class: gb8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return StyleInnerNode.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, borderWidth$foundation, borderWidth$foundation3, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        TraversableNode traversableNodeFindNearestAncestor = TraversableNodeKt.findNearestAncestor(this, StyleModifierKt.OuterNodeKey);
        traversableNodeFindNearestAncestor.getClass();
        StyleOuterNode styleOuterNode = (StyleOuterNode) traversableNodeFindNearestAncestor;
        styleOuterNode.setInnerNode$foundation(this);
        this.outerNode = styleOuterNode;
        styleOuterNode.resolveStyleAndInvalidate(true);
    }

    public final void setOuterNode(StyleOuterNode styleOuterNode) {
        this.outerNode = styleOuterNode;
    }
}
