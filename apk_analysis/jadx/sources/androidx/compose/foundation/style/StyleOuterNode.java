package androidx.compose.foundation.style;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.border.BorderLogic;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.style.StyleOuterNode;
import androidx.compose.foundation.text.modifiers.TextStyleProviderNode;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.shadow.DropShadowPainter;
import androidx.compose.ui.graphics.shadow.InnerShadowPainter;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.ap1;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.n27;
import defpackage.nl3;
import defpackage.p07;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;
import defpackage.tl2;
import defpackage.y22;
import defpackage.yr;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class StyleOuterNode extends DelegatingNode implements LayoutModifierNode, DrawModifierNode, TraversableNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, CompositionLocalAccessorScope, TextStyleProviderNode {
    public static final int $stable = 8;
    private ResolvedStyle _bufferOrNull;
    private StyleState _state;
    private MutableObjectList<StyleOuterNode> ancestorNodes;
    private StyleAnimations animations;
    private GraphicsLayer borderLayer;
    private ll3<GraphicsLayer> borderLayerProvider;
    private DropShadowPainter[] cachedDropShadowPainters;
    private ResolvedStyle cachedInheritedStyle;
    private InnerShadowPainter[] cachedInnerShadowPainters;
    private InteractionSource currentInteractionSource;
    private boolean inheritedStyleDirty;
    private StyleInnerNode innerNodeField;
    private Shadow[] lastDropShadow;
    private Shadow[] lastInnerShadow;
    private LayoutDirection lastLayoutDirection;
    private Outline lastOutline;
    private Shape lastShape;
    private long lastSize;
    private nl3<? super GraphicsLayerScope, j59> layerBlock;
    private mb4 sourceJob;
    private Style style;
    private ResolvedStyle _resolved = new ResolvedStyle();
    private final BorderLogic borderLogic = new BorderLogic();

    /* JADX INFO: renamed from: androidx.compose.foundation.style.StyleOuterNode$updateInteractionSources$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.style.StyleOuterNode$updateInteractionSources$1", f = "StyleModifier.kt", l = {715}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ InteractionSource $source;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(InteractionSource interactionSource, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$source = interactionSource;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return StyleOuterNode.this.new AnonymousClass1(this.$source, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                StyleState styleState = StyleOuterNode.this._state;
                InteractionSource interactionSource = this.$source;
                this.label = 1;
                if (styleState.processInteractions$foundation(interactionSource, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public StyleOuterNode(StyleState styleState, Style style) {
        this.style = style;
        this._state = styleState == null ? new MutableStyleState(null) : styleState;
        this.lastSize = Size.Companion.m6064getUnspecifiedNHjbRc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _get_layerBlockNonNull_$lambda$0$0(StyleOuterNode styleOuterNode, GraphicsLayerScope graphicsLayerScope) {
        styleOuterNode.updateLayer(graphicsLayerScope);
        return j59.a;
    }

    private final ResolvedStyle currentLayerStyle() {
        return resolveAnimatedStyleFor$foundation$default(this, 4, null, 2, null);
    }

    private final ResolvedStyle currentLayoutStyle() {
        return resolveAnimatedStyleFor$foundation$default(this, 8, null, 2, null);
    }

    private final void drawDropShadow(ContentDrawScope contentDrawScope, int i, Shape shape, Shadow shadow) {
        Shadow[] shadowArr = this.lastDropShadow;
        Shadow shadow2 = shadowArr != null ? (Shadow) yr.O(i, shadowArr) : null;
        DropShadowPainter[] dropShadowPainterArr = this.cachedDropShadowPainters;
        DropShadowPainter dropShadowPainterCreateDropShadowPainter = dropShadowPainterArr != null ? (DropShadowPainter) yr.O(i, dropShadowPainterArr) : null;
        if (!aa4.e(shadow2, shadow) || dropShadowPainterCreateDropShadowPainter == null) {
            dropShadowPainterCreateDropShadowPainter = DelegatableNodeKt.requireGraphicsContext(this).getShadowContext().createDropShadowPainter(shape, shadow);
        }
        DropShadowPainter dropShadowPainter = dropShadowPainterCreateDropShadowPainter;
        Shadow[] shadowArr2 = this.lastDropShadow;
        if (shadowArr2 != null) {
            shadowArr2[i] = shadow;
        }
        DropShadowPainter[] dropShadowPainterArr2 = this.cachedDropShadowPainters;
        if (dropShadowPainterArr2 != null) {
            dropShadowPainterArr2[i] = dropShadowPainter;
        }
        Painter.m6931drawx_KDEd0$default(dropShadowPainter, contentDrawScope, contentDrawScope.mo6806getSizeNHjbRc(), 0.0f, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float drawForShape_9zt3ed4$lambda$0(float f) {
        return f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GraphicsLayer drawForShape_9zt3ed4$lambda$1(StyleOuterNode styleOuterNode) {
        GraphicsLayer graphicsLayer = styleOuterNode.borderLayer;
        if (graphicsLayer != null) {
            return graphicsLayer;
        }
        GraphicsLayer graphicsLayerCreateGraphicsLayer = DelegatableNodeKt.requireGraphicsContext(styleOuterNode).createGraphicsLayer();
        styleOuterNode.borderLayer = graphicsLayerCreateGraphicsLayer;
        return graphicsLayerCreateGraphicsLayer;
    }

    private final void drawInnerShadow(ContentDrawScope contentDrawScope, int i, Shape shape, Shadow shadow) {
        Shadow[] shadowArr = this.lastInnerShadow;
        Shadow shadow2 = shadowArr != null ? (Shadow) yr.O(i, shadowArr) : null;
        InnerShadowPainter[] innerShadowPainterArr = this.cachedInnerShadowPainters;
        InnerShadowPainter innerShadowPainterCreateInnerShadowPainter = innerShadowPainterArr != null ? (InnerShadowPainter) yr.O(i, innerShadowPainterArr) : null;
        if (!aa4.e(shadow2, shadow) || innerShadowPainterCreateInnerShadowPainter == null) {
            innerShadowPainterCreateInnerShadowPainter = DelegatableNodeKt.requireGraphicsContext(this).getShadowContext().createInnerShadowPainter(shape, shadow);
        }
        InnerShadowPainter innerShadowPainter = innerShadowPainterCreateInnerShadowPainter;
        Shadow[] shadowArr2 = this.lastInnerShadow;
        if (shadowArr2 != null) {
            shadowArr2[i] = shadow;
        }
        InnerShadowPainter[] innerShadowPainterArr2 = this.cachedInnerShadowPainters;
        if (innerShadowPainterArr2 != null) {
            innerShadowPainterArr2[i] = innerShadowPainter;
        }
        Painter.m6931drawx_KDEd0$default(innerShadowPainter, contentDrawScope, contentDrawScope.mo6806getSizeNHjbRc(), 0.0f, null, 6, null);
    }

    private final ResolvedStyle getBufferNonNull() {
        ResolvedStyle resolvedStyle = this._bufferOrNull;
        if (resolvedStyle == null) {
            resolvedStyle = new ResolvedStyle();
            this._bufferOrNull = resolvedStyle;
        }
        resolvedStyle.getClass();
        return resolvedStyle;
    }

    /* JADX INFO: renamed from: getOutline-12SF9DM, reason: not valid java name */
    private final Outline m2441getOutline12SF9DM(ContentDrawScope contentDrawScope, long j, Shape shape) {
        Outline outlineMo1345createOutlinePq9zytI;
        if (Size.m6052equalsimpl0(this.lastSize, j) && this.lastLayoutDirection == contentDrawScope.getLayoutDirection() && aa4.e(this.lastShape, shape)) {
            outlineMo1345createOutlinePq9zytI = this.lastOutline;
            outlineMo1345createOutlinePq9zytI.getClass();
        } else {
            outlineMo1345createOutlinePq9zytI = shape.mo1345createOutlinePq9zytI(j, contentDrawScope.getLayoutDirection(), contentDrawScope);
        }
        this.lastOutline = outlineMo1345createOutlinePq9zytI;
        this.lastSize = j;
        this.lastLayoutDirection = contentDrawScope.getLayoutDirection();
        return outlineMo1345createOutlinePq9zytI;
    }

    private final void invalidateTextDraw() {
        this.inheritedStyleDirty = true;
        DelegatableNodeKt.invalidateDrawForSubtree(this);
    }

    private final void invalidateTextLayout() {
        this.inheritedStyleDirty = true;
        DelegatableNodeKt.invalidateMeasurementForSubtree(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(StyleOuterNode styleOuterNode, long j, Placeable placeable, float f, float f2, float f3, float f4, Placeable.PlacementScope placementScope) {
        ResolvedStyle resolvedStyleCurrentLayoutStyle = styleOuterNode.currentLayoutStyle();
        int iM8995getMaxWidthimpl = styleOuterNode.shouldPlaceRelativeToRight(resolvedStyleCurrentLayoutStyle) ? (Constraints.m8995getMaxWidthimpl(j) - placeable.getWidth()) - Math.round(f) : Math.round(f2);
        int iM8994getMaxHeightimpl = styleOuterNode.shouldPlaceRelativeToBottom(resolvedStyleCurrentLayoutStyle) ? (Constraints.m8994getMaxHeightimpl(j) - placeable.getHeight()) - Math.round(f3) : Math.round(f4);
        if ((resolvedStyleCurrentLayoutStyle.flags & 4) != 0) {
            Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, 0.0f, styleOuterNode.getLayerBlockNonNull$foundation(), 4, (Object) null);
        } else {
            Placeable.PlacementScope.place$default(placementScope, placeable, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, 0.0f, 4, null);
        }
        return j59.a;
    }

    public static /* synthetic */ ResolvedStyle resolveAnimatedStyleFor$foundation$default(StyleOuterNode styleOuterNode, int i, ResolvedStyle resolvedStyle, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            resolvedStyle = styleOuterNode._resolved;
        }
        return styleOuterNode.resolveAnimatedStyleFor$foundation(i, resolvedStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [T, androidx.collection.MutableObjectList, androidx.collection.MutableObjectList<androidx.compose.foundation.style.StyleOuterNode>] */
    public static final boolean resolveInheritedStyle$lambda$1(r07 r07Var, StyleOuterNode styleOuterNode, TraversableNode traversableNode) {
        StyleAnimations styleAnimations;
        int i = 1;
        if (!(traversableNode instanceof StyleOuterNode)) {
            return true;
        }
        StyleOuterNode styleOuterNode2 = (StyleOuterNode) traversableNode;
        if ((styleOuterNode2._resolved.flags & 96) != 0 || ((styleAnimations = styleOuterNode2.animations) != null && styleAnimations.isNotEmpty())) {
            MutableObjectList mutableObjectList = (MutableObjectList) r07Var.b;
            MutableObjectList mutableObjectList2 = mutableObjectList;
            if (mutableObjectList == null) {
                ?? mutableObjectList3 = new MutableObjectList(0, i, null);
                r07Var.b = mutableObjectList3;
                styleOuterNode.ancestorNodes = mutableObjectList3;
                mutableObjectList2 = mutableObjectList3;
            }
            mutableObjectList2.add(traversableNode);
        }
        return true;
    }

    public static /* synthetic */ void resolveStyleAndInvalidate$default(StyleOuterNode styleOuterNode, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        styleOuterNode.resolveStyleAndInvalidate(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 resolveStyleAndInvalidate$lambda$0(ResolvedStyle resolvedStyle, StyleOuterNode styleOuterNode, Density density, ResolvedStyle resolvedStyle2, p07 p07Var, boolean z) {
        resolvedStyle.resolve$foundation(styleOuterNode.style, styleOuterNode, density, false);
        styleOuterNode._resolved = resolvedStyle;
        styleOuterNode._bufferOrNull = resolvedStyle2;
        StyleAnimations styleAnimations = styleOuterNode.animations;
        p07Var.b = styleAnimations != null ? styleAnimations.postResolve(styleOuterNode, density, !z) : 0;
        return j59.a;
    }

    private final boolean shouldPlaceRelativeToBottom(ResolvedStyle resolvedStyle) {
        return !Float.isNaN(resolvedStyle.getBottom$foundation()) && Float.isNaN(resolvedStyle.getTop$foundation());
    }

    private final boolean shouldPlaceRelativeToRight(ResolvedStyle resolvedStyle) {
        return !Float.isNaN(resolvedStyle.getRight$foundation()) && Float.isNaN(resolvedStyle.getLeft$foundation());
    }

    private final void updateLayer(GraphicsLayerScope graphicsLayerScope) {
        ResolvedStyle resolvedStyleCurrentLayerStyle = currentLayerStyle();
        graphicsLayerScope.setAlpha(resolvedStyleCurrentLayerStyle.getAlpha$foundation());
        graphicsLayerScope.setScaleX(resolvedStyleCurrentLayerStyle.getScaleX$foundation());
        graphicsLayerScope.setScaleY(resolvedStyleCurrentLayerStyle.getScaleY$foundation());
        graphicsLayerScope.setTranslationX(resolvedStyleCurrentLayerStyle.getTranslationX$foundation());
        graphicsLayerScope.setTranslationY(resolvedStyleCurrentLayerStyle.getTranslationY$foundation());
        graphicsLayerScope.setRotationX(resolvedStyleCurrentLayerStyle.getRotationX$foundation());
        graphicsLayerScope.setRotationY(resolvedStyleCurrentLayerStyle.getRotationY$foundation());
        graphicsLayerScope.setRotationZ(resolvedStyleCurrentLayerStyle.getRotationZ$foundation());
        graphicsLayerScope.mo6433setTransformOrigin__ExYCQ(resolvedStyleCurrentLayerStyle.m2397getTransformOriginSzJe1aQ$foundation());
        graphicsLayerScope.setClip(resolvedStyleCurrentLayerStyle.getClip$foundation());
        graphicsLayerScope.setShape(resolvedStyleCurrentLayerStyle.getShape$foundation());
    }

    @Override // androidx.compose.foundation.text.modifiers.TextStyleProviderNode
    /* JADX INFO: renamed from: computeInheritedTextStyle-B-LjeIk, reason: not valid java name */
    public TextStyle mo2442computeInheritedTextStyleBLjeIk(int i, TextStyle textStyle) {
        TextStyle textStyle$foundation;
        ResolvedStyle resolvedStyleResolveInheritedStyle$foundation = resolveInheritedStyle$foundation(StyleModifierKt.m2440toFlagsuwmK9pY(i));
        return (resolvedStyleResolveInheritedStyle$foundation == null || (textStyle$foundation = resolvedStyleResolveInheritedStyle$foundation.toTextStyle$foundation(textStyle)) == null) ? textStyle : textStyle$foundation;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        ResolvedStyle resolvedStyleResolveAnimatedStyleFor$foundation$default = resolveAnimatedStyleFor$foundation$default(this, 2, null, 2, null);
        long jM2383getBackgroundColor0d7_KjU$foundation = resolvedStyleResolveAnimatedStyleFor$foundation$default.m2383getBackgroundColor0d7_KjU$foundation();
        Brush backgroundBrush$foundation = resolvedStyleResolveAnimatedStyleFor$foundation$default.getBackgroundBrush$foundation();
        long jM2390getForegroundColor0d7_KjU$foundation = resolvedStyleResolveAnimatedStyleFor$foundation$default.m2390getForegroundColor0d7_KjU$foundation();
        Brush foregroundBrush$foundation = resolvedStyleResolveAnimatedStyleFor$foundation$default.getForegroundBrush$foundation();
        long jM2385getBorderColor0d7_KjU$foundation = resolvedStyleResolveAnimatedStyleFor$foundation$default.m2385getBorderColor0d7_KjU$foundation();
        Brush borderBrush$foundation = resolvedStyleResolveAnimatedStyleFor$foundation$default.getBorderBrush$foundation();
        float borderWidth$foundation = resolvedStyleResolveAnimatedStyleFor$foundation$default.getBorderWidth$foundation();
        float f = borderWidth$foundation / 2.0f;
        Shape shape$foundation = resolvedStyleResolveAnimatedStyleFor$foundation$default.getShape$foundation();
        boolean z = f > 0.0f;
        boolean z2 = (jM2383getBackgroundColor0d7_KjU$foundation == 16 && backgroundBrush$foundation == null) ? false : true;
        boolean z3 = (jM2390getForegroundColor0d7_KjU$foundation == 16 && foregroundBrush$foundation == null) ? false : true;
        drawDropShadow(contentDrawScope, resolvedStyleResolveAnimatedStyleFor$foundation$default);
        m2443drawForShape9zt3ed4(contentDrawScope, shape$foundation, z2, z, z3, jM2383getBackgroundColor0d7_KjU$foundation, backgroundBrush$foundation, jM2385getBorderColor0d7_KjU$foundation, borderBrush$foundation, jM2390getForegroundColor0d7_KjU$foundation, foregroundBrush$foundation, borderWidth$foundation);
        drawInnerShadow(contentDrawScope, resolvedStyleResolveAnimatedStyleFor$foundation$default);
        this.lastShape = shape$foundation;
    }

    /* JADX INFO: renamed from: drawForShape-9zt3ed4, reason: not valid java name */
    public final void m2443drawForShape9zt3ed4(ContentDrawScope contentDrawScope, Shape shape, boolean z, boolean z2, boolean z3, long j, Brush brush, long j2, Brush brush2, long j3, Brush brush3, final float f) {
        Outline outlineM2441getOutline12SF9DM = m2441getOutline12SF9DM(contentDrawScope, contentDrawScope.mo6806getSizeNHjbRc(), shape);
        if (z) {
            if (brush != null) {
                OutlineKt.m6503drawOutlinehn5TExg$default(contentDrawScope, outlineM2441getOutline12SF9DM, brush, 0.0f, null, null, 0, 60, null);
            } else {
                OutlineKt.m6505drawOutlinewDX37Ww$default(contentDrawScope, outlineM2441getOutline12SF9DM, j, 0.0f, null, null, 0, 60, null);
            }
        }
        contentDrawScope.drawContent();
        if (z3) {
            if (brush3 != null) {
                OutlineKt.m6503drawOutlinehn5TExg$default(contentDrawScope, outlineM2441getOutline12SF9DM, brush3, 0.0f, null, null, 0, 60, null);
            } else {
                OutlineKt.m6505drawOutlinewDX37Ww$default(contentDrawScope, outlineM2441getOutline12SF9DM, j3, 0.0f, null, null, 0, 60, null);
            }
        }
        if (z2) {
            Brush solidColor = brush2 == null ? new SolidColor(j2, null) : brush2;
            BorderLogic borderLogic = this.borderLogic;
            ll3 ll3Var = new ll3() { // from class: hb8
                @Override // defpackage.ll3
                public final Object invoke() {
                    return Float.valueOf(StyleOuterNode.drawForShape_9zt3ed4$lambda$0(f));
                }
            };
            ll3 ap1Var = this.borderLayerProvider;
            if (ap1Var == null) {
                ap1Var = new ap1(this, 3);
                this.borderLayerProvider = ap1Var;
                j59 j59Var = j59.a;
            }
            borderLogic.m1381drawBorder2gY9BTk$foundation(contentDrawScope, ll3Var, solidColor, ap1Var, outlineM2441getOutline12SF9DM, (32 & 32) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : 0L);
        }
    }

    public final MutableObjectList<StyleOuterNode> getAncestorNodes$foundation() {
        return this.ancestorNodes;
    }

    public final StyleAnimations getAnimations$foundation() {
        return this.animations;
    }

    public final ResolvedStyle getCachedInheritedStyle$foundation() {
        if (this.inheritedStyleDirty) {
            return null;
        }
        return this.cachedInheritedStyle;
    }

    @Override // androidx.compose.runtime.CompositionLocalAccessorScope
    public <T> T getCurrentValue(CompositionLocal<T> compositionLocal) {
        return (T) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, compositionLocal);
    }

    public final StyleInnerNode getInnerNode$foundation() {
        StyleInnerNode styleInnerNode = this.innerNodeField;
        if (styleInnerNode != null) {
            return styleInnerNode;
        }
        ah.f("StyleOuterNode with no corresponding StyleInnerNode");
        return null;
    }

    public final StyleInnerNode getInnerNodeField$foundation() {
        return this.innerNodeField;
    }

    public final nl3<GraphicsLayerScope, j59> getLayerBlock$foundation() {
        return this.layerBlock;
    }

    public final nl3<GraphicsLayerScope, j59> getLayerBlockNonNull$foundation() {
        nl3 nl3Var = this.layerBlock;
        if (nl3Var != null) {
            return nl3Var;
        }
        tl2 tl2Var = new tl2(this, 1);
        this.layerBlock = tl2Var;
        return tl2Var;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    public final mb4 getSourceJob() {
        return this.sourceJob;
    }

    public final StyleState getState$foundation() {
        return this._state;
    }

    public final Style getStyle$foundation() {
        return this.style;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return StyleModifierKt.OuterNodeKey;
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0113  */
    /* JADX WARN: Code duplicated, block: B:74:0x011d  */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, final long j) {
        ResolvedStyle resolvedStyleCurrentLayoutStyle = currentLayoutStyle();
        float externalPaddingStart$foundation = resolvedStyleCurrentLayoutStyle.getExternalPaddingStart$foundation();
        float left$foundation = resolvedStyleCurrentLayoutStyle.getLeft$foundation();
        if (!Float.isNaN(left$foundation)) {
            externalPaddingStart$foundation += left$foundation;
        }
        final float f = externalPaddingStart$foundation;
        float externalPaddingEnd$foundation = resolvedStyleCurrentLayoutStyle.getExternalPaddingEnd$foundation();
        float right$foundation = resolvedStyleCurrentLayoutStyle.getRight$foundation();
        if (!Float.isNaN(right$foundation)) {
            externalPaddingEnd$foundation += right$foundation;
        }
        final float f2 = externalPaddingEnd$foundation;
        float externalPaddingTop$foundation = resolvedStyleCurrentLayoutStyle.getExternalPaddingTop$foundation();
        float top$foundation = resolvedStyleCurrentLayoutStyle.getTop$foundation();
        if (!Float.isNaN(top$foundation)) {
            externalPaddingTop$foundation += top$foundation;
        }
        final float f3 = externalPaddingTop$foundation;
        float externalPaddingBottom$foundation = resolvedStyleCurrentLayoutStyle.getExternalPaddingBottom$foundation();
        float bottom$foundation = resolvedStyleCurrentLayoutStyle.getBottom$foundation();
        if (!Float.isNaN(bottom$foundation)) {
            externalPaddingBottom$foundation += bottom$foundation;
        }
        final float f4 = externalPaddingBottom$foundation;
        int iRound = Math.round(f + f2);
        int iRound2 = Math.round(f3 + f4);
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j) - iRound;
        if (iM8997getMinWidthimpl < 0) {
            iM8997getMinWidthimpl = 0;
        }
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        if (iM8995getMaxWidthimpl != Integer.MAX_VALUE && (iM8995getMaxWidthimpl = iM8995getMaxWidthimpl + iRound) < 0) {
            iM8995getMaxWidthimpl = 0;
        }
        int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j) - iRound2;
        if (iM8996getMinHeightimpl < 0) {
            iM8996getMinHeightimpl = 0;
        }
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        int iRound3 = (iM8994getMaxHeightimpl == Integer.MAX_VALUE || (iM8994getMaxHeightimpl = iM8994getMaxHeightimpl + iRound2) >= 0) ? iM8994getMaxHeightimpl : 0;
        float minWidth$foundation = resolvedStyleCurrentLayoutStyle.getMinWidth$foundation();
        if (!Float.isNaN(minWidth$foundation)) {
            iM8997getMinWidthimpl = Math.round(minWidth$foundation);
        }
        float maxWidth$foundation = resolvedStyleCurrentLayoutStyle.getMaxWidth$foundation();
        if (!Float.isNaN(maxWidth$foundation)) {
            iM8995getMaxWidthimpl = Math.round(maxWidth$foundation);
        }
        float minHeight$foundation = resolvedStyleCurrentLayoutStyle.getMinHeight$foundation();
        if (!Float.isNaN(minHeight$foundation)) {
            iM8996getMinHeightimpl = Math.round(minHeight$foundation);
        }
        float maxHeight$foundation = resolvedStyleCurrentLayoutStyle.getMaxHeight$foundation();
        if (!Float.isNaN(maxHeight$foundation)) {
            iRound3 = Math.round(maxHeight$foundation);
        }
        if (Float.isNaN(resolvedStyleCurrentLayoutStyle.getWidth$foundation())) {
            if (!Float.isNaN(resolvedStyleCurrentLayoutStyle.getWidthFraction$foundation()) && Constraints.m8991getHasBoundedWidthimpl(j)) {
                int iRound4 = Math.round(resolvedStyleCurrentLayoutStyle.getWidthFraction$foundation() * iM8995getMaxWidthimpl);
                if (iRound4 >= iM8997getMinWidthimpl) {
                    iM8997getMinWidthimpl = iRound4;
                }
                if (iM8997getMinWidthimpl > iM8995getMaxWidthimpl) {
                    iM8997getMinWidthimpl = iM8995getMaxWidthimpl;
                }
            } else if (!Float.isNaN(resolvedStyleCurrentLayoutStyle.getLeft$foundation()) && !Float.isNaN(resolvedStyleCurrentLayoutStyle.getRight$foundation())) {
                iM8997getMinWidthimpl = iM8995getMaxWidthimpl;
            }
            if (!Float.isNaN(resolvedStyleCurrentLayoutStyle.getHeight$foundation())) {
                if (Float.isNaN(resolvedStyleCurrentLayoutStyle.getHeightFraction$foundation()) && Constraints.m8990getHasBoundedHeightimpl(j)) {
                    int iRound5 = Math.round(resolvedStyleCurrentLayoutStyle.getHeightFraction$foundation() * iRound3);
                    if (iRound5 >= iM8996getMinHeightimpl) {
                        iM8996getMinHeightimpl = iRound5;
                    }
                    if (iM8996getMinHeightimpl > iRound3) {
                        iM8996getMinHeightimpl = iRound3;
                    }
                } else if (!Float.isNaN(resolvedStyleCurrentLayoutStyle.getTop$foundation()) && !Float.isNaN(resolvedStyleCurrentLayoutStyle.getBottom$foundation())) {
                    iM8996getMinHeightimpl = iRound3;
                }
                final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.Constraints(iM8997getMinWidthimpl, iM8995getMaxWidthimpl, iM8996getMinHeightimpl, iRound3));
                return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth() + iRound, placeableMo7702measureBRTryo0.getHeight() + iRound2, null, new nl3() { // from class: ib8
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return StyleOuterNode.measure_3p2s80s$lambda$0(this.b, j, placeableMo7702measureBRTryo0, f2, f, f4, f3, (Placeable.PlacementScope) obj);
                    }
                }, 4, null);
            }
            iM8996getMinHeightimpl = Math.round(resolvedStyleCurrentLayoutStyle.getHeight$foundation());
            iRound3 = iM8996getMinHeightimpl;
            final Placeable placeableMo7702measureBRTryo1 = measurable.mo7702measureBRTryo0(ConstraintsKt.Constraints(iM8997getMinWidthimpl, iM8995getMaxWidthimpl, iM8996getMinHeightimpl, iRound3));
            return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo1.getWidth() + iRound, placeableMo7702measureBRTryo1.getHeight() + iRound2, null, new nl3() { // from class: ib8
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return StyleOuterNode.measure_3p2s80s$lambda$0(this.b, j, placeableMo7702measureBRTryo1, f2, f, f4, f3, (Placeable.PlacementScope) obj);
                }
            }, 4, null);
        }
        iM8997getMinWidthimpl = Math.round(resolvedStyleCurrentLayoutStyle.getWidth$foundation());
        iM8995getMaxWidthimpl = iM8997getMinWidthimpl;
        if (!Float.isNaN(resolvedStyleCurrentLayoutStyle.getHeight$foundation())) {
            if (Float.isNaN(resolvedStyleCurrentLayoutStyle.getHeightFraction$foundation())) {
            }
            if (!Float.isNaN(resolvedStyleCurrentLayoutStyle.getTop$foundation())) {
                iM8996getMinHeightimpl = iRound3;
            }
            final Placeable placeableMo7702measureBRTryo2 = measurable.mo7702measureBRTryo0(ConstraintsKt.Constraints(iM8997getMinWidthimpl, iM8995getMaxWidthimpl, iM8996getMinHeightimpl, iRound3));
            return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo2.getWidth() + iRound, placeableMo7702measureBRTryo2.getHeight() + iRound2, null, new nl3() { // from class: ib8
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return StyleOuterNode.measure_3p2s80s$lambda$0(this.b, j, placeableMo7702measureBRTryo2, f2, f, f4, f3, (Placeable.PlacementScope) obj);
                }
            }, 4, null);
        }
        iM8996getMinHeightimpl = Math.round(resolvedStyleCurrentLayoutStyle.getHeight$foundation());
        iRound3 = iM8996getMinHeightimpl;
        final Placeable placeableMo7702measureBRTryo3 = measurable.mo7702measureBRTryo0(ConstraintsKt.Constraints(iM8997getMinWidthimpl, iM8995getMaxWidthimpl, iM8996getMinHeightimpl, iRound3));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo3.getWidth() + iRound, placeableMo7702measureBRTryo3.getHeight() + iRound2, null, new nl3() { // from class: ib8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return StyleOuterNode.measure_3p2s80s$lambda$0(this.b, j, placeableMo7702measureBRTryo3, f2, f, f4, f3, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        super.onDetach();
        GraphicsLayer graphicsLayer = this.borderLayer;
        if (graphicsLayer != null) {
            DelegatableNodeKt.requireGraphicsContext(this).releaseGraphicsLayer(graphicsLayer);
            this.borderLayer = null;
        }
        this.borderLayerProvider = null;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        resolveStyleAndInvalidate$default(this, false, 1, null);
    }

    public final void reconcileDropShadowCache(Object obj, Shape shape) {
        DropShadowPainter[] dropShadowPainterArr;
        Shadow[] shadowArr = this.lastDropShadow;
        DropShadowPainter[] dropShadowPainterArr2 = this.cachedDropShadowPainters;
        int length = obj instanceof Object[] ? ((Object[]) obj).length : 1;
        int i = 0;
        if (shadowArr == null || !aa4.e(this.lastShape, shape)) {
            Shadow[] shadowArr2 = new Shadow[length];
            for (int i2 = 0; i2 < length; i2++) {
                shadowArr2[i2] = null;
            }
            this.lastDropShadow = shadowArr2;
            DropShadowPainter[] dropShadowPainterArr3 = new DropShadowPainter[length];
            while (i < length) {
                dropShadowPainterArr3[i] = null;
                i++;
            }
            this.cachedDropShadowPainters = dropShadowPainterArr3;
            return;
        }
        if (shadowArr.length != length) {
            this.lastDropShadow = (Shadow[]) Arrays.copyOf(shadowArr, length);
            if (dropShadowPainterArr2 != null) {
                dropShadowPainterArr = (DropShadowPainter[]) Arrays.copyOf(dropShadowPainterArr2, length);
            } else {
                DropShadowPainter[] dropShadowPainterArr4 = new DropShadowPainter[length];
                while (i < length) {
                    dropShadowPainterArr4[i] = null;
                    i++;
                }
                dropShadowPainterArr = dropShadowPainterArr4;
            }
            this.cachedDropShadowPainters = dropShadowPainterArr;
        }
    }

    public final void reconcileInnerShadowCache(Object obj, Shape shape) {
        InnerShadowPainter[] innerShadowPainterArr;
        Shadow[] shadowArr = this.lastInnerShadow;
        InnerShadowPainter[] innerShadowPainterArr2 = this.cachedInnerShadowPainters;
        int length = obj instanceof Object[] ? ((Object[]) obj).length : 1;
        int i = 0;
        if (shadowArr == null || !aa4.e(this.lastShape, shape)) {
            Shadow[] shadowArr2 = new Shadow[length];
            for (int i2 = 0; i2 < length; i2++) {
                shadowArr2[i2] = null;
            }
            this.lastInnerShadow = shadowArr2;
            InnerShadowPainter[] innerShadowPainterArr3 = new InnerShadowPainter[length];
            while (i < length) {
                innerShadowPainterArr3[i] = null;
                i++;
            }
            this.cachedInnerShadowPainters = innerShadowPainterArr3;
            return;
        }
        if (shadowArr.length != length) {
            this.lastInnerShadow = (Shadow[]) Arrays.copyOf(shadowArr, length);
            if (innerShadowPainterArr2 != null) {
                innerShadowPainterArr = (InnerShadowPainter[]) Arrays.copyOf(innerShadowPainterArr2, length);
            } else {
                InnerShadowPainter[] innerShadowPainterArr4 = new InnerShadowPainter[length];
                while (i < length) {
                    innerShadowPainterArr4[i] = null;
                    i++;
                }
                innerShadowPainterArr = innerShadowPainterArr4;
            }
            this.cachedInnerShadowPainters = innerShadowPainterArr;
        }
    }

    public final ResolvedStyle resolveAnimatedStyleFor$foundation(int i, ResolvedStyle resolvedStyle) {
        StyleAnimations styleAnimations = this.animations;
        return (styleAnimations == null || !styleAnimations.isNotEmpty()) ? resolvedStyle : styleAnimations.withAnimations(DelegatableNodeKt.requireDensity(this), resolvedStyle, this, i);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x007d  */
    /* JADX WARN: Code duplicated, block: B:77:0x00fd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [T, androidx.collection.MutableObjectList<androidx.compose.foundation.style.StyleOuterNode>] */
    /* JADX WARN: Type inference failed for: r2v7, types: [T, androidx.collection.MutableObjectList, androidx.collection.MutableObjectList<androidx.compose.foundation.style.StyleOuterNode>] */
    public final ResolvedStyle resolveInheritedStyle$foundation(int i) {
        StyleOuterNode styleOuterNode;
        StyleOuterNode styleOuterNode2;
        StyleAnimations styleAnimations;
        r07 r07Var = new r07();
        r07Var.b = this.ancestorNodes;
        jh2 jh2Var = null;
        int size = 0;
        int i2 = 1;
        if ((this._resolved.flags & 96) != 0 || ((styleAnimations = this.animations) != null && styleAnimations.isNotEmpty())) {
            MutableObjectList mutableObjectList = (MutableObjectList) r07Var.b;
            MutableObjectList mutableObjectList2 = mutableObjectList;
            if (mutableObjectList == null) {
                ?? mutableObjectList3 = new MutableObjectList(size, i2, jh2Var);
                r07Var.b = mutableObjectList3;
                this.ancestorNodes = mutableObjectList3;
                mutableObjectList2 = mutableObjectList3;
            }
            mutableObjectList2.add(this);
        }
        TraversableNodeKt.traverseAncestors(this, StyleModifierKt.OuterNodeKey, new n27(i2, r07Var, this));
        ResolvedStyle cachedInheritedStyle$foundation = getCachedInheritedStyle$foundation();
        int size2 = cachedInheritedStyle$foundation != null ? -1 : -2;
        StyleAnimations styleAnimations2 = this.animations;
        boolean zIsNotEmpty = styleAnimations2 != null ? styleAnimations2.isNotEmpty() : false;
        int i3 = this._resolved.flags & 96;
        MutableObjectList mutableObjectList4 = (MutableObjectList) r07Var.b;
        if (mutableObjectList4 != null) {
            Object[] objArr = mutableObjectList4.content;
            int i4 = mutableObjectList4._size;
            for (int i5 = 0; i5 < i4; i5++) {
                StyleOuterNode styleOuterNode3 = (StyleOuterNode) objArr[i5];
                ResolvedStyle cachedInheritedStyle$foundation2 = styleOuterNode3.getCachedInheritedStyle$foundation();
                if (zIsNotEmpty) {
                    zIsNotEmpty = true;
                } else {
                    StyleAnimations styleAnimations3 = styleOuterNode3.animations;
                    if (styleAnimations3 != null ? styleAnimations3.isNotEmpty() : false) {
                        zIsNotEmpty = true;
                    } else {
                        zIsNotEmpty = false;
                    }
                }
                i3 |= styleOuterNode3._resolved.flags & 96;
                if (cachedInheritedStyle$foundation2 == null) {
                    cachedInheritedStyle$foundation = null;
                    size2 = -2;
                } else if (cachedInheritedStyle$foundation == null) {
                    size2 = i5;
                    cachedInheritedStyle$foundation = cachedInheritedStyle$foundation2;
                }
            }
        }
        if (i3 == 0) {
            return null;
        }
        if (cachedInheritedStyle$foundation != null && size2 < 0 && !zIsNotEmpty) {
            return cachedInheritedStyle$foundation;
        }
        T t = r07Var.b;
        if (t != 0 && size2 < -1) {
            size2 = ((MutableObjectList) t).getSize() - 1;
        }
        while (-2 < size2) {
            if (size2 < 0) {
                styleOuterNode2 = this;
            } else {
                MutableObjectList mutableObjectList5 = (MutableObjectList) r07Var.b;
                if (mutableObjectList5 != null) {
                    styleOuterNode2 = (StyleOuterNode) mutableObjectList5.get(size2);
                }
                size2--;
            }
            ResolvedStyle resolvedStyle = styleOuterNode2.cachedInheritedStyle;
            if (resolvedStyle == null) {
                resolvedStyle = new ResolvedStyle();
            }
            if (cachedInheritedStyle$foundation != null) {
                cachedInheritedStyle$foundation.copyInheritedStylesInto$foundation(resolvedStyle);
            }
            resolvedStyle.applyInheritableStyles$foundation(styleOuterNode2._resolved);
            styleOuterNode2.saveInheritedStyles$foundation(resolvedStyle);
            cachedInheritedStyle$foundation = resolvedStyle;
            size2--;
        }
        if (!zIsNotEmpty) {
            return cachedInheritedStyle$foundation;
        }
        ResolvedStyle resolvedStyle2 = new ResolvedStyle();
        if (cachedInheritedStyle$foundation != null) {
            cachedInheritedStyle$foundation.copyInheritedStylesInto$foundation(resolvedStyle2);
        }
        MutableObjectList mutableObjectList6 = (MutableObjectList) r07Var.b;
        size = mutableObjectList6 != null ? mutableObjectList6.getSize() : 0;
        Density densityRequireDensity = DelegatableNodeKt.requireDensity(this);
        for (int i6 = size - 1; -2 < i6; i6--) {
            if (i6 < 0) {
                styleOuterNode = this;
            } else {
                MutableObjectList mutableObjectList7 = (MutableObjectList) r07Var.b;
                if (mutableObjectList7 != null) {
                    styleOuterNode = (StyleOuterNode) mutableObjectList7.get(i6);
                }
            }
            StyleAnimations styleAnimations4 = styleOuterNode.animations;
            if (styleAnimations4 != null) {
                styleAnimations4.applyAnimationsTo(resolvedStyle2, densityRequireDensity, styleOuterNode, i);
            }
        }
        return resolvedStyle2;
    }

    public final void resolveStyleAndInvalidate(final boolean z) {
        if (isAttached()) {
            final ResolvedStyle resolvedStyle = z ? null : this._resolved;
            final ResolvedStyle bufferNonNull = z ? this._resolved : getBufferNonNull();
            final Density densityRequireDensity = DelegatableNodeKt.requireDensity(this);
            bufferNonNull.clear$foundation();
            StyleAnimations styleAnimations = this.animations;
            if (styleAnimations != null) {
                styleAnimations.preResolve();
            }
            final p07 p07Var = new p07();
            ObserverModifierNodeKt.observeReads(this, new ll3() { // from class: jb8
                @Override // defpackage.ll3
                public final Object invoke() {
                    return StyleOuterNode.resolveStyleAndInvalidate$lambda$0(bufferNonNull, this, densityRequireDensity, resolvedStyle, p07Var, z);
                }
            });
            int iDiff$foundation$default = p07Var.b | (resolvedStyle != null ? ResolvedStyle.diff$foundation$default(resolvedStyle, bufferNonNull, 0, 2, null) : bufferNonNull.flags);
            if (!aa4.e(this._state.getInteractionSource$foundation(), this.currentInteractionSource)) {
                updateInteractionSources();
            }
            if (z) {
                return;
            }
            if ((iDiff$foundation$default & 1) != 0) {
                LayoutModifierNodeKt.invalidateMeasurement(getInnerNode$foundation());
            }
            if ((iDiff$foundation$default & 8) != 0) {
                LayoutModifierNodeKt.invalidateMeasurement(this);
            }
            if ((iDiff$foundation$default & 2) != 0) {
                LayoutModifierNodeKt.invalidateLayer(getInnerNode$foundation());
            }
            if ((iDiff$foundation$default & 4) != 0) {
                LayoutModifierNodeKt.updateLayerBlock(this, getLayerBlockNonNull$foundation());
            }
            if ((iDiff$foundation$default & 32) != 0) {
                invalidateTextLayout();
            }
            if ((iDiff$foundation$default & 64) != 0) {
                invalidateTextDraw();
            }
        }
    }

    public final void saveInheritedStyles$foundation(ResolvedStyle resolvedStyle) {
        this.inheritedStyleDirty = false;
        this.cachedInheritedStyle = resolvedStyle;
    }

    public final void setAncestorNodes$foundation(MutableObjectList<StyleOuterNode> mutableObjectList) {
        this.ancestorNodes = mutableObjectList;
    }

    public final void setAnimations$foundation(StyleAnimations styleAnimations) {
        this.animations = styleAnimations;
    }

    public final void setInnerNode$foundation(StyleInnerNode styleInnerNode) {
        this.innerNodeField = styleInnerNode;
    }

    public final void setInnerNodeField$foundation(StyleInnerNode styleInnerNode) {
        this.innerNodeField = styleInnerNode;
    }

    public final void setLayerBlock$foundation(nl3<? super GraphicsLayerScope, j59> nl3Var) {
        this.layerBlock = nl3Var;
    }

    public final void setSourceJob(mb4 mb4Var) {
        this.sourceJob = mb4Var;
    }

    public final void setState$foundation(StyleState styleState) {
        if (aa4.e(this._state, styleState)) {
            return;
        }
        this._state = styleState;
        resolveStyleAndInvalidate$default(this, false, 1, null);
        LayoutModifierNodeKt.invalidateLayer(getInnerNode$foundation());
    }

    public final void setStyle$foundation(Style style) {
        this.style = style;
        resolveStyleAndInvalidate$default(this, false, 1, null);
    }

    public final void updateInteractionSources() {
        mb4 mb4Var = this.sourceJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        InteractionSource interactionSource$foundation = this._state.getInteractionSource$foundation();
        this.currentInteractionSource = interactionSource$foundation;
        if (interactionSource$foundation != null) {
            this.sourceJob = av0.c(getCoroutineScope(), null, null, new AnonymousClass1(interactionSource$foundation, null), 3);
        }
    }

    public final void drawDropShadow(ContentDrawScope contentDrawScope, ResolvedStyle resolvedStyle) {
        Object dropShadow$foundation = resolvedStyle.getDropShadow$foundation();
        if (dropShadow$foundation == null) {
            return;
        }
        Shape shape$foundation = resolvedStyle.getShape$foundation();
        reconcileDropShadowCache(dropShadow$foundation, shape$foundation);
        if (dropShadow$foundation instanceof Object[]) {
            Object[] objArr = (Object[]) dropShadow$foundation;
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                if (obj instanceof Shadow) {
                    drawDropShadow(contentDrawScope, i, shape$foundation, (Shadow) obj);
                }
            }
            return;
        }
        if (dropShadow$foundation instanceof Shadow) {
            drawDropShadow(contentDrawScope, 0, shape$foundation, (Shadow) dropShadow$foundation);
        }
    }

    public final void drawInnerShadow(ContentDrawScope contentDrawScope, ResolvedStyle resolvedStyle) {
        Object innerShadow$foundation = resolvedStyle.getInnerShadow$foundation();
        if (innerShadow$foundation == null) {
            return;
        }
        Shape shape$foundation = resolvedStyle.getShape$foundation();
        reconcileInnerShadowCache(innerShadow$foundation, shape$foundation);
        if (innerShadow$foundation instanceof Object[]) {
            Object[] objArr = (Object[]) innerShadow$foundation;
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                if (obj instanceof Shadow) {
                    drawInnerShadow(contentDrawScope, i, shape$foundation, (Shadow) obj);
                }
            }
            return;
        }
        if (innerShadow$foundation instanceof Shadow) {
            drawInnerShadow(contentDrawScope, 0, shape$foundation, (Shadow) innerShadow$foundation);
        }
    }
}
