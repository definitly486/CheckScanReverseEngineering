package androidx.compose.ui.graphics;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class BlockGraphicsLayerModifier extends Modifier.Node implements LayoutModifierNode, SemanticsModifierNode {
    public static final int $stable = 8;
    private final boolean isImportantForBounds;
    private nl3<? super GraphicsLayerScope, j59> layerBlock;

    public BlockGraphicsLayerModifier(nl3<? super GraphicsLayerScope, j59> nl3Var) {
        this.layerBlock = nl3Var;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Shape lastShape$ui;
        boolean lastClip$ui;
        if (ComposeUiFlags.isGraphicsLayerShapeSemanticsEnabled) {
            NodeCoordinator nodeCoordinatorM7874requireCoordinator64DMado = DelegatableNodeKt.m7874requireCoordinator64DMado(this, NodeKind.m8019constructorimpl(2));
            if (nodeCoordinatorM7874requireCoordinator64DMado.getWasLayerBlockInvoked$ui()) {
                lastShape$ui = nodeCoordinatorM7874requireCoordinator64DMado.getLastShape$ui();
                lastClip$ui = nodeCoordinatorM7874requireCoordinator64DMado.getLastClip$ui();
            } else {
                if (GraphicsLayerModifierKt.reusableGraphicsLayerScope == null) {
                    GraphicsLayerModifierKt.reusableGraphicsLayerScope = new ReusableGraphicsLayerScope();
                } else {
                    ReusableGraphicsLayerScope reusableGraphicsLayerScope = GraphicsLayerModifierKt.reusableGraphicsLayerScope;
                    reusableGraphicsLayerScope.getClass();
                    reusableGraphicsLayerScope.reset();
                }
                ReusableGraphicsLayerScope reusableGraphicsLayerScope2 = GraphicsLayerModifierKt.reusableGraphicsLayerScope;
                reusableGraphicsLayerScope2.getClass();
                reusableGraphicsLayerScope2.setGraphicsDensity$ui(nodeCoordinatorM7874requireCoordinator64DMado.getLayoutNode().getDensity());
                reusableGraphicsLayerScope2.m6560setSizeuvyYCjk(IntSizeKt.m9225toSizeozmzZPI(nodeCoordinatorM7874requireCoordinator64DMado.mo7710getSizeYbymL2g()));
                Snapshot.Companion companion = Snapshot.Companion;
                Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
                nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
                Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
                try {
                    this.layerBlock.invoke(reusableGraphicsLayerScope2);
                    j59 j59Var = j59.a;
                    companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
                    lastShape$ui = reusableGraphicsLayerScope2.getShape();
                    lastClip$ui = reusableGraphicsLayerScope2.getClip();
                } catch (Throwable th) {
                    companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
                    throw th;
                }
            }
            if (lastClip$ui) {
                SemanticsPropertiesKt.setShape(semanticsPropertyReceiver, lastShape$ui);
            }
        }
    }

    public final nl3<GraphicsLayerScope, j59> getLayerBlock() {
        return this.layerBlock;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    public final void invalidateLayerBlock() {
        LayoutModifierNodeKt.updateLayerBlock(this, this.layerBlock);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public boolean isImportantForBounds() {
        return this.isImportantForBounds;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new BlockGraphicsLayerModifier$measure$1(placeableMo7702measureBRTryo0, this), 4, null);
    }

    public final void setLayerBlock(nl3<? super GraphicsLayerScope, j59> nl3Var) {
        this.layerBlock = nl3Var;
    }

    public String toString() {
        return "BlockGraphicsLayerModifier(block=" + this.layerBlock + ')';
    }
}
