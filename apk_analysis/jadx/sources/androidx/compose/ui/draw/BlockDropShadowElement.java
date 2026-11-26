package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class BlockDropShadowElement extends ModifierNodeElement<BlockDropShadowNode> {
    public static final int $stable = 0;
    private final nl3<DropShadowScope, j59> block;
    private final Shape shape;

    /* JADX WARN: Multi-variable type inference failed */
    public BlockDropShadowElement(Shape shape, nl3<? super DropShadowScope, j59> nl3Var) {
        this.shape = shape;
        this.block = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public BlockDropShadowNode create() {
        return new BlockDropShadowNode(this.shape, this.block);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlockDropShadowElement)) {
            return false;
        }
        BlockDropShadowElement blockDropShadowElement = (BlockDropShadowElement) obj;
        return aa4.e(this.shape, blockDropShadowElement.shape) && this.block == blockDropShadowElement.block;
    }

    public final nl3<DropShadowScope, j59> getBlock() {
        return this.block;
    }

    public final Shape getShape() {
        return this.shape;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.block.hashCode() + (this.shape.hashCode() * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("dropShadow");
        inspectorInfo.getProperties().set("shape", this.shape);
        inspectorInfo.getProperties().set("block", this.block);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(BlockDropShadowNode blockDropShadowNode) {
        blockDropShadowNode.update(this.shape, this.block);
    }
}
