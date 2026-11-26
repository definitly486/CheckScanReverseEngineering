package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.tg;

/* JADX INFO: loaded from: classes2.dex */
public final class ClockDialModifier extends ModifierNodeElement<ClockDialNode> {
    public static final int $stable = 0;
    private final AnimationSpec<Float> animationSpec;
    private final boolean autoSwitchToMinute;
    private final int selection;
    private final AnalogTimePickerState state;

    private ClockDialModifier(AnalogTimePickerState analogTimePickerState, boolean z, int i, AnimationSpec<Float> animationSpec) {
        this.state = analogTimePickerState;
        this.autoSwitchToMinute = z;
        this.selection = i;
        this.animationSpec = animationSpec;
    }

    private final AnalogTimePickerState component1() {
        return this.state;
    }

    private final boolean component2() {
        return this.autoSwitchToMinute;
    }

    /* JADX INFO: renamed from: component3-yecRtBI, reason: not valid java name */
    private final int m3210component3yecRtBI() {
        return this.selection;
    }

    private final AnimationSpec<Float> component4() {
        return this.animationSpec;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-JwYzU44$default, reason: not valid java name */
    public static /* synthetic */ ClockDialModifier m3211copyJwYzU44$default(ClockDialModifier clockDialModifier, AnalogTimePickerState analogTimePickerState, boolean z, int i, AnimationSpec animationSpec, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            analogTimePickerState = clockDialModifier.state;
        }
        if ((i2 & 2) != 0) {
            z = clockDialModifier.autoSwitchToMinute;
        }
        if ((i2 & 4) != 0) {
            i = clockDialModifier.selection;
        }
        if ((i2 & 8) != 0) {
            animationSpec = clockDialModifier.animationSpec;
        }
        return clockDialModifier.m3212copyJwYzU44(analogTimePickerState, z, i, animationSpec);
    }

    /* JADX INFO: renamed from: copy-JwYzU44, reason: not valid java name */
    public final ClockDialModifier m3212copyJwYzU44(AnalogTimePickerState analogTimePickerState, boolean z, int i, AnimationSpec<Float> animationSpec) {
        return new ClockDialModifier(analogTimePickerState, z, i, animationSpec, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public ClockDialNode create() {
        return new ClockDialNode(this.state, this.autoSwitchToMinute, this.selection, this.animationSpec, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClockDialModifier)) {
            return false;
        }
        ClockDialModifier clockDialModifier = (ClockDialModifier) obj;
        return aa4.e(this.state, clockDialModifier.state) && this.autoSwitchToMinute == clockDialModifier.autoSwitchToMinute && TimePickerSelectionMode.m4151equalsimpl0(this.selection, clockDialModifier.selection) && aa4.e(this.animationSpec, clockDialModifier.animationSpec);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.animationSpec.hashCode() + ((TimePickerSelectionMode.m4152hashCodeimpl(this.selection) + tg.c(this.state.hashCode() * 31, 31, this.autoSwitchToMinute)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
    }

    public String toString() {
        return "ClockDialModifier(state=" + this.state + ", autoSwitchToMinute=" + this.autoSwitchToMinute + ", selection=" + ((Object) TimePickerSelectionMode.m4153toStringimpl(this.selection)) + ", animationSpec=" + this.animationSpec + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(ClockDialNode clockDialNode) {
        clockDialNode.m3216updateNodeJwYzU44(this.state, this.autoSwitchToMinute, this.selection, this.animationSpec);
    }

    public /* synthetic */ ClockDialModifier(AnalogTimePickerState analogTimePickerState, boolean z, int i, AnimationSpec animationSpec, jh2 jh2Var) {
        this(analogTimePickerState, z, i, animationSpec);
    }
}
