package androidx.compose.animation;

import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import defpackage.aa4;
import defpackage.bm3;

/* JADX INFO: loaded from: classes.dex */
public final class BoundsAnimationElement extends ModifierNodeElement<BoundsAnimationModifierNode> {
    public static final int $stable = 0;
    private final boolean animateMotionFrameOfReference;
    private final BoundsTransform boundsTransform;
    private final LookaheadScope lookaheadScope;
    private final bm3<IntSize, Constraints, Constraints> resolveMeasureConstraints;

    /* JADX WARN: Multi-variable type inference failed */
    public BoundsAnimationElement(LookaheadScope lookaheadScope, BoundsTransform boundsTransform, bm3<? super IntSize, ? super Constraints, Constraints> bm3Var, boolean z) {
        this.lookaheadScope = lookaheadScope;
        this.boundsTransform = boundsTransform;
        this.resolveMeasureConstraints = bm3Var;
        this.animateMotionFrameOfReference = z;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public BoundsAnimationModifierNode create() {
        return new BoundsAnimationModifierNode(this.lookaheadScope, this.boundsTransform, this.resolveMeasureConstraints, this.animateMotionFrameOfReference);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (!(obj instanceof BoundsAnimationElement)) {
            return false;
        }
        BoundsAnimationElement boundsAnimationElement = (BoundsAnimationElement) obj;
        return aa4.e(boundsAnimationElement.lookaheadScope, this.lookaheadScope) && aa4.e(boundsAnimationElement.boundsTransform, this.boundsTransform) && boundsAnimationElement.resolveMeasureConstraints == this.resolveMeasureConstraints && boundsAnimationElement.animateMotionFrameOfReference == this.animateMotionFrameOfReference;
    }

    public final boolean getAnimateMotionFrameOfReference() {
        return this.animateMotionFrameOfReference;
    }

    public final BoundsTransform getBoundsTransform() {
        return this.boundsTransform;
    }

    public final LookaheadScope getLookaheadScope() {
        return this.lookaheadScope;
    }

    public final bm3<IntSize, Constraints, Constraints> getResolveMeasureConstraints() {
        return this.resolveMeasureConstraints;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return Boolean.hashCode(this.animateMotionFrameOfReference) + ((this.resolveMeasureConstraints.hashCode() + ((this.boundsTransform.hashCode() + (this.lookaheadScope.hashCode() * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("boundsAnimation");
        inspectorInfo.getProperties().set("lookaheadScope", this.lookaheadScope);
        inspectorInfo.getProperties().set("boundsTransform", this.boundsTransform);
        inspectorInfo.getProperties().set("onChooseMeasureConstraints", this.resolveMeasureConstraints);
        inspectorInfo.getProperties().set("animateMotionFrameOfReference", Boolean.valueOf(this.animateMotionFrameOfReference));
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(BoundsAnimationModifierNode boundsAnimationModifierNode) {
        boundsAnimationModifierNode.setLookaheadScope(this.lookaheadScope);
        boundsAnimationModifierNode.setBoundsTransform(this.boundsTransform);
        boundsAnimationModifierNode.setOnChooseMeasureConstraints(this.resolveMeasureConstraints);
        boundsAnimationModifierNode.setAnimateMotionFrameOfReference(this.animateMotionFrameOfReference);
    }
}
