package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.shadow.DropShadowPainter;
import androidx.compose.ui.graphics.shadow.Shadow;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class BlockDropShadowNode extends Modifier.Node implements DrawModifierNode, ObserverModifierNode, DropShadowScope {
    public static final int $stable = 0;
    private nl3<? super DropShadowScope, j59> block;
    private boolean blockRead;
    private Brush brush;
    private Density densityObject;
    private float radius;
    private DropShadowPainter shadowPainter;
    private Shape shape;
    private float spread;
    private Shadow targetShadow;
    private long offset = Offset.Companion.m6003getZeroF1C5BW0();
    private long color = Color.Companion.m6258getBlack0d7_KjU();
    private float alpha = 1.0f;
    private int blendMode = BlendMode.Companion.m6172getSrcOver0nO6VwU();

    public BlockDropShadowNode(Shape shape, nl3<? super DropShadowScope, j59> nl3Var) {
        this.shape = shape;
        this.block = nl3Var;
    }

    private final void invalidateShadow() {
        this.targetShadow = null;
        this.shadowPainter = null;
        DrawModifierNodeKt.invalidateDraw(this);
    }

    private final DropShadowPainter obtainPainter() {
        if (!this.blockRead) {
            this.blockRead = true;
            ShadowKt.resetShadow(this);
            ObserverModifierNodeKt.observeReads(this, new AnonymousClass1());
        }
        Shadow shadow = this.targetShadow;
        DropShadowPainter dropShadowPainter = this.shadowPainter;
        Brush brush = getBrush();
        float fMo1430toDpu2uoSUM = mo1430toDpu2uoSUM(getRadius());
        float fMo1430toDpu2uoSUM2 = mo1430toDpu2uoSUM(getSpread());
        float fMo1430toDpu2uoSUM3 = mo1430toDpu2uoSUM(Float.intBitsToFloat((int) (mo5748getOffsetF1C5BW0() >> 32)));
        long jM9098constructorimpl = DpOffset.m9098constructorimpl((((long) Float.floatToRawIntBits(mo1430toDpu2uoSUM(Float.intBitsToFloat((int) (mo5748getOffsetF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fMo1430toDpu2uoSUM3)) << 32));
        if (dropShadowPainter != null && shadow != null && Dp.m9047equalsimpl0(shadow.m6952getRadiusD9Ej5fM(), fMo1430toDpu2uoSUM) && Dp.m9047equalsimpl0(shadow.m6953getSpreadD9Ej5fM(), fMo1430toDpu2uoSUM2) && Color.m6233equalsimpl0(shadow.m6950getColor0d7_KjU(), mo5747getColor0d7_KjU()) && aa4.e(shadow.getBrush(), brush) && shadow.getAlpha() == getAlpha() && BlendMode.m6141equalsimpl0(shadow.m6949getBlendMode0nO6VwU(), mo5746getBlendMode0nO6VwU()) && DpOffset.m9102equalsimpl0(shadow.m6951getOffsetRKDOV3M(), jM9098constructorimpl)) {
            return dropShadowPainter;
        }
        Shadow shadow2 = brush != null ? new Shadow(fMo1430toDpu2uoSUM, brush, fMo1430toDpu2uoSUM2, jM9098constructorimpl, getAlpha(), mo5746getBlendMode0nO6VwU(), (jh2) null) : new Shadow(fMo1430toDpu2uoSUM, mo5747getColor0d7_KjU(), fMo1430toDpu2uoSUM2, jM9098constructorimpl, getAlpha(), mo5746getBlendMode0nO6VwU(), (jh2) null);
        this.targetShadow = shadow2;
        DropShadowPainter dropShadowPainterCreateDropShadowPainter = DelegatableNodeKt.requireGraphicsContext(this).getShadowContext().createDropShadowPainter(this.shape, shadow2);
        this.shadowPainter = dropShadowPainterCreateDropShadowPainter;
        return dropShadowPainterCreateDropShadowPainter;
    }

    private final void setBlock(nl3<? super DropShadowScope, j59> nl3Var) {
        if (this.block != nl3Var) {
            this.block = nl3Var;
            this.blockRead = false;
            DrawModifierNodeKt.invalidateDraw(this);
        }
    }

    private final void setShape(Shape shape) {
        if (aa4.e(this.shape, shape)) {
            return;
        }
        this.shape = shape;
        invalidateShadow();
    }

    private final void updateDensity() {
        Density densityRequireDensity = DelegatableNodeKt.requireDensity(this);
        if (aa4.e(this.densityObject, densityRequireDensity)) {
            return;
        }
        this.densityObject = densityRequireDensity;
        this.blockRead = false;
        invalidateShadow();
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        Painter.m6931drawx_KDEd0$default(obtainPainter(), contentDrawScope, contentDrawScope.mo6806getSizeNHjbRc(), 0.0f, null, 6, null);
        contentDrawScope.drawContent();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof BlockDropShadowNode)) {
            BlockDropShadowNode blockDropShadowNode = (BlockDropShadowNode) obj;
            return getAlpha() == blockDropShadowNode.getAlpha() && aa4.e(this.shape, blockDropShadowNode.shape) && this.block == blockDropShadowNode.block && getRadius() == blockDropShadowNode.getRadius() && getSpread() == blockDropShadowNode.getSpread() && Offset.m5984equalsimpl0(mo5748getOffsetF1C5BW0(), blockDropShadowNode.mo5748getOffsetF1C5BW0()) && Color.m6233equalsimpl0(mo5747getColor0d7_KjU(), blockDropShadowNode.mo5747getColor0d7_KjU()) && aa4.e(getBrush(), blockDropShadowNode.getBrush()) && BlendMode.m6141equalsimpl0(mo5746getBlendMode0nO6VwU(), blockDropShadowNode.mo5746getBlendMode0nO6VwU());
        }
        return false;
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    public float getAlpha() {
        return this.alpha;
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    /* JADX INFO: renamed from: getBlendMode-0nO6VwU, reason: not valid java name */
    public int mo5746getBlendMode0nO6VwU() {
        return this.blendMode;
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    public Brush getBrush() {
        return this.brush;
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    /* JADX INFO: renamed from: getColor-0d7_KjU, reason: not valid java name */
    public long mo5747getColor0d7_KjU() {
        return this.color;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        Density density = this.densityObject;
        if (density != null) {
            return density.getDensity();
        }
        return 1.0f;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        Density density = this.densityObject;
        if (density != null) {
            return density.getFontScale();
        }
        return 1.0f;
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    /* JADX INFO: renamed from: getOffset-F1C5BW0, reason: not valid java name */
    public long mo5748getOffsetF1C5BW0() {
        return this.offset;
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    public float getRadius() {
        return this.radius;
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    public float getSpread() {
        return this.spread;
    }

    public int hashCode() {
        int iM6239hashCodeimpl = (Color.m6239hashCodeimpl(mo5747getColor0d7_KjU()) + ((Offset.m5989hashCodeimpl(mo5748getOffsetF1C5BW0()) + ((Float.hashCode(getSpread()) + ((Float.hashCode(getRadius()) + ((this.block.hashCode() + ((this.shape.hashCode() + (Float.hashCode(getAlpha()) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        Brush brush = getBrush();
        return BlendMode.m6142hashCodeimpl(mo5746getBlendMode0nO6VwU()) + ((iM6239hashCodeimpl + (brush != null ? brush.hashCode() : 0)) * 31);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        updateDensity();
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public void onDensityChange() {
        if (isAttached()) {
            updateDensity();
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        this.blockRead = false;
        invalidateShadow();
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    public void setAlpha(float f) {
        if (this.alpha == f) {
            return;
        }
        this.alpha = f;
        invalidateShadow();
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    /* JADX INFO: renamed from: setBlendMode-s9anfk8, reason: not valid java name */
    public void mo5749setBlendModes9anfk8(int i) {
        if (BlendMode.m6141equalsimpl0(this.blendMode, i)) {
            return;
        }
        this.blendMode = i;
        invalidateShadow();
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    public void setBrush(Brush brush) {
        if (aa4.e(this.brush, brush)) {
            return;
        }
        this.brush = brush;
        invalidateShadow();
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    /* JADX INFO: renamed from: setColor-8_81llA, reason: not valid java name */
    public void mo5750setColor8_81llA(long j) {
        if (j == 16) {
            j = Color.Companion.m6258getBlack0d7_KjU();
        }
        if (Color.m6233equalsimpl0(this.color, j)) {
            return;
        }
        this.color = j;
        invalidateShadow();
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    /* JADX INFO: renamed from: setOffset-k-4lQ0M, reason: not valid java name */
    public void mo5751setOffsetk4lQ0M(long j) {
        if (Offset.m5984equalsimpl0(this.offset, j)) {
            return;
        }
        this.offset = j;
        DrawModifierNodeKt.invalidateDraw(this);
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    public void setRadius(float f) {
        if (this.radius == f) {
            return;
        }
        this.radius = f;
        invalidateShadow();
    }

    @Override // androidx.compose.ui.draw.ShadowScope
    public void setSpread(float f) {
        if (this.spread == f) {
            return;
        }
        this.spread = f;
        invalidateShadow();
    }

    public final void update(Shape shape, nl3<? super DropShadowScope, j59> nl3Var) {
        setShape(shape);
        setBlock(nl3Var);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.draw.BlockDropShadowNode$obtainPainter$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<j59> {
        public AnonymousClass1() {
            super(0);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            BlockDropShadowNode.this.block.invoke(BlockDropShadowNode.this);
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }
}
