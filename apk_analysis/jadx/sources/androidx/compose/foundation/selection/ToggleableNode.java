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
import androidx.compose.ui.state.ToggleableStateKt;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class ToggleableNode extends ClickableNode {
    private final ll3<j59> _onClick;
    private nl3<? super Boolean, j59> onValueChange;
    private boolean value;

    private ToggleableNode(final boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, final nl3<? super Boolean, j59> nl3Var) {
        super(mutableInteractionSource, indicationNodeFactory, z2, z3, null, role, new ll3() { // from class: androidx.compose.foundation.selection.b
            @Override // defpackage.ll3
            public final Object invoke() {
                return ToggleableNode._init_$lambda$0(nl3Var, z);
            }
        }, null);
        this.value = z;
        this.onValueChange = nl3Var;
        this._onClick = new ll3() { // from class: androidx.compose.foundation.selection.c
            @Override // defpackage.ll3
            public final Object invoke() {
                return ToggleableNode._onClick$lambda$0(this.b);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(nl3 nl3Var, boolean z) {
        nl3Var.invoke(Boolean.valueOf(!z));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _onClick$lambda$0(ToggleableNode toggleableNode) {
        toggleableNode.onValueChange.invoke(Boolean.valueOf(!toggleableNode.value));
        return j59.a;
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
        SemanticsPropertiesKt.setToggleableState(semanticsPropertyReceiver, ToggleableStateKt.ToggleableState(this.value));
        SemanticsPropertiesKt.setContentDataType(semanticsPropertyReceiver, ContentDataType.Companion.getToggle());
        FillableData fillableDataCreateFromBoolean = FillableData_androidKt.createFromBoolean(FillableData.Companion, this.value);
        if (fillableDataCreateFromBoolean != null) {
            SemanticsPropertiesKt.setFillableData(semanticsPropertyReceiver, fillableDataCreateFromBoolean);
        }
        SemanticsPropertiesKt.onFillData$default(semanticsPropertyReceiver, null, new nl3() { // from class: androidx.compose.foundation.selection.a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(ToggleableNode.applyAdditionalSemantics$lambda$1(semanticsPropertyReceiver, (FillableData) obj));
            }
        }, 1, null);
    }

    public final ll3<j59> get_onClick() {
        return this._onClick;
    }

    /* JADX INFO: renamed from: update-O2vRcR0, reason: not valid java name */
    public final void m2331updateO2vRcR0(boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, nl3<? super Boolean, j59> nl3Var) {
        if (this.value != z) {
            this.value = z;
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        this.onValueChange = nl3Var;
        m1339updateO2vRcR0(mutableInteractionSource, indicationNodeFactory, z2, z3, (String) null, role, this._onClick);
    }

    public /* synthetic */ ToggleableNode(boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, nl3 nl3Var, jh2 jh2Var) {
        this(z, mutableInteractionSource, indicationNodeFactory, z2, z3, role, nl3Var);
    }
}
