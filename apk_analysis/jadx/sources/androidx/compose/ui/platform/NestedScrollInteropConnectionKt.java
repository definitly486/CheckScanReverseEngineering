package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.unit.Velocity;
import androidx.media3.muxer.MuxerUtil;
import defpackage.w65;

/* JADX INFO: loaded from: classes2.dex */
public final class NestedScrollInteropConnectionKt {
    private static final float ScrollingAxesThreshold = 0.5f;

    private static final float ceilAwayFromZero(float f) {
        return (float) (f >= 0.0f ? Math.ceil(f) : Math.floor(f));
    }

    public static final int composeToViewOffset(float f) {
        return extractIntegerPixels(f) * (-1);
    }

    private static final int extractIntegerPixels(float f) {
        return w65.b(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getScrollAxes-k-4lQ0M, reason: not valid java name */
    public static final int m8228getScrollAxesk4lQ0M(long j) {
        int i = Math.abs(Float.intBitsToFloat((int) (j >> 32))) >= 0.5f ? 1 : 0;
        return Math.abs(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) >= 0.5f ? i | 2 : i;
    }

    public static final NestedScrollConnection rememberNestedScrollInteropConnection(View view, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1075877987, i, -1, "androidx.compose.ui.platform.rememberNestedScrollInteropConnection (NestedScrollInteropConnection.android.kt:278)");
        }
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration());
        boolean zChanged = composer.changed(view) | composer.changed(viewConfiguration);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new NestedScrollInteropConnection(view, viewConfiguration.getMinimumFlingVelocity());
            composer.updateRememberedValue(objRememberedValue);
        }
        NestedScrollInteropConnection nestedScrollInteropConnection = (NestedScrollInteropConnection) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return nestedScrollInteropConnection;
    }

    private static final float reverseAxis(int i) {
        return i * (-1.0f);
    }

    /* JADX INFO: renamed from: scrollAxes-sF-c-tU, reason: not valid java name */
    private static final int m8229scrollAxessFctU(long j, float f) {
        int i = Math.abs(Velocity.m9280getXimpl(j)) >= f ? 1 : 0;
        return Math.abs(Velocity.m9281getYimpl(j)) >= f ? i | 2 : i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:14:0x0050 A[PHI: r10
      0x0050: PHI (r10v10 float) = (r10v3 float), (r10v11 float) binds: [B:16:0x005f, B:13:0x004e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x007b A[PHI: r10
      0x007b: PHI (r10v8 float) = (r10v5 float), (r10v9 float) binds: [B:24:0x008a, B:21:0x0079] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: toOffset-moWRBKg, reason: not valid java name */
    public static final long m8230toOffsetmoWRBKg(int i, int i2, int[] iArr, long j) {
        float fReverseAxis;
        float fIntBitsToFloat;
        float fReverseAxis2;
        float fIntBitsToFloat2;
        float fIntBitsToFloat3 = Math.abs(iArr[0]) == 0 ? 0.0f : Float.intBitsToFloat((int) (j >> 32)) - reverseAxis(i);
        float fIntBitsToFloat4 = Math.abs(iArr[1]) == 0 ? 0.0f : Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - reverseAxis(i2);
        int i3 = (int) (j >> 32);
        if (Float.intBitsToFloat(i3) >= 0.0f) {
            fReverseAxis = reverseAxis(iArr[0]) + fIntBitsToFloat3;
            fIntBitsToFloat = Float.intBitsToFloat(i3);
            if (fReverseAxis > fIntBitsToFloat) {
                fReverseAxis = fIntBitsToFloat;
            }
        } else {
            fReverseAxis = reverseAxis(iArr[0]) + fIntBitsToFloat3;
            fIntBitsToFloat = Float.intBitsToFloat(i3);
            if (fReverseAxis < fIntBitsToFloat) {
                fReverseAxis = fIntBitsToFloat;
            }
        }
        int i4 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (Float.intBitsToFloat(i4) >= 0.0f) {
            fReverseAxis2 = reverseAxis(iArr[1]) + fIntBitsToFloat4;
            fIntBitsToFloat2 = Float.intBitsToFloat(i4);
            if (fReverseAxis2 > fIntBitsToFloat2) {
                fReverseAxis2 = fIntBitsToFloat2;
            }
        } else {
            fReverseAxis2 = reverseAxis(iArr[1]) + fIntBitsToFloat4;
            fIntBitsToFloat2 = Float.intBitsToFloat(i4);
            if (fReverseAxis2 < fIntBitsToFloat2) {
                fReverseAxis2 = fIntBitsToFloat2;
            }
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fReverseAxis)) << 32) | (((long) Float.floatToRawIntBits(fReverseAxis2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toViewType-GyEprt8, reason: not valid java name */
    public static final int m8231toViewTypeGyEprt8(int i) {
        return !NestedScrollSource.m7426equalsimpl0(i, NestedScrollSource.Companion.m7438getUserInputWNlRxjI()) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float toViewVelocity(float f) {
        return f * (-1.0f);
    }
}
