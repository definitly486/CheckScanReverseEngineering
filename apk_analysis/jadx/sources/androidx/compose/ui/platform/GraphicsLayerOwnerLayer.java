package androidx.compose.ui.platform;

import android.os.Build;
import androidx.compose.ui.FrameRateCategory;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.Fields;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.MatrixKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.layer.GraphicsLayerKt;
import androidx.compose.ui.layout.GraphicLayerInfo;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ag;
import defpackage.ah;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class GraphicsLayerOwnerLayer implements OwnedLayer, GraphicLayerInfo {
    public static final int $stable = 8;
    private final GraphicsContext context;
    private bm3<? super Canvas, ? super GraphicsLayer, j59> drawBlock;
    private boolean drawnWithEnabledZ;
    private float frameRate;
    private GraphicsLayer graphicsLayer;
    private ll3<j59> invalidateParentLayer;
    private float[] inverseMatrixCache;
    private boolean isDestroyed;
    private boolean isDirty;
    private boolean isFrameRateFromParent;
    private boolean isInverseMatrixDirty;
    private boolean isMatrixDirty;
    private int mutatedFields;
    private Outline outline;
    private final AndroidComposeView ownerView;
    private long size = IntSize.m9208constructorimpl(9223372034707292159L);
    private final float[] matrixCache = Matrix.m6476constructorimpl$default(null, 1, null);
    private Density density = DensityKt.Density$default(1.0f, 0.0f, 2, null);
    private LayoutDirection layoutDirection = LayoutDirection.Ltr;
    private final CanvasDrawScope scope = new CanvasDrawScope();
    private long transformOrigin = TransformOrigin.Companion.m6645getCenterSzJe1aQ();
    private boolean isIdentity = true;
    private final nl3<DrawScope, j59> recordLambda = new GraphicsLayerOwnerLayer$recordLambda$1(this);

    public GraphicsLayerOwnerLayer(GraphicsLayer graphicsLayer, GraphicsContext graphicsContext, AndroidComposeView androidComposeView, bm3<? super Canvas, ? super GraphicsLayer, j59> bm3Var, ll3<j59> ll3Var) {
        this.graphicsLayer = graphicsLayer;
        this.context = graphicsContext;
        this.ownerView = androidComposeView;
        this.drawBlock = bm3Var;
        this.invalidateParentLayer = ll3Var;
    }

    /* JADX INFO: renamed from: getInverseMatrix-3i98HWw, reason: not valid java name */
    private final float[] m8197getInverseMatrix3i98HWw() {
        float[] fArrM6476constructorimpl$default = this.inverseMatrixCache;
        if (fArrM6476constructorimpl$default == null) {
            fArrM6476constructorimpl$default = Matrix.m6476constructorimpl$default(null, 1, null);
            this.inverseMatrixCache = fArrM6476constructorimpl$default;
        }
        if (!this.isInverseMatrixDirty) {
            if (Float.isNaN(fArrM6476constructorimpl$default[0])) {
                return null;
            }
            return fArrM6476constructorimpl$default;
        }
        this.isInverseMatrixDirty = false;
        float[] fArrM8198getMatrixsQKQjiQ = m8198getMatrixsQKQjiQ();
        if (this.isIdentity) {
            return fArrM8198getMatrixsQKQjiQ;
        }
        if (InvertMatrixKt.m8201invertToJiSxe2E(fArrM8198getMatrixsQKQjiQ, fArrM6476constructorimpl$default)) {
            return fArrM6476constructorimpl$default;
        }
        fArrM6476constructorimpl$default[0] = Float.NaN;
        return null;
    }

    /* JADX INFO: renamed from: getMatrix-sQKQjiQ, reason: not valid java name */
    private final float[] m8198getMatrixsQKQjiQ() {
        updateMatrix();
        return this.matrixCache;
    }

    private final void setDirty(boolean z) {
        if (z != this.isDirty) {
            this.isDirty = z;
            this.ownerView.notifyLayerIsDirty$ui(this, z);
        }
    }

    private final void triggerRepaint() {
        WrapperRenderNodeLayerHelperMethods.INSTANCE.onDescendantInvalidated(this.ownerView);
    }

    private final void updateMatrix() {
        if (this.isMatrixDirty) {
            GraphicsLayer graphicsLayer = this.graphicsLayer;
            long jM6066getCenteruvyYCjk = (graphicsLayer.m6896getPivotOffsetF1C5BW0() & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats ? SizeKt.m6066getCenteruvyYCjk(IntSizeKt.m9225toSizeozmzZPI(this.size)) : graphicsLayer.m6896getPivotOffsetF1C5BW0();
            Matrix.m6487resetToPivotedTransformimpl$default(this.matrixCache, Float.intBitsToFloat((int) (jM6066getCenteruvyYCjk >> 32)), Float.intBitsToFloat((int) (jM6066getCenteruvyYCjk & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), graphicsLayer.getTranslationX(), graphicsLayer.getTranslationY(), 0.0f, graphicsLayer.getRotationX(), graphicsLayer.getRotationY(), graphicsLayer.getRotationZ(), graphicsLayer.getScaleX(), graphicsLayer.getScaleY(), 0.0f, 1040, null);
            this.isMatrixDirty = false;
            this.isIdentity = MatrixKt.m6501isIdentity58bKbWc(this.matrixCache);
        }
    }

    private final void updateOutline() {
        ll3<j59> ll3Var;
        Outline outline = this.outline;
        if (outline == null) {
            return;
        }
        GraphicsLayerKt.setOutline(this.graphicsLayer, outline);
        if (Build.VERSION.SDK_INT < 33) {
            if (((outline instanceof Outline.Generic) || ((outline instanceof Outline.Rounded) && !RoundRectKt.isSimple(((Outline.Rounded) outline).getRoundRect()))) && (ll3Var = this.invalidateParentLayer) != null) {
                ll3Var.invoke();
            }
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void destroy() {
        setFrameRate(0.0f);
        setFrameRateFromParent(false);
        this.drawBlock = null;
        this.invalidateParentLayer = null;
        this.isDestroyed = true;
        setDirty(false);
        GraphicsContext graphicsContext = this.context;
        if (graphicsContext != null) {
            graphicsContext.releaseGraphicsLayer(this.graphicsLayer);
            this.ownerView.recycle$ui(this);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void drawLayer(Canvas canvas, GraphicsLayer graphicsLayer) {
        updateDisplayList();
        this.drawnWithEnabledZ = this.graphicsLayer.getShadowElevation() > 0.0f;
        DrawContext drawContext = this.scope.getDrawContext();
        drawContext.setCanvas(canvas);
        drawContext.setGraphicsLayer(graphicsLayer);
        GraphicsLayerKt.drawLayer(this.scope, this.graphicsLayer);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public float getFrameRate() {
        return this.frameRate;
    }

    @Override // androidx.compose.ui.layout.GraphicLayerInfo
    public long getLayerId() {
        return this.graphicsLayer.getLayerId();
    }

    @Override // androidx.compose.ui.layout.GraphicLayerInfo
    public long getOwnerViewId() {
        return this.graphicsLayer.getOwnerViewId();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* JADX INFO: renamed from: getUnderlyingMatrix-sQKQjiQ */
    public float[] mo8076getUnderlyingMatrixsQKQjiQ() {
        return m8198getMatrixsQKQjiQ();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void invalidate() {
        if (this.isDirty || this.isDestroyed) {
            return;
        }
        this.ownerView.invalidate();
        setDirty(true);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* JADX INFO: renamed from: inverseTransform-58bKbWc */
    public void mo8077inverseTransform58bKbWc(float[] fArr) {
        float[] fArrM8197getInverseMatrix3i98HWw = m8197getInverseMatrix3i98HWw();
        if (fArrM8197getInverseMatrix3i98HWw != null) {
            Matrix.m6495timesAssign58bKbWc(fArr, fArrM8197getInverseMatrix3i98HWw);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public boolean isFrameRateFromParent() {
        return this.isFrameRateFromParent;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* JADX INFO: renamed from: isInLayer-k-4lQ0M */
    public boolean mo8078isInLayerk4lQ0M(long j) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        if (this.graphicsLayer.getClip()) {
            return ShapeContainingUtilKt.isInOutline$default(this.graphicsLayer.getOutline(), fIntBitsToFloat, fIntBitsToFloat2, null, null, 24, null);
        }
        return true;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void mapBounds(MutableRect mutableRect, boolean z) {
        float[] fArrM8197getInverseMatrix3i98HWw = z ? m8197getInverseMatrix3i98HWw() : m8198getMatrixsQKQjiQ();
        if (this.isIdentity) {
            return;
        }
        if (fArrM8197getInverseMatrix3i98HWw == null) {
            mutableRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            Matrix.m6484mapimpl(fArrM8197getInverseMatrix3i98HWw, mutableRect);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* JADX INFO: renamed from: mapOffset-8S9VItk */
    public long mo8079mapOffset8S9VItk(long j, boolean z) {
        float[] fArrM8198getMatrixsQKQjiQ;
        if (z) {
            fArrM8198getMatrixsQKQjiQ = m8197getInverseMatrix3i98HWw();
            if (fArrM8198getMatrixsQKQjiQ == null) {
                return Offset.Companion.m6001getInfiniteF1C5BW0();
            }
        } else {
            fArrM8198getMatrixsQKQjiQ = m8198getMatrixsQKQjiQ();
        }
        return this.isIdentity ? j : Matrix.m6482mapMKHz9U(fArrM8198getMatrixsQKQjiQ, j);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* JADX INFO: renamed from: move--gyyYBs */
    public void mo8080movegyyYBs(long j) {
        if (this.ownerView.isArrEnabled$ui()) {
            this.ownerView.voteFrameRate(FrameRateCategory.Companion.m5664getHighNSsRyOo());
        }
        this.graphicsLayer.m6908setTopLeftgyyYBs(j);
        triggerRepaint();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* JADX INFO: renamed from: resize-ozmzZPI */
    public void mo8081resizeozmzZPI(long j) {
        if (IntSize.m9211equalsimpl0(j, this.size)) {
            return;
        }
        if (this.ownerView.isArrEnabled$ui()) {
            this.ownerView.voteFrameRate(FrameRateCategory.Companion.m5664getHighNSsRyOo());
        }
        this.size = j;
        invalidate();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void reuseLayer(bm3<? super Canvas, ? super GraphicsLayer, j59> bm3Var, ll3<j59> ll3Var) {
        GraphicsContext graphicsContext = this.context;
        if (graphicsContext == null) {
            throw ag.e("currently reuse is only supported when we manage the layer lifecycle");
        }
        if (!this.graphicsLayer.isReleased()) {
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalArgumentException("layer should have been released before reuse");
        }
        this.graphicsLayer = graphicsContext.createGraphicsLayer();
        this.isDestroyed = false;
        this.drawBlock = bm3Var;
        this.invalidateParentLayer = ll3Var;
        this.isMatrixDirty = false;
        this.isInverseMatrixDirty = false;
        this.isIdentity = true;
        Matrix.m6485resetimpl(this.matrixCache);
        float[] fArr = this.inverseMatrixCache;
        if (fArr != null) {
            Matrix.m6485resetimpl(fArr);
        }
        this.transformOrigin = TransformOrigin.Companion.m6645getCenterSzJe1aQ();
        this.drawnWithEnabledZ = false;
        this.size = IntSize.m9208constructorimpl(9223372034707292159L);
        this.outline = null;
        this.mutatedFields = 0;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void setFrameRate(float f) {
        this.frameRate = f;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void setFrameRateFromParent(boolean z) {
        this.isFrameRateFromParent = z;
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* JADX INFO: renamed from: transform-58bKbWc */
    public void mo8082transform58bKbWc(float[] fArr) {
        Matrix.m6495timesAssign58bKbWc(fArr, m8198getMatrixsQKQjiQ());
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void updateDisplayList() {
        if (this.ownerView.isArrEnabled$ui() && getFrameRate() != 0.0f) {
            this.ownerView.voteFrameRate(getFrameRate());
        }
        if (this.isDirty) {
            if (!TransformOrigin.m6639equalsimpl0(this.transformOrigin, TransformOrigin.Companion.m6645getCenterSzJe1aQ()) && !IntSize.m9211equalsimpl0(this.graphicsLayer.m6897getSizeYbymL2g(), this.size)) {
                GraphicsLayer graphicsLayer = this.graphicsLayer;
                float fM6640getPivotFractionXimpl = TransformOrigin.m6640getPivotFractionXimpl(this.transformOrigin) * ((int) (this.size >> 32));
                graphicsLayer.m6904setPivotOffsetk4lQ0M(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(TransformOrigin.m6641getPivotFractionYimpl(this.transformOrigin) * ((int) (this.size & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fM6640getPivotFractionXimpl) << 32)));
            }
            this.graphicsLayer.m6900recordmLhObY(this.density, this.layoutDirection, this.size, this.recordLambda);
            setDirty(false);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void updateLayerProperties(ReusableGraphicsLayerScope reusableGraphicsLayerScope) {
        int iM6887getModulateAlphake2Ky5w;
        ll3<j59> ll3Var;
        int mutatedFields$ui = reusableGraphicsLayerScope.getMutatedFields$ui() | this.mutatedFields;
        this.layoutDirection = reusableGraphicsLayerScope.getLayoutDirection$ui();
        this.density = reusableGraphicsLayerScope.getGraphicsDensity$ui();
        int i = mutatedFields$ui & 4096;
        if (i != 0) {
            this.transformOrigin = reusableGraphicsLayerScope.mo6428getTransformOriginSzJe1aQ();
        }
        if ((mutatedFields$ui & 1) != 0) {
            this.graphicsLayer.setScaleX(reusableGraphicsLayerScope.getScaleX());
        }
        if ((mutatedFields$ui & 2) != 0) {
            this.graphicsLayer.setScaleY(reusableGraphicsLayerScope.getScaleY());
        }
        if ((mutatedFields$ui & 4) != 0) {
            this.graphicsLayer.setAlpha(reusableGraphicsLayerScope.getAlpha());
        }
        if ((mutatedFields$ui & 8) != 0) {
            this.graphicsLayer.setTranslationX(reusableGraphicsLayerScope.getTranslationX());
        }
        if ((mutatedFields$ui & 16) != 0) {
            this.graphicsLayer.setTranslationY(reusableGraphicsLayerScope.getTranslationY());
        }
        if ((mutatedFields$ui & 32) != 0) {
            this.graphicsLayer.setShadowElevation(reusableGraphicsLayerScope.getShadowElevation());
            if (reusableGraphicsLayerScope.getShadowElevation() > 0.0f && !this.drawnWithEnabledZ && (ll3Var = this.invalidateParentLayer) != null) {
                ll3Var.invoke();
            }
        }
        if ((mutatedFields$ui & 64) != 0) {
            this.graphicsLayer.m6901setAmbientShadowColor8_81llA(reusableGraphicsLayerScope.mo6423getAmbientShadowColor0d7_KjU());
        }
        if ((mutatedFields$ui & 128) != 0) {
            this.graphicsLayer.m6907setSpotShadowColor8_81llA(reusableGraphicsLayerScope.mo6427getSpotShadowColor0d7_KjU());
        }
        if ((mutatedFields$ui & 1024) != 0) {
            this.graphicsLayer.setRotationZ(reusableGraphicsLayerScope.getRotationZ());
        }
        if ((mutatedFields$ui & 256) != 0) {
            this.graphicsLayer.setRotationX(reusableGraphicsLayerScope.getRotationX());
        }
        if ((mutatedFields$ui & 512) != 0) {
            this.graphicsLayer.setRotationY(reusableGraphicsLayerScope.getRotationY());
        }
        if ((mutatedFields$ui & 2048) != 0) {
            this.graphicsLayer.setCameraDistance(reusableGraphicsLayerScope.getCameraDistance());
        }
        if (i != 0) {
            boolean zM6639equalsimpl0 = TransformOrigin.m6639equalsimpl0(this.transformOrigin, TransformOrigin.Companion.m6645getCenterSzJe1aQ());
            GraphicsLayer graphicsLayer = this.graphicsLayer;
            if (zM6639equalsimpl0) {
                graphicsLayer.m6904setPivotOffsetk4lQ0M(Offset.Companion.m6002getUnspecifiedF1C5BW0());
            } else {
                graphicsLayer.m6904setPivotOffsetk4lQ0M(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(TransformOrigin.m6641getPivotFractionYimpl(this.transformOrigin) * ((int) (this.size & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(TransformOrigin.m6640getPivotFractionXimpl(this.transformOrigin) * ((int) (this.size >> 32)))) << 32)));
            }
        }
        if ((mutatedFields$ui & 16384) != 0) {
            this.graphicsLayer.setClip(reusableGraphicsLayerScope.getClip());
        }
        if ((131072 & mutatedFields$ui) != 0) {
            this.graphicsLayer.setRenderEffect(reusableGraphicsLayerScope.getRenderEffect());
        }
        if ((262144 & mutatedFields$ui) != 0) {
            this.graphicsLayer.setColorFilter(reusableGraphicsLayerScope.getColorFilter());
        }
        if ((524288 & mutatedFields$ui) != 0) {
            this.graphicsLayer.m6902setBlendModes9anfk8(reusableGraphicsLayerScope.mo6424getBlendMode0nO6VwU());
        }
        if ((32768 & mutatedFields$ui) != 0) {
            GraphicsLayer graphicsLayer2 = this.graphicsLayer;
            int iMo6425getCompositingStrategyNrFUSI = reusableGraphicsLayerScope.mo6425getCompositingStrategyNrFUSI();
            CompositingStrategy.Companion companion = CompositingStrategy.Companion;
            if (CompositingStrategy.m6317equalsimpl0(iMo6425getCompositingStrategyNrFUSI, companion.m6321getAutoNrFUSI())) {
                iM6887getModulateAlphake2Ky5w = androidx.compose.ui.graphics.layer.CompositingStrategy.Companion.m6886getAutoke2Ky5w();
            } else if (CompositingStrategy.m6317equalsimpl0(iMo6425getCompositingStrategyNrFUSI, companion.m6323getOffscreenNrFUSI())) {
                iM6887getModulateAlphake2Ky5w = androidx.compose.ui.graphics.layer.CompositingStrategy.Companion.m6888getOffscreenke2Ky5w();
            } else {
                if (!CompositingStrategy.m6317equalsimpl0(iMo6425getCompositingStrategyNrFUSI, companion.m6322getModulateAlphaNrFUSI())) {
                    ah.f("Not supported composition strategy");
                    return;
                }
                iM6887getModulateAlphake2Ky5w = androidx.compose.ui.graphics.layer.CompositingStrategy.Companion.m6887getModulateAlphake2Ky5w();
            }
            graphicsLayer2.m6903setCompositingStrategyWpw9cng(iM6887getModulateAlphake2Ky5w);
        }
        boolean z = true;
        if ((mutatedFields$ui & Fields.MatrixAffectingFields) != 0) {
            this.isMatrixDirty = true;
            this.isInverseMatrixDirty = true;
        }
        if (aa4.e(this.outline, reusableGraphicsLayerScope.getOutline$ui())) {
            z = false;
        } else {
            this.outline = reusableGraphicsLayerScope.getOutline$ui();
            updateOutline();
        }
        this.mutatedFields = reusableGraphicsLayerScope.getMutatedFields$ui();
        if (mutatedFields$ui != 0 || z) {
            triggerRepaint();
            if (this.ownerView.isArrEnabled$ui()) {
                this.ownerView.voteFrameRate(getFrameRate());
            }
        }
    }
}
