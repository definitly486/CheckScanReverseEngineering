package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
final class VeilModifierElement extends ModifierNodeElement<VeilModifierNode> {
    private final EnterTransition enter;
    private final ExitTransition exit;
    private final Transition<EnterExitState> transition;
    private final Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> veilAnimation;

    public VeilModifierElement(Transition<EnterExitState> transition, Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> deferredAnimation, EnterTransition enterTransition, ExitTransition exitTransition) {
        this.transition = transition;
        this.veilAnimation = deferredAnimation;
        this.enter = enterTransition;
        this.exit = exitTransition;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VeilModifierElement copy$default(VeilModifierElement veilModifierElement, Transition transition, Transition.DeferredAnimation deferredAnimation, EnterTransition enterTransition, ExitTransition exitTransition, int i, Object obj) {
        if ((i & 1) != 0) {
            transition = veilModifierElement.transition;
        }
        if ((i & 2) != 0) {
            deferredAnimation = veilModifierElement.veilAnimation;
        }
        if ((i & 4) != 0) {
            enterTransition = veilModifierElement.enter;
        }
        if ((i & 8) != 0) {
            exitTransition = veilModifierElement.exit;
        }
        return veilModifierElement.copy(transition, deferredAnimation, enterTransition, exitTransition);
    }

    public final Transition<EnterExitState> component1() {
        return this.transition;
    }

    public final Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> component2() {
        return this.veilAnimation;
    }

    public final EnterTransition component3() {
        return this.enter;
    }

    public final ExitTransition component4() {
        return this.exit;
    }

    public final VeilModifierElement copy(Transition<EnterExitState> transition, Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> deferredAnimation, EnterTransition enterTransition, ExitTransition exitTransition) {
        return new VeilModifierElement(transition, deferredAnimation, enterTransition, exitTransition);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public VeilModifierNode create() {
        return new VeilModifierNode(this.transition, this.veilAnimation, this.enter, this.exit);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VeilModifierElement)) {
            return false;
        }
        VeilModifierElement veilModifierElement = (VeilModifierElement) obj;
        return aa4.e(this.transition, veilModifierElement.transition) && aa4.e(this.veilAnimation, veilModifierElement.veilAnimation) && aa4.e(this.enter, veilModifierElement.enter) && aa4.e(this.exit, veilModifierElement.exit);
    }

    public final EnterTransition getEnter() {
        return this.enter;
    }

    public final ExitTransition getExit() {
        return this.exit;
    }

    public final Transition<EnterExitState> getTransition() {
        return this.transition;
    }

    public final Transition<EnterExitState>.DeferredAnimation<Color, AnimationVector4D> getVeilAnimation() {
        return this.veilAnimation;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.exit.hashCode() + ((this.enter.hashCode() + ((this.veilAnimation.hashCode() + (this.transition.hashCode() * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("veil");
        inspectorInfo.getProperties().set("transition", this.transition);
        inspectorInfo.getProperties().set("veilAnimation", this.veilAnimation);
        inspectorInfo.getProperties().set("enter", this.enter);
        inspectorInfo.getProperties().set("exit", this.exit);
    }

    public String toString() {
        return "VeilModifierElement(transition=" + this.transition + ", veilAnimation=" + this.veilAnimation + ", enter=" + this.enter + ", exit=" + this.exit + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(VeilModifierNode veilModifierNode) {
        veilModifierNode.setTransition(this.transition);
        veilModifierNode.setVeilAnimation(this.veilAnimation);
        veilModifierNode.setEnter(this.enter);
        veilModifierNode.setExit(this.exit);
    }
}
