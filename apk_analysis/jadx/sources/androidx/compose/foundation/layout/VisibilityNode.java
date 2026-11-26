package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class VisibilityNode extends Modifier.Node implements LayoutModifierNode, SemanticsModifierNode {
    private final SemanticsPropertyKey<Boolean> Visible = new SemanticsPropertyKey<>("Visible", (bm3) null, 2, (jh2) null);
    private boolean visible;

    public VisibilityNode(boolean z) {
        this.visible = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(VisibilityNode visibilityNode, Placeable placeable, Placeable.PlacementScope placementScope) {
        if (visibilityNode.visible) {
            Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        semanticsPropertyReceiver.set(this.Visible, Boolean.valueOf(this.visible));
        if (this.visible) {
            return;
        }
        SemanticsPropertiesKt.setFocused(semanticsPropertyReceiver, false);
    }

    /* JADX INFO: renamed from: getVisible, reason: collision with other method in class */
    public final boolean m2122getVisible() {
        return this.visible;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.layout.g0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return VisibilityNode.measure_3p2s80s$lambda$0(this.b, placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public final void setVisible(boolean z) {
        if (this.visible != z) {
            this.visible = z;
            if (z) {
                return;
            }
            LayoutModifierNodeKt.invalidatePlacement(this);
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
    }

    public final SemanticsPropertyKey<Boolean> getVisible() {
        return this.Visible;
    }
}
