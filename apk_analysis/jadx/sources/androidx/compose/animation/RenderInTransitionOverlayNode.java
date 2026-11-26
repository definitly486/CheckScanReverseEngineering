package androidx.compose.animation;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.media3.muxer.MuxerUtil;
import defpackage.fg;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class RenderInTransitionOverlayNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, ModifierLocalModifierNode {
    public static final int $stable = 8;
    private boolean enabled;
    private LayerWithRenderer layerWithRenderer;
    private long positionInOverlay = Offset.Companion.m6003getZeroF1C5BW0();
    private ll3<Boolean> renderInOverlay;
    private SharedTransitionScopeImpl sharedScope;
    private final MutableFloatState zIndexInOverlay$delegate;

    public final class LayerWithRenderer implements LayerRenderer {
        private final GraphicsLayer layer;

        public LayerWithRenderer(GraphicsLayer graphicsLayer) {
            this.layer = graphicsLayer;
        }

        @Override // androidx.compose.animation.LayerRenderer
        public void drawInOverlay(DrawScope drawScope) {
            if (RenderInTransitionOverlayNode.this.enabled) {
                RenderInTransitionOverlayNode renderInTransitionOverlayNode = RenderInTransitionOverlayNode.this;
                float fIntBitsToFloat = Float.intBitsToFloat((int) (renderInTransitionOverlayNode.positionInOverlay >> 32));
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (renderInTransitionOverlayNode.positionInOverlay & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                drawScope.getDrawContext().getTransform().translate(fIntBitsToFloat, fIntBitsToFloat2);
                try {
                    GraphicsLayerKt.drawLayer(drawScope, this.layer);
                } finally {
                    drawScope.getDrawContext().getTransform().translate(-fIntBitsToFloat, -fIntBitsToFloat2);
                }
            }
        }

        public final GraphicsLayer getLayer() {
            return this.layer;
        }

        @Override // androidx.compose.animation.LayerRenderer
        public SharedElementEntry getParentState() {
            return RenderInTransitionOverlayNode.this.getParentState();
        }

        @Override // androidx.compose.animation.LayerRenderer
        public float getZIndex() {
            return RenderInTransitionOverlayNode.this.getZIndexInOverlay();
        }
    }

    public RenderInTransitionOverlayNode(SharedTransitionScopeImpl sharedTransitionScopeImpl, ll3<Boolean> ll3Var, float f) {
        this.sharedScope = sharedTransitionScopeImpl;
        this.renderInOverlay = ll3Var;
        this.zIndexInOverlay$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setEnabled(boolean z) {
        if (z != this.enabled) {
            ll3<j59> invalidateOverlay = this.sharedScope.getInvalidateOverlay();
            if (invalidateOverlay != null) {
                invalidateOverlay.invoke();
            }
            DrawModifierNodeKt.invalidateDraw(this);
            this.enabled = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: setPositionInOverlay-k-4lQ0M, reason: not valid java name */
    public final void m1142setPositionInOverlayk4lQ0M(long j) {
        if (Offset.m5984equalsimpl0(j, this.positionInOverlay)) {
            return;
        }
        ll3<j59> invalidateOverlay = this.sharedScope.getInvalidateOverlay();
        if (invalidateOverlay != null) {
            invalidateOverlay.invoke();
        }
        DrawModifierNodeKt.invalidateDraw(this);
        this.positionInOverlay = j;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        GraphicsLayer layer = getLayer();
        if (layer == null) {
            fg.c("Error: layer never initialized");
            return;
        }
        DrawScope.m6804recordJVtK1S4$default(contentDrawScope, layer, 0L, new AnonymousClass1(contentDrawScope), 1, null);
        if (this.enabled) {
            return;
        }
        GraphicsLayerKt.drawLayer(contentDrawScope, layer);
    }

    public final GraphicsLayer getLayer() {
        LayerWithRenderer layerWithRenderer = this.layerWithRenderer;
        if (layerWithRenderer != null) {
            return layerWithRenderer.getLayer();
        }
        return null;
    }

    public final SharedElementEntry getParentState() {
        return (SharedElementEntry) getCurrent(SharedContentNodeKt.getModifierLocalSharedElementInternalState());
    }

    public final ll3<Boolean> getRenderInOverlay() {
        return this.renderInOverlay;
    }

    public final SharedTransitionScopeImpl getSharedScope() {
        return this.sharedScope;
    }

    public final float getZIndexInOverlay() {
        return this.zIndexInOverlay$delegate.getFloatValue();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new RenderInTransitionOverlayNode$measure$1$1(measureScope, this, placeableMo7702measureBRTryo0), 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        LayerWithRenderer layerWithRenderer = new LayerWithRenderer(DelegatableNodeKt.requireGraphicsContext(this).createGraphicsLayer());
        this.sharedScope.onLayerRendererCreated$animation(layerWithRenderer);
        this.layerWithRenderer = layerWithRenderer;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        LayerWithRenderer layerWithRenderer = this.layerWithRenderer;
        if (layerWithRenderer != null) {
            this.sharedScope.onLayerRendererRemoved$animation(layerWithRenderer);
            DelegatableNodeKt.requireGraphicsContext(this).releaseGraphicsLayer(layerWithRenderer.getLayer());
        }
    }

    public final void setRenderInOverlay(ll3<Boolean> ll3Var) {
        this.renderInOverlay = ll3Var;
    }

    public final void setSharedScope(SharedTransitionScopeImpl sharedTransitionScopeImpl) {
        this.sharedScope = sharedTransitionScopeImpl;
    }

    public final void setZIndexInOverlay(float f) {
        this.zIndexInOverlay$delegate.setFloatValue(f);
    }

    /* JADX INFO: renamed from: androidx.compose.animation.RenderInTransitionOverlayNode$draw$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<DrawScope, j59> {
        final /* synthetic */ ContentDrawScope $this_draw;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ContentDrawScope contentDrawScope) {
            super(1);
            this.$this_draw = contentDrawScope;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(DrawScope drawScope) {
            invoke2(drawScope);
            return j59.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(DrawScope drawScope) {
            this.$this_draw.drawContent();
        }
    }
}
