package androidx.compose.foundation.selection;

import androidx.compose.foundation.ClickableNode;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
final class SelectableNode extends ClickableNode {
    private boolean selected;

    private SelectableNode(boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, ll3<j59> ll3Var) {
        super(mutableInteractionSource, indicationNodeFactory, z2, z3, null, role, ll3Var, null);
        this.selected = z;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public void applyAdditionalSemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setSelected(semanticsPropertyReceiver, this.selected);
    }

    /* JADX INFO: renamed from: update-O2vRcR0, reason: not valid java name */
    public final void m2318updateO2vRcR0(boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, ll3<j59> ll3Var) {
        if (this.selected != z) {
            this.selected = z;
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        m1339updateO2vRcR0(mutableInteractionSource, indicationNodeFactory, z2, z3, (String) null, role, ll3Var);
    }

    public /* synthetic */ SelectableNode(boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, ll3 ll3Var, jh2 jh2Var) {
        this(z, mutableInteractionSource, indicationNodeFactory, z2, z3, role, ll3Var);
    }
}
