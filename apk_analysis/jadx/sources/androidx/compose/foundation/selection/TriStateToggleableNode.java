package androidx.compose.foundation.selection;

import androidx.compose.foundation.ClickableNode;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.autofill.ContentDataType;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.autofill.FillableData_androidKt;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.state.ToggleableStateKt;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class TriStateToggleableNode extends ClickableNode {
    private ToggleableState state;

    private TriStateToggleableNode(ToggleableState toggleableState, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, Role role, ll3<j59> ll3Var) {
        super(mutableInteractionSource, indicationNodeFactory, z, z2, null, role, ll3Var, null);
        this.state = toggleableState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applyAdditionalSemantics$lambda$1(SemanticsPropertyReceiver semanticsPropertyReceiver, FillableData fillableData) {
        Boolean booleanValue = fillableData.getBooleanValue();
        if (booleanValue == null) {
            return false;
        }
        SemanticsPropertiesKt.setToggleableState(semanticsPropertyReceiver, ToggleableStateKt.ToggleableState(booleanValue.booleanValue()));
        return true;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public void applyAdditionalSemantics(final SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setToggleableState(semanticsPropertyReceiver, this.state);
        SemanticsPropertiesKt.setContentDataType(semanticsPropertyReceiver, ContentDataType.Companion.getToggle());
        FillableData fillableDataCreateFromBoolean = FillableData_androidKt.createFromBoolean(FillableData.Companion, this.state != ToggleableState.Indeterminate);
        if (fillableDataCreateFromBoolean != null) {
            SemanticsPropertiesKt.setFillableData(semanticsPropertyReceiver, fillableDataCreateFromBoolean);
        }
        SemanticsPropertiesKt.onFillData$default(semanticsPropertyReceiver, null, new nl3() { // from class: androidx.compose.foundation.selection.d
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(TriStateToggleableNode.applyAdditionalSemantics$lambda$1(semanticsPropertyReceiver, (FillableData) obj));
            }
        }, 1, null);
    }

    /* JADX INFO: renamed from: update-O2vRcR0, reason: not valid java name */
    public final void m2332updateO2vRcR0(ToggleableState toggleableState, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, Role role, ll3<j59> ll3Var) {
        if (this.state != toggleableState) {
            this.state = toggleableState;
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        m1339updateO2vRcR0(mutableInteractionSource, indicationNodeFactory, z, z2, (String) null, role, ll3Var);
    }

    public /* synthetic */ TriStateToggleableNode(ToggleableState toggleableState, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, Role role, ll3 ll3Var, jh2 jh2Var) {
        this(toggleableState, mutableInteractionSource, indicationNodeFactory, z, z2, role, ll3Var);
    }
}
