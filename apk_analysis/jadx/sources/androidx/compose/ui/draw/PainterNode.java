package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
final class PainterNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode {
    private Alignment alignment;
    private float alpha;
    private ColorFilter colorFilter;
    private ContentScale contentScale;
    private Painter painter;
    private boolean sizeToIntrinsics;

    public /* synthetic */ PainterNode(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i, jh2 jh2Var) {
        this(painter, z, (i & 4) != 0 ? Alignment.Companion.getCenter() : alignment, (i & 8) != 0 ? ContentScale.Companion.getInside() : contentScale, (i & 16) != 0 ? 1.0f : f, (i & 32) != 0 ? null : colorFilter);
    }

    /* JADX INFO: renamed from: calculateScaledSize-E7KxVPU, reason: not valid java name */
    private final long m5817calculateScaledSizeE7KxVPU(long j) {
        if (!getUseIntrinsicSize()) {
            return j;
        }
        long jM6047constructorimpl = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(!m5819hasSpecifiedAndFiniteWidthuvyYCjk(this.painter.mo6926getIntrinsicSizeNHjbRc()) ? Float.intBitsToFloat((int) (j >> 32)) : Float.intBitsToFloat((int) (this.painter.mo6926getIntrinsicSizeNHjbRc() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(!m5818hasSpecifiedAndFiniteHeightuvyYCjk(this.painter.mo6926getIntrinsicSizeNHjbRc()) ? Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) : Float.intBitsToFloat((int) (this.painter.mo6926getIntrinsicSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return (Float.intBitsToFloat((int) (j >> 32)) == 0.0f || Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == 0.0f) ? Size.Companion.m6065getZeroNHjbRc() : ScaleFactorKt.m7833timesUQTWf7w(jM6047constructorimpl, this.contentScale.mo7695computeScaleFactorH7hwNQA(jM6047constructorimpl, j));
    }

    private final boolean getUseIntrinsicSize() {
        return this.sizeToIntrinsics && this.painter.mo6926getIntrinsicSizeNHjbRc() != InlineClassHelperKt.UnspecifiedPackedFloats;
    }

    /* JADX INFO: renamed from: hasSpecifiedAndFiniteHeight-uvyYCjk, reason: not valid java name */
    private final boolean m5818hasSpecifiedAndFiniteHeightuvyYCjk(long j) {
        return !Size.m6052equalsimpl0(j, Size.Companion.m6064getUnspecifiedNHjbRc()) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & Integer.MAX_VALUE) < 2139095040;
    }

    /* JADX INFO: renamed from: hasSpecifiedAndFiniteWidth-uvyYCjk, reason: not valid java name */
    private final boolean m5819hasSpecifiedAndFiniteWidthuvyYCjk(long j) {
        return !Size.m6052equalsimpl0(j, Size.Companion.m6064getUnspecifiedNHjbRc()) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32))) & Integer.MAX_VALUE) < 2139095040;
    }

    /* JADX INFO: renamed from: modifyConstraints-ZezNO4M, reason: not valid java name */
    private final long m5820modifyConstraintsZezNO4M(long j) {
        boolean z = false;
        boolean z2 = Constraints.m8991getHasBoundedWidthimpl(j) && Constraints.m8990getHasBoundedHeightimpl(j);
        if (Constraints.m8993getHasFixedWidthimpl(j) && Constraints.m8992getHasFixedHeightimpl(j)) {
            z = true;
        }
        if ((!getUseIntrinsicSize() && z2) || z) {
            return Constraints.m8985copyZbe2FdA$default(j, Constraints.m8995getMaxWidthimpl(j), 0, Constraints.m8994getMaxHeightimpl(j), 0, 10, null);
        }
        long jMo6926getIntrinsicSizeNHjbRc = this.painter.mo6926getIntrinsicSizeNHjbRc();
        int iRound = m5819hasSpecifiedAndFiniteWidthuvyYCjk(jMo6926getIntrinsicSizeNHjbRc) ? Math.round(Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc >> 32))) : Constraints.m8997getMinWidthimpl(j);
        int iRound2 = m5818hasSpecifiedAndFiniteHeightuvyYCjk(jMo6926getIntrinsicSizeNHjbRc) ? Math.round(Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) : Constraints.m8996getMinHeightimpl(j);
        long jM5817calculateScaledSizeE7KxVPU = m5817calculateScaledSizeE7KxVPU(Size.m6047constructorimpl((((long) Float.floatToRawIntBits(ConstraintsKt.m9011constrainHeightK40F9xA(j, iRound2))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(ConstraintsKt.m9012constrainWidthK40F9xA(j, iRound))) << 32)));
        return Constraints.m8985copyZbe2FdA$default(j, ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.round(Float.intBitsToFloat((int) (jM5817calculateScaledSizeE7KxVPU >> 32)))), 0, ConstraintsKt.m9011constrainHeightK40F9xA(j, Math.round(Float.intBitsToFloat((int) (jM5817calculateScaledSizeE7KxVPU & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))), 0, 10, null);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        long jMo6926getIntrinsicSizeNHjbRc = this.painter.mo6926getIntrinsicSizeNHjbRc();
        long jM6047constructorimpl = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(m5819hasSpecifiedAndFiniteWidthuvyYCjk(jMo6926getIntrinsicSizeNHjbRc) ? Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc >> 32)) : Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(m5818hasSpecifiedAndFiniteHeightuvyYCjk(jMo6926getIntrinsicSizeNHjbRc) ? Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) : Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        long jM6065getZeroNHjbRc = (Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)) == 0.0f || Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == 0.0f) ? Size.Companion.m6065getZeroNHjbRc() : ScaleFactorKt.m7833timesUQTWf7w(jM6047constructorimpl, this.contentScale.mo7695computeScaleFactorH7hwNQA(jM6047constructorimpl, contentDrawScope.mo6806getSizeNHjbRc()));
        long jMo5655alignKFBX0sM = this.alignment.mo5655alignKFBX0sM(IntSize.m9208constructorimpl((((long) Math.round(Float.intBitsToFloat((int) (jM6065getZeroNHjbRc & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Math.round(Float.intBitsToFloat((int) (jM6065getZeroNHjbRc >> 32)))) << 32)), IntSize.m9208constructorimpl((((long) Math.round(Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Math.round(Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)))) << 32)), contentDrawScope.getLayoutDirection());
        float fM9170getXimpl = IntOffset.m9170getXimpl(jMo5655alignKFBX0sM);
        float fM9171getYimpl = IntOffset.m9171getYimpl(jMo5655alignKFBX0sM);
        contentDrawScope.getDrawContext().getTransform().translate(fM9170getXimpl, fM9171getYimpl);
        try {
            this.painter.m6932drawx_KDEd0(contentDrawScope, jM6065getZeroNHjbRc, this.alpha, this.colorFilter);
            contentDrawScope.getDrawContext().getTransform().translate(-fM9170getXimpl, -fM9171getYimpl);
            contentDrawScope.drawContent();
        } catch (Throwable th) {
            contentDrawScope.getDrawContext().getTransform().translate(-fM9170getXimpl, -fM9171getYimpl);
            throw th;
        }
    }

    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final float getAlpha() {
        return this.alpha;
    }

    public final ColorFilter getColorFilter() {
        return this.colorFilter;
    }

    public final ContentScale getContentScale() {
        return this.contentScale;
    }

    public final Painter getPainter() {
        return this.painter;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    public final boolean getSizeToIntrinsics() {
        return this.sizeToIntrinsics;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (!getUseIntrinsicSize()) {
            return intrinsicMeasurable.maxIntrinsicHeight(i);
        }
        long jM5820modifyConstraintsZezNO4M = m5820modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null));
        return Math.max(Constraints.m8996getMinHeightimpl(jM5820modifyConstraintsZezNO4M), intrinsicMeasurable.maxIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (!getUseIntrinsicSize()) {
            return intrinsicMeasurable.maxIntrinsicWidth(i);
        }
        long jM5820modifyConstraintsZezNO4M = m5820modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null));
        return Math.max(Constraints.m8997getMinWidthimpl(jM5820modifyConstraintsZezNO4M), intrinsicMeasurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(m5820modifyConstraintsZezNO4M(j));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new PainterNode$measure$1(placeableMo7702measureBRTryo0), 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (!getUseIntrinsicSize()) {
            return intrinsicMeasurable.minIntrinsicHeight(i);
        }
        long jM5820modifyConstraintsZezNO4M = m5820modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null));
        return Math.max(Constraints.m8996getMinHeightimpl(jM5820modifyConstraintsZezNO4M), intrinsicMeasurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        if (!getUseIntrinsicSize()) {
            return intrinsicMeasurable.minIntrinsicWidth(i);
        }
        long jM5820modifyConstraintsZezNO4M = m5820modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null));
        return Math.max(Constraints.m8997getMinWidthimpl(jM5820modifyConstraintsZezNO4M), intrinsicMeasurable.minIntrinsicWidth(i));
    }

    public final void setAlignment(Alignment alignment) {
        this.alignment = alignment;
    }

    public final void setAlpha(float f) {
        this.alpha = f;
    }

    public final void setColorFilter(ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
    }

    public final void setContentScale(ContentScale contentScale) {
        this.contentScale = contentScale;
    }

    public final void setPainter(Painter painter) {
        this.painter = painter;
    }

    public final void setSizeToIntrinsics(boolean z) {
        this.sizeToIntrinsics = z;
    }

    public String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }

    public PainterNode(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter) {
        this.painter = painter;
        this.sizeToIntrinsics = z;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = f;
        this.colorFilter = colorFilter;
    }
}
