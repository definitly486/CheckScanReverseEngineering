package androidx.compose.ui;

import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.js2;

/* JADX INFO: loaded from: classes2.dex */
final class FrameRateElement extends ModifierNodeElement<FrameRateModifierNode> {
    private final float frameRate;

    public FrameRateElement(float f) {
        this.frameRate = f;
    }

    public static /* synthetic */ FrameRateElement copy$default(FrameRateElement frameRateElement, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = frameRateElement.frameRate;
        }
        return frameRateElement.copy(f);
    }

    public final float component1() {
        return this.frameRate;
    }

    public final FrameRateElement copy(float f) {
        return new FrameRateElement(f);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public FrameRateModifierNode create() {
        return new FrameRateModifierNode(this.frameRate);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FrameRateElement) && Float.compare(this.frameRate, ((FrameRateElement) obj).frameRate) == 0;
    }

    public final float getFrameRate() {
        return this.frameRate;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return Float.hashCode(this.frameRate);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("FrameRateModifierNode");
        inspectorInfo.getProperties().set("frameRate", Float.valueOf(this.frameRate));
    }

    public String toString() {
        return js2.b(new StringBuilder("FrameRateElement(frameRate="), this.frameRate, ')');
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(FrameRateModifierNode frameRateModifierNode) {
        if (frameRateModifierNode.getFrameRate() == this.frameRate) {
            return;
        }
        frameRateModifierNode.setShouldUpdateFrameRates(true);
        frameRateModifierNode.setFrameRate(this.frameRate);
        DrawModifierNodeKt.invalidateDraw(frameRateModifierNode);
    }
}
