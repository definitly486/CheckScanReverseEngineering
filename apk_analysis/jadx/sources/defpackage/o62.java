package defpackage;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class o62 extends Painter {
    public final Painter b;
    public final ContentScale c;
    public final long d;
    public final boolean f;
    public kp1 h;
    public boolean i;
    public ColorFilter k;
    public Painter l;
    public final long m;
    public final qv8 e = qv8.a.a;
    public final MutableIntState g = SnapshotIntStateKt.mutableIntStateOf(0);
    public float j = 1.0f;

    /* JADX WARN: Code duplicated, block: B:21:0x0051  */
    /* JADX WARN: Code duplicated, block: B:24:0x0091  */
    public o62(Painter painter, Painter painter2, ContentScale contentScale, long j, boolean z, boolean z2) {
        this.b = painter2;
        this.c = contentScale;
        this.d = j;
        this.f = z;
        this.l = painter;
        long jMo6926getIntrinsicSizeNHjbRc = painter != null ? painter.mo6926getIntrinsicSizeNHjbRc() : Size.Companion.m6065getZeroNHjbRc();
        long jMo6926getIntrinsicSizeNHjbRc2 = painter2 != null ? painter2.mo6926getIntrinsicSizeNHjbRc() : Size.Companion.m6065getZeroNHjbRc();
        boolean z3 = jMo6926getIntrinsicSizeNHjbRc != InlineClassHelperKt.UnspecifiedPackedFloats;
        boolean z4 = jMo6926getIntrinsicSizeNHjbRc2 != InlineClassHelperKt.UnspecifiedPackedFloats;
        if (z2) {
            if (z4) {
                jMo6926getIntrinsicSizeNHjbRc = jMo6926getIntrinsicSizeNHjbRc2;
            } else if (!z3) {
                if (z3) {
                    jMo6926getIntrinsicSizeNHjbRc = Size.Companion.m6064getUnspecifiedNHjbRc();
                } else {
                    jMo6926getIntrinsicSizeNHjbRc = Size.Companion.m6064getUnspecifiedNHjbRc();
                }
            }
        } else if (z3 || !z4) {
            jMo6926getIntrinsicSizeNHjbRc = Size.Companion.m6064getUnspecifiedNHjbRc();
        } else {
            float fMax = Math.max(Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc >> 32)), Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc2 >> 32)));
            jMo6926getIntrinsicSizeNHjbRc = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Math.max(Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Float.intBitsToFloat((int) (jMo6926getIntrinsicSizeNHjbRc2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE))))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fMax)) << 32));
        }
        this.m = jMo6926getIntrinsicSizeNHjbRc;
    }

    public final void a(DrawScope drawScope, Painter painter, float f) {
        if (painter == null || f <= 0.0f) {
            return;
        }
        long jMo6806getSizeNHjbRc = drawScope.mo6806getSizeNHjbRc();
        long jMo6926getIntrinsicSizeNHjbRc = painter.mo6926getIntrinsicSizeNHjbRc();
        long jM7833timesUQTWf7w = (jMo6926getIntrinsicSizeNHjbRc == InlineClassHelperKt.UnspecifiedPackedFloats || Size.m6058isEmptyimpl(jMo6926getIntrinsicSizeNHjbRc) || jMo6806getSizeNHjbRc == InlineClassHelperKt.UnspecifiedPackedFloats || Size.m6058isEmptyimpl(jMo6806getSizeNHjbRc)) ? jMo6806getSizeNHjbRc : ScaleFactorKt.m7833timesUQTWf7w(jMo6926getIntrinsicSizeNHjbRc, this.c.mo7695computeScaleFactorH7hwNQA(jMo6926getIntrinsicSizeNHjbRc, jMo6806getSizeNHjbRc));
        if (jMo6806getSizeNHjbRc == InlineClassHelperKt.UnspecifiedPackedFloats || Size.m6058isEmptyimpl(jMo6806getSizeNHjbRc)) {
            painter.m6932drawx_KDEd0(drawScope, jM7833timesUQTWf7w, f, this.k);
            return;
        }
        float fIntBitsToFloat = (Float.intBitsToFloat((int) (jMo6806getSizeNHjbRc >> 32)) - Float.intBitsToFloat((int) (jM7833timesUQTWf7w >> 32))) / 2.0f;
        float fIntBitsToFloat2 = (Float.intBitsToFloat((int) (jMo6806getSizeNHjbRc & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - Float.intBitsToFloat((int) (jM7833timesUQTWf7w & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) / 2.0f;
        drawScope.getDrawContext().getTransform().inset(fIntBitsToFloat, fIntBitsToFloat2, fIntBitsToFloat, fIntBitsToFloat2);
        try {
            painter.m6932drawx_KDEd0(drawScope, jM7833timesUQTWf7w, f, this.k);
        } finally {
            float f2 = -fIntBitsToFloat;
            float f3 = -fIntBitsToFloat2;
            drawScope.getDrawContext().getTransform().inset(f2, f3, f2, f3);
        }
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyAlpha(float f) {
        this.j = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final boolean applyColorFilter(ColorFilter colorFilter) {
        this.k = colorFilter;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* JADX INFO: renamed from: getIntrinsicSize-NH-jbRc */
    public final long mo6926getIntrinsicSizeNHjbRc() {
        return this.m;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public final void onDraw(DrawScope drawScope) {
        boolean z = this.i;
        Painter painter = this.b;
        if (z) {
            a(drawScope, painter, this.j);
            return;
        }
        kp1 kp1VarA = this.h;
        if (kp1VarA == null) {
            kp1VarA = this.e.a();
            this.h = kp1VarA;
        }
        float fE = wt2.e(kp1VarA.m()) / wt2.e(this.d);
        float fD = kx6.d(fE, 0.0f, 1.0f);
        float f = this.j;
        float f2 = fD * f;
        if (this.f) {
            f -= f2;
        }
        this.i = fE >= 1.0f;
        a(drawScope, this.l, f);
        a(drawScope, painter, f2);
        if (this.i) {
            this.l = null;
        } else {
            MutableIntState mutableIntState = this.g;
            mutableIntState.setIntValue(mutableIntState.getIntValue() + 1);
        }
    }
}
