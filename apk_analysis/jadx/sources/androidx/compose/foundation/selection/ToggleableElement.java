package androidx.compose.foundation.selection;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.Role;
import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.il1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.tg;

/* JADX INFO: loaded from: classes.dex */
final class ToggleableElement extends ModifierNodeElement<ToggleableNode> {
    private final boolean enabled;
    private final IndicationNodeFactory indicationNodeFactory;
    private final MutableInteractionSource interactionSource;
    private final nl3<Boolean, j59> onValueChange;
    private final Role role;
    private final boolean useLocalIndication;
    private final boolean value;

    /* JADX WARN: Multi-variable type inference failed */
    private ToggleableElement(boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, nl3<? super Boolean, j59> nl3Var) {
        this.value = z;
        this.interactionSource = mutableInteractionSource;
        this.indicationNodeFactory = indicationNodeFactory;
        this.useLocalIndication = z2;
        this.enabled = z3;
        this.role = role;
        this.onValueChange = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public ToggleableNode create() {
        return new ToggleableNode(this.value, this.interactionSource, this.indicationNodeFactory, this.useLocalIndication, this.enabled, this.role, this.onValueChange, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ToggleableElement.class != obj.getClass()) {
            return false;
        }
        ToggleableElement toggleableElement = (ToggleableElement) obj;
        return this.value == toggleableElement.value && aa4.e(this.interactionSource, toggleableElement.interactionSource) && aa4.e(this.indicationNodeFactory, toggleableElement.indicationNodeFactory) && this.useLocalIndication == toggleableElement.useLocalIndication && this.enabled == toggleableElement.enabled && aa4.e(this.role, toggleableElement.role) && this.onValueChange == toggleableElement.onValueChange;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.value) * 31;
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        int iHashCode2 = (iHashCode + (mutableInteractionSource != null ? mutableInteractionSource.hashCode() : 0)) * 31;
        IndicationNodeFactory indicationNodeFactory = this.indicationNodeFactory;
        int iC = tg.c(tg.c((iHashCode2 + (indicationNodeFactory != null ? indicationNodeFactory.hashCode() : 0)) * 31, 31, this.useLocalIndication), 31, this.enabled);
        Role role = this.role;
        return this.onValueChange.hashCode() + ((iC + (role != null ? Role.m8258hashCodeimpl(role.m8260unboximpl()) : 0)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("toggleable");
        inspectorInfo.getProperties().set("value", inspectorInfo.getValue());
        inspectorInfo.getProperties().set("interactionSource", this.interactionSource);
        inspectorInfo.getProperties().set("indicationNodeFactory", this.indicationNodeFactory);
        il1.c(this.enabled, inspectorInfo.getProperties(), TJAdUnitConstants.String.ENABLED, inspectorInfo).set("role", this.role);
        inspectorInfo.getProperties().set("onValueChange", this.onValueChange);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(ToggleableNode toggleableNode) {
        toggleableNode.m2331updateO2vRcR0(this.value, this.interactionSource, this.indicationNodeFactory, this.useLocalIndication, this.enabled, this.role, this.onValueChange);
    }

    public /* synthetic */ ToggleableElement(boolean z, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z2, boolean z3, Role role, nl3 nl3Var, jh2 jh2Var) {
        this(z, mutableInteractionSource, indicationNodeFactory, z2, z3, role, nl3Var);
    }
}
