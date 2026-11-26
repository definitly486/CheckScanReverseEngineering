package defpackage;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawTransform;
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
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public abstract class z extends Modifier.Node implements DrawModifierNode, LayoutModifierNode, SemanticsModifierNode {
    public Alignment b;
    public ContentScale c;
    public float d;
    public boolean e;
    public ox1 f;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
    }

    /* JADX INFO: renamed from: calculateScaledSize-E7KxVPU, reason: not valid java name */
    public final long m9538calculateScaledSizeE7KxVPU(long j) {
        if (Size.m6058isEmptyimpl(j)) {
            return Size.Companion.m6065getZeroNHjbRc();
        }
        long jMo6926getIntrinsicSizeNHjbRc = ((gy1) this).g.mo6926getIntrinsicSizeNHjbRc();
        if (jMo6926getIntrinsicSizeNHjbRc == InlineClassHelperKt.UnspecifiedPackedFloats) {
            return j;
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc >> 32));
        if (Math.abs(fIntBitsToFloat) > Float.MAX_VALUE) {
            fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        }
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        if (Math.abs(fIntBitsToFloat2) > Float.MAX_VALUE) {
            fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        long jM6047constructorimpl = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32));
        long jMo7695computeScaleFactorH7hwNQA = this.c.mo7695computeScaleFactorH7hwNQA(jM6047constructorimpl, j);
        return (Math.abs(Float.intBitsToFloat((int) (jMo7695computeScaleFactorH7hwNQA >> 32))) > Float.MAX_VALUE || Math.abs(Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & jMo7695computeScaleFactorH7hwNQA))) > Float.MAX_VALUE) ? j : ScaleFactorKt.m7834timesmw2e94(jMo7695computeScaleFactorH7hwNQA, jM6047constructorimpl);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(ContentDrawScope contentDrawScope) {
        long jM9538calculateScaledSizeE7KxVPU = m9538calculateScaledSizeE7KxVPU(contentDrawScope.mo6806getSizeNHjbRc());
        long jMo5655alignKFBX0sM = this.b.mo5655alignKFBX0sM(nb9.b(jM9538calculateScaledSizeE7KxVPU), nb9.b(contentDrawScope.mo6806getSizeNHjbRc()), contentDrawScope.getLayoutDirection());
        int iM9170getXimpl = IntOffset.m9170getXimpl(jMo5655alignKFBX0sM);
        int iM9171getYimpl = IntOffset.m9171getYimpl(jMo5655alignKFBX0sM);
        DrawContext drawContext = contentDrawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            DrawTransform transform = drawContext.getTransform();
            if (this.e) {
                DrawTransform.m6863clipRectN_I0leg$default(transform, 0.0f, 0.0f, 0.0f, 0.0f, 0, 31, null);
            }
            transform.translate(iM9170getXimpl, iM9171getYimpl);
            ((gy1) this).g.m6932drawx_KDEd0(contentDrawScope, jM9538calculateScaledSizeE7KxVPU, this.d, null);
            drawContext.getCanvas().restore();
            drawContext.mo6728setSizeuvyYCjk(jMo6727getSizeNHjbRc);
            contentDrawScope.drawContent();
        } catch (Throwable th) {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
            throw th;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jConstraints$default = ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null);
        ox1 ox1Var = this.f;
        if (ox1Var != null) {
            ox1Var.f(jConstraints$default);
        }
        if (((gy1) this).g.mo6926getIntrinsicSizeNHjbRc() == InlineClassHelperKt.UnspecifiedPackedFloats) {
            return intrinsicMeasurable.maxIntrinsicHeight(i);
        }
        long jM9539modifyConstraintsZezNO4M = m9539modifyConstraintsZezNO4M(jConstraints$default);
        return Math.max(Constraints.m8996getMinHeightimpl(jM9539modifyConstraintsZezNO4M), intrinsicMeasurable.maxIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jConstraints$default = ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null);
        ox1 ox1Var = this.f;
        if (ox1Var != null) {
            ox1Var.f(jConstraints$default);
        }
        if (((gy1) this).g.mo6926getIntrinsicSizeNHjbRc() == InlineClassHelperKt.UnspecifiedPackedFloats) {
            return intrinsicMeasurable.maxIntrinsicWidth(i);
        }
        long jM9539modifyConstraintsZezNO4M = m9539modifyConstraintsZezNO4M(jConstraints$default);
        return Math.max(Constraints.m8997getMinWidthimpl(jM9539modifyConstraintsZezNO4M), intrinsicMeasurable.maxIntrinsicWidth(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        ox1 ox1Var = this.f;
        if (ox1Var != null) {
            ox1Var.f(j);
        }
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(m9539modifyConstraintsZezNO4M(j));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new y(0, placeableMo7702measureBRTryo0), 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jConstraints$default = ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null);
        ox1 ox1Var = this.f;
        if (ox1Var != null) {
            ox1Var.f(jConstraints$default);
        }
        if (((gy1) this).g.mo6926getIntrinsicSizeNHjbRc() == InlineClassHelperKt.UnspecifiedPackedFloats) {
            return intrinsicMeasurable.minIntrinsicHeight(i);
        }
        long jM9539modifyConstraintsZezNO4M = m9539modifyConstraintsZezNO4M(jConstraints$default);
        return Math.max(Constraints.m8996getMinHeightimpl(jM9539modifyConstraintsZezNO4M), intrinsicMeasurable.minIntrinsicHeight(i));
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        long jConstraints$default = ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null);
        ox1 ox1Var = this.f;
        if (ox1Var != null) {
            ox1Var.f(jConstraints$default);
        }
        if (((gy1) this).g.mo6926getIntrinsicSizeNHjbRc() == InlineClassHelperKt.UnspecifiedPackedFloats) {
            return intrinsicMeasurable.minIntrinsicWidth(i);
        }
        long jM9539modifyConstraintsZezNO4M = m9539modifyConstraintsZezNO4M(jConstraints$default);
        return Math.max(Constraints.m8997getMinWidthimpl(jM9539modifyConstraintsZezNO4M), intrinsicMeasurable.minIntrinsicWidth(i));
    }

    /* JADX INFO: renamed from: modifyConstraints-ZezNO4M, reason: not valid java name */
    public final long m9539modifyConstraintsZezNO4M(long j) {
        float fM8997getMinWidthimpl;
        int iM8996getMinHeightimpl;
        float fD;
        boolean zM8993getHasFixedWidthimpl = Constraints.m8993getHasFixedWidthimpl(j);
        boolean zM8992getHasFixedHeightimpl = Constraints.m8992getHasFixedHeightimpl(j);
        if (!zM8993getHasFixedWidthimpl || !zM8992getHasFixedHeightimpl) {
            gy1 gy1Var = (gy1) this;
            boolean z = Constraints.m8991getHasBoundedWidthimpl(j) && Constraints.m8990getHasBoundedHeightimpl(j);
            ps psVar = gy1Var.g;
            long jMo6926getIntrinsicSizeNHjbRc = psVar.mo6926getIntrinsicSizeNHjbRc();
            if (jMo6926getIntrinsicSizeNHjbRc != InlineClassHelperKt.UnspecifiedPackedFloats) {
                if (!z || (!zM8993getHasFixedWidthimpl && !zM8992getHasFixedHeightimpl)) {
                    float fIntBitsToFloat = Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc >> 32));
                    float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    if (Math.abs(fIntBitsToFloat) <= Float.MAX_VALUE) {
                        int i = nb9.b;
                        fM8997getMinWidthimpl = kx6.d(fIntBitsToFloat, Constraints.m8997getMinWidthimpl(j), Constraints.m8995getMaxWidthimpl(j));
                    } else {
                        fM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
                    }
                    if (Math.abs(fIntBitsToFloat2) <= Float.MAX_VALUE) {
                        int i2 = nb9.b;
                        fD = kx6.d(fIntBitsToFloat2, Constraints.m8996getMinHeightimpl(j), Constraints.m8994getMaxHeightimpl(j));
                    } else {
                        iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
                    }
                    long jM9538calculateScaledSizeE7KxVPU = m9538calculateScaledSizeE7KxVPU(Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fD)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM8997getMinWidthimpl)) << 32)));
                    return Constraints.m8985copyZbe2FdA$default(j, ConstraintsKt.m9012constrainWidthK40F9xA(j, w65.b(Float.intBitsToFloat((int) (jM9538calculateScaledSizeE7KxVPU >> 32)))), 0, ConstraintsKt.m9011constrainHeightK40F9xA(j, w65.b(Float.intBitsToFloat((int) (jM9538calculateScaledSizeE7KxVPU & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))), 0, 10, null);
                }
                fM8997getMinWidthimpl = Constraints.m8995getMaxWidthimpl(j);
                iM8996getMinHeightimpl = Constraints.m8994getMaxHeightimpl(j);
                fD = iM8996getMinHeightimpl;
                long jM9538calculateScaledSizeE7KxVPU2 = m9538calculateScaledSizeE7KxVPU(Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fD)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fM8997getMinWidthimpl)) << 32)));
                return Constraints.m8985copyZbe2FdA$default(j, ConstraintsKt.m9012constrainWidthK40F9xA(j, w65.b(Float.intBitsToFloat((int) (jM9538calculateScaledSizeE7KxVPU2 >> 32)))), 0, ConstraintsKt.m9011constrainHeightK40F9xA(j, w65.b(Float.intBitsToFloat((int) (jM9538calculateScaledSizeE7KxVPU2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))), 0, 10, null);
            }
            if (z && ((ps.b) psVar.r.b.getValue()).a() != null) {
                return Constraints.m8985copyZbe2FdA$default(j, Constraints.m8995getMaxWidthimpl(j), 0, Constraints.m8994getMaxHeightimpl(j), 0, 10, null);
            }
        }
        return j;
    }
}
