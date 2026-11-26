package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class PointerEventKt {
    @ul2
    public static final boolean anyChangeConsumed(PointerInputChange pointerInputChange) {
        return pointerInputChange.isConsumed();
    }

    public static final boolean changedToDown(PointerInputChange pointerInputChange) {
        return (pointerInputChange.isConsumed() || pointerInputChange.getPreviousPressed() || !pointerInputChange.getPressed()) ? false : true;
    }

    public static final boolean changedToDownIgnoreConsumed(PointerInputChange pointerInputChange) {
        return !pointerInputChange.getPreviousPressed() && pointerInputChange.getPressed();
    }

    public static final boolean changedToUp(PointerInputChange pointerInputChange) {
        return (pointerInputChange.isConsumed() || !pointerInputChange.getPreviousPressed() || pointerInputChange.getPressed()) ? false : true;
    }

    public static final boolean changedToUpIgnoreConsumed(PointerInputChange pointerInputChange) {
        return pointerInputChange.getPreviousPressed() && !pointerInputChange.getPressed();
    }

    @ul2
    public static final void consumeAllChanges(PointerInputChange pointerInputChange) {
        pointerInputChange.consume();
    }

    @ul2
    public static final void consumeDownChange(PointerInputChange pointerInputChange) {
        if (pointerInputChange.getPressed() != pointerInputChange.getPreviousPressed()) {
            pointerInputChange.consume();
        }
    }

    @ul2
    public static final void consumePositionChange(PointerInputChange pointerInputChange) {
        if (Offset.m5984equalsimpl0(positionChange(pointerInputChange), Offset.Companion.m6003getZeroF1C5BW0())) {
            return;
        }
        pointerInputChange.consume();
    }

    @ul2
    /* JADX INFO: renamed from: isOutOfBounds-O0kMr_c, reason: not valid java name */
    public static final boolean m7504isOutOfBoundsO0kMr_c(PointerInputChange pointerInputChange, long j) {
        long jM7569getPositionF1C5BW0 = pointerInputChange.m7569getPositionF1C5BW0();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jM7569getPositionF1C5BW0 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jM7569getPositionF1C5BW0 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        int i = (int) (j >> 32);
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return (fIntBitsToFloat > ((float) i)) | (fIntBitsToFloat < 0.0f) | (fIntBitsToFloat2 < 0.0f) | (fIntBitsToFloat2 > ((float) i2));
    }

    /* JADX INFO: renamed from: isOutOfBounds-jwHxaWs, reason: not valid java name */
    public static final boolean m7505isOutOfBoundsjwHxaWs(PointerInputChange pointerInputChange, long j, long j2) {
        boolean zM7642equalsimpl0 = PointerType.m7642equalsimpl0(pointerInputChange.m7572getTypeT8wyACA(), PointerType.Companion.m7649getTouchT8wyACA());
        long jM7569getPositionF1C5BW0 = pointerInputChange.m7569getPositionF1C5BW0();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jM7569getPositionF1C5BW0 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (jM7569getPositionF1C5BW0 & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (j2 >> 32));
        float f = zM7642equalsimpl0 ? 1.0f : 0.0f;
        float f2 = fIntBitsToFloat3 * f;
        float f3 = ((int) (j >> 32)) + f2;
        float fIntBitsToFloat4 = Float.intBitsToFloat((int) (j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) * f;
        return (fIntBitsToFloat > f3) | (fIntBitsToFloat < (-f2)) | (fIntBitsToFloat2 < (-fIntBitsToFloat4)) | (fIntBitsToFloat2 > ((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + fIntBitsToFloat4);
    }

    public static final long positionChange(PointerInputChange pointerInputChange) {
        return positionChangeInternal(pointerInputChange, false);
    }

    @ul2
    public static final boolean positionChangeConsumed(PointerInputChange pointerInputChange) {
        return pointerInputChange.isConsumed();
    }

    public static final long positionChangeIgnoreConsumed(PointerInputChange pointerInputChange) {
        return positionChangeInternal(pointerInputChange, true);
    }

    private static final long positionChangeInternal(PointerInputChange pointerInputChange, boolean z) {
        return (z || !pointerInputChange.isConsumed()) ? Offset.m5991minusMKHz9U(pointerInputChange.m7569getPositionF1C5BW0(), pointerInputChange.m7570getPreviousPositionF1C5BW0()) : Offset.Companion.m6003getZeroF1C5BW0();
    }

    public static /* synthetic */ long positionChangeInternal$default(PointerInputChange pointerInputChange, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return positionChangeInternal(pointerInputChange, z);
    }

    public static final boolean positionChanged(PointerInputChange pointerInputChange) {
        return !Offset.m5984equalsimpl0(positionChangeInternal(pointerInputChange, false), Offset.Companion.m6003getZeroF1C5BW0());
    }

    public static final boolean positionChangedIgnoreConsumed(PointerInputChange pointerInputChange) {
        return !Offset.m5984equalsimpl0(positionChangeInternal(pointerInputChange, true), Offset.Companion.m6003getZeroF1C5BW0());
    }

    private static final int toInt(boolean z) {
        return z ? 1 : 0;
    }
}
